create table public.projects (
  id uuid primary key default gen_random_uuid(),
  legacy_id text unique,
  slug text not null unique,
  title text not null,
  course text not null,
  domain text not null,
  difficulty text not null,
  estimated_time text not null,
  skills text[] not null default '{}',
  tools text[] not null default '{}',
  summary text not null,
  content_markdown text not null,
  status text not null default 'draft'
    check (status in ('draft', 'published')),
  sort_order integer not null default 0,
  created_by uuid,
  updated_by uuid,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  published_at timestamptz,
  constraint projects_slug_format
    check (slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$')
);

create index projects_status_sort_order_idx
  on public.projects (status, sort_order, created_at desc);

create index projects_course_idx on public.projects (course);
create index projects_domain_idx on public.projects (domain);
create index projects_difficulty_idx on public.projects (difficulty);

create or replace function public.set_updated_at()
returns trigger
language plpgsql
set search_path = ''
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

create trigger projects_set_updated_at
before update on public.projects
for each row
execute function public.set_updated_at();

alter table public.projects enable row level security;

revoke all on table public.projects from anon, authenticated;
grant select on table public.projects to anon, authenticated;

create policy "Published projects are publicly readable"
on public.projects
for select
to anon, authenticated
using (status = 'published');
