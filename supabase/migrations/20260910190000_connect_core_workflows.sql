create or replace function public.is_staff()
returns boolean
language sql
stable
security definer
set search_path = ''
as $$
  select
    lower(coalesce(auth.jwt() ->> 'email', '')) like '%@alxafrica.com'
    and coalesce(auth.jwt() -> 'app_metadata' ->> 'provider', '') = 'google';
$$;

revoke all on function public.is_staff() from public;
grant execute on function public.is_staff() to authenticated;

grant insert, update on table public.projects to authenticated;

create policy "Staff can read all projects"
on public.projects
for select
to authenticated
using (public.is_staff());

create policy "Staff can create projects"
on public.projects
for insert
to authenticated
with check (
  public.is_staff()
  and created_by = auth.uid()
  and updated_by = auth.uid()
);

create policy "Staff can update projects"
on public.projects
for update
to authenticated
using (public.is_staff())
with check (public.is_staff() and updated_by = auth.uid());

create table public.project_builders (
  id uuid primary key default gen_random_uuid(),
  project_id uuid not null references public.projects (id) on delete cascade,
  learner_name text not null check (char_length(trim(learner_name)) between 2 and 120),
  email text not null check (char_length(trim(email)) between 5 and 320),
  email_normalized text generated always as (lower(trim(email))) stored,
  consented_at timestamptz not null,
  created_at timestamptz not null default now(),
  unique (project_id, email_normalized)
);

create index project_builders_created_at_idx
  on public.project_builders (created_at desc);

alter table public.project_builders enable row level security;

revoke all on table public.project_builders from anon, authenticated;
grant select on table public.project_builders to authenticated;

create policy "Staff can read learner commitments"
on public.project_builders
for select
to authenticated
using (public.is_staff());

create or replace function public.create_project_commitment(
  p_project_slug text,
  p_learner_name text,
  p_email text,
  p_consented boolean
)
returns uuid
language plpgsql
security definer
set search_path = ''
as $$
declare
  v_project_id uuid;
  v_commitment_id uuid;
begin
  if not p_consented then
    raise exception 'Consent is required';
  end if;

  if char_length(trim(p_learner_name)) not between 2 and 120 then
    raise exception 'Enter a valid name';
  end if;

  if char_length(trim(p_email)) not between 5 and 320
    or position('@' in trim(p_email)) <= 1 then
    raise exception 'Enter a valid email address';
  end if;

  select id into v_project_id
  from public.projects
  where slug = p_project_slug and status = 'published';

  if v_project_id is null then
    raise exception 'Published project not found';
  end if;

  insert into public.project_builders (
    project_id,
    learner_name,
    email,
    consented_at
  ) values (
    v_project_id,
    trim(p_learner_name),
    lower(trim(p_email)),
    now()
  )
  on conflict (project_id, email_normalized)
  do update set
    learner_name = excluded.learner_name,
    email = excluded.email,
    consented_at = excluded.consented_at
  returning id into v_commitment_id;

  return v_commitment_id;
end;
$$;

revoke all on function public.create_project_commitment(text, text, text, boolean) from public;
grant execute on function public.create_project_commitment(text, text, text, boolean)
  to anon, authenticated;

