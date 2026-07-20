-- Org admins can read and manage profiles, enrollments, attempts, and streaks for their org.

create or replace function public.current_user_org_id()
returns uuid
language sql
stable
security definer
set search_path = public
as $$
  select org_id from public.profiles where id = auth.uid();
$$;

create or replace function public.is_org_admin()
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1
    from public.profiles
    where id = auth.uid()
      and role = 'org_admin'
      and org_id is not null
  );
$$;

create or replace function public.profile_in_my_org(target_user_id uuid)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select exists (
    select 1
    from public.profiles target
    where target.id = target_user_id
      and target.org_id is not null
      and target.org_id = public.current_user_org_id()
  );
$$;

drop policy if exists "Org admins read org members" on public.profiles;
create policy "Org admins read org members"
  on public.profiles
  for select
  using (
    public.is_org_admin()
    and org_id is not null
    and org_id = public.current_user_org_id()
  );

drop policy if exists "Org admins update org members" on public.profiles;
create policy "Org admins update org members"
  on public.profiles
  for update
  using (
    public.is_org_admin()
    and org_id is not null
    and org_id = public.current_user_org_id()
  )
  with check (
    public.is_org_admin()
    and (
      org_id = public.current_user_org_id()
      or org_id is null
    )
  );

drop policy if exists "Org admins read member enrollments" on public.enrollments;
create policy "Org admins read member enrollments"
  on public.enrollments
  for select
  using (
    public.is_org_admin()
    and public.profile_in_my_org(user_id)
  );

drop policy if exists "Org admins read member attempts" on public.question_attempts;
create policy "Org admins read member attempts"
  on public.question_attempts
  for select
  using (
    public.is_org_admin()
    and public.profile_in_my_org(user_id)
  );

drop policy if exists "Org admins read member streaks" on public.user_streaks;
create policy "Org admins read member streaks"
  on public.user_streaks
  for select
  using (
    public.is_org_admin()
    and public.profile_in_my_org(user_id)
  );
