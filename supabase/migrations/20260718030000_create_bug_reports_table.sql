-- Create bug_reports table to store feedback and error reports
create table public.bug_reports (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users(id) on delete set null,
  reporter_email text,
  page_url text not null,
  description text not null,
  status text not null default 'open', -- 'open', 'reviewing', 'resolved', 'dismissed'
  admin_notes text,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- Enable RLS
alter table public.bug_reports enable row level security;

-- Policies
create policy "Anyone can insert bug reports"
  on public.bug_reports for insert
  with check (true);

create policy "Admins can view and manage bug reports"
  on public.bug_reports for all
  using (public.is_platform_admin());

-- Grants
grant select, insert, update, delete on public.bug_reports to authenticated;
grant select, insert, update, delete on public.bug_reports to anon;
grant select, insert, update, delete on public.bug_reports to service_role;