create table public.showcase_submissions (
  id uuid primary key,
  slug text not null unique,
  project_id uuid references public.projects (id) on delete set null,
  project_title text not null check (char_length(trim(project_title)) between 2 and 180),
  learner_name text not null check (char_length(trim(learner_name)) between 2 and 120),
  learner_email text not null check (char_length(trim(learner_email)) between 5 and 320),
  title text not null check (char_length(trim(title)) between 3 and 180),
  summary text not null check (char_length(trim(summary)) between 20 and 1000),
  tools text[] not null check (cardinality(tools) between 1 and 20),
  github_url text not null check (github_url ~* '^https?://'),
  live_url text check (live_url is null or live_url ~* '^https?://'),
  cover_image_path text not null,
  public_cover_image_path text,
  status text not null default 'submitted'
    check (status in ('submitted', 'approved', 'declined')),
  consented_at timestamptz not null,
  submitted_at timestamptz not null default now(),
  decided_at timestamptz,
  decided_by uuid references auth.users (id),
  constraint showcase_slug_format
    check (slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$')
);

create index showcase_submissions_status_submitted_idx
  on public.showcase_submissions (status, submitted_at desc);

alter table public.showcase_submissions enable row level security;

revoke all on table public.showcase_submissions from anon, authenticated;
grant select on table public.showcase_submissions to anon, authenticated;
grant update (status, public_cover_image_path, decided_at, decided_by)
  on table public.showcase_submissions to authenticated;

create policy "Approved showcases are publicly readable"
on public.showcase_submissions
for select
to anon, authenticated
using (status = 'approved');

create policy "Staff can read all showcase submissions"
on public.showcase_submissions
for select
to authenticated
using (public.is_staff());

create policy "Staff can decide showcase submissions"
on public.showcase_submissions
for update
to authenticated
using (public.is_staff())
with check (public.is_staff() and decided_by = auth.uid());

create or replace function public.submit_showcase(
  p_id uuid,
  p_project_slug text,
  p_project_title text,
  p_learner_name text,
  p_learner_email text,
  p_title text,
  p_summary text,
  p_tools text[],
  p_github_url text,
  p_live_url text,
  p_cover_image_path text,
  p_consented boolean
)
returns uuid
language plpgsql
security definer
set search_path = ''
as $$
declare
  v_project_id uuid;
  v_project_title text;
  v_slug text;
begin
  if not p_consented then
    raise exception 'Consent is required';
  end if;

  if char_length(trim(p_learner_name)) not between 2 and 120
    or char_length(trim(p_learner_email)) not between 5 and 320
    or position('@' in trim(p_learner_email)) <= 1 then
    raise exception 'Enter valid learner details';
  end if;

  if char_length(trim(p_title)) not between 3 and 180
    or char_length(trim(p_summary)) not between 20 and 1000 then
    raise exception 'Complete the project title and summary';
  end if;

  if cardinality(p_tools) not between 1 and 20 then
    raise exception 'Add at least one tool';
  end if;

  if p_github_url !~* '^https?://'
    or (nullif(trim(p_live_url), '') is not null and p_live_url !~* '^https?://') then
    raise exception 'Enter valid project links';
  end if;

  if p_cover_image_path not like p_id::text || '/%' then
    raise exception 'Invalid cover image path';
  end if;

  if nullif(trim(p_project_slug), '') is not null then
    select id, title into v_project_id, v_project_title
    from public.projects
    where slug = p_project_slug and status = 'published';
  end if;

  v_project_title := coalesce(v_project_title, nullif(trim(p_project_title), ''));
  if v_project_title is null then
    raise exception 'Choose or name the completed project';
  end if;

  v_slug := trim(both '-' from regexp_replace(lower(trim(p_title)), '[^a-z0-9]+', '-', 'g'));
  if v_slug = '' then
    v_slug := 'learner-project';
  end if;
  v_slug := v_slug || '-' || left(p_id::text, 8);

  insert into public.showcase_submissions (
    id,
    slug,
    project_id,
    project_title,
    learner_name,
    learner_email,
    title,
    summary,
    tools,
    github_url,
    live_url,
    cover_image_path,
    consented_at
  ) values (
    p_id,
    v_slug,
    v_project_id,
    v_project_title,
    trim(p_learner_name),
    lower(trim(p_learner_email)),
    trim(p_title),
    trim(p_summary),
    p_tools,
    trim(p_github_url),
    nullif(trim(p_live_url), ''),
    p_cover_image_path,
    now()
  );

  return p_id;
end;
$$;

revoke all on function public.submit_showcase(
  uuid, text, text, text, text, text, text, text[], text, text, text, boolean
) from public;
grant execute on function public.submit_showcase(
  uuid, text, text, text, text, text, text, text[], text, text, text, boolean
) to anon, authenticated;

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values
  (
    'showcase-submissions',
    'showcase-submissions',
    false,
    5242880,
    array['image/png', 'image/jpeg', 'image/webp']
  ),
  (
    'showcase-public',
    'showcase-public',
    true,
    5242880,
    array['image/png', 'image/jpeg', 'image/webp']
  )
on conflict (id) do update set
  public = excluded.public,
  file_size_limit = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

create policy "Anyone can upload a showcase cover"
on storage.objects
for insert
to anon, authenticated
with check (
  bucket_id = 'showcase-submissions'
  and (storage.foldername(name))[1] ~ '^[0-9a-f-]{36}$'
  and lower(storage.extension(name)) in ('png', 'jpg', 'jpeg', 'webp')
);

create policy "Staff can read private showcase covers"
on storage.objects
for select
to authenticated
using (bucket_id = 'showcase-submissions' and public.is_staff());

create policy "Staff can manage public showcase covers"
on storage.objects
for all
to authenticated
using (bucket_id = 'showcase-public' and public.is_staff())
with check (bucket_id = 'showcase-public' and public.is_staff());
