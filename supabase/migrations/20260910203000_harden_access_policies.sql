create schema if not exists private;
revoke all on schema private from public;
grant usage on schema private to authenticated;

create or replace function private.is_staff()
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

revoke all on function private.is_staff() from public;
grant execute on function private.is_staff() to authenticated;

drop policy "Published projects are publicly readable" on public.projects;
drop policy "Staff can read all projects" on public.projects;
drop policy "Staff can create projects" on public.projects;
drop policy "Staff can update projects" on public.projects;

create policy "Published projects are publicly readable"
on public.projects
for select
to anon
using (status = 'published');

create policy "Authenticated users can read permitted projects"
on public.projects
for select
to authenticated
using (status = 'published' or private.is_staff());

create policy "Staff can create projects"
on public.projects
for insert
to authenticated
with check (
  private.is_staff()
  and created_by = (select auth.uid())
  and updated_by = (select auth.uid())
);

create policy "Staff can update projects"
on public.projects
for update
to authenticated
using (private.is_staff())
with check (private.is_staff() and updated_by = (select auth.uid()));

drop policy "Staff can read learner commitments" on public.project_builders;
create policy "Staff can read learner commitments"
on public.project_builders
for select
to authenticated
using (private.is_staff());

drop policy "Approved showcases are publicly readable" on public.showcase_submissions;
drop policy "Staff can read all showcase submissions" on public.showcase_submissions;
drop policy "Staff can decide showcase submissions" on public.showcase_submissions;

create policy "Approved showcases are publicly readable"
on public.showcase_submissions
for select
to anon
using (status = 'approved');

create policy "Authenticated users can read permitted showcases"
on public.showcase_submissions
for select
to authenticated
using (status = 'approved' or private.is_staff());

create policy "Staff can decide showcase submissions"
on public.showcase_submissions
for update
to authenticated
using (private.is_staff())
with check (private.is_staff() and decided_by = (select auth.uid()));

drop policy "Staff can read private showcase covers" on storage.objects;
drop policy "Staff can manage public showcase covers" on storage.objects;

create policy "Staff can read private showcase covers"
on storage.objects
for select
to authenticated
using (bucket_id = 'showcase-submissions' and private.is_staff());

create policy "Staff can manage public showcase covers"
on storage.objects
for all
to authenticated
using (bucket_id = 'showcase-public' and private.is_staff())
with check (bucket_id = 'showcase-public' and private.is_staff());

drop function public.is_staff();

do $$
begin
  if to_regprocedure('public.rls_auto_enable()') is not null then
    execute 'revoke all on function public.rls_auto_enable() from public';
    execute 'revoke all on function public.rls_auto_enable() from anon';
    execute 'revoke all on function public.rls_auto_enable() from authenticated';
  end if;
end;
$$;
