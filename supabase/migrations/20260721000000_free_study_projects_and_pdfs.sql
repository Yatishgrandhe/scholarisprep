-- Note Projects + PDF attachments for Free Studying.

create table if not exists public.free_study_projects (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  name text not null,
  description text,
  color text,
  icon text,
  parent_id uuid references public.free_study_projects (id) on delete set null,
  sort_order integer not null default 0,
  created_at timestamptz not null default timezone('utc'::text, now()),
  updated_at timestamptz not null default timezone('utc'::text, now())
);

create index if not exists free_study_projects_by_user
  on public.free_study_projects (user_id, sort_order asc, created_at desc);

alter table public.free_study_notes
  add column if not exists project_id uuid references public.free_study_projects (id) on delete set null;

create table if not exists public.free_study_pdfs (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  project_id uuid references public.free_study_projects (id) on delete set null,
  title text not null,
  object_key text not null,
  thumbnail_key text,
  page_count integer,
  byte_size integer,
  extracted_text text,
  created_at timestamptz not null default timezone('utc'::text, now())
);

create index if not exists free_study_pdfs_by_user
  on public.free_study_pdfs (user_id, created_at desc);

create index if not exists free_study_pdfs_by_project
  on public.free_study_pdfs (project_id, created_at desc);

alter table public.free_study_note_assets
  add column if not exists project_id uuid references public.free_study_projects (id) on delete set null;

-- RLS

alter table public.free_study_projects enable row level security;
alter table public.free_study_pdfs enable row level security;

create policy "Users select own free study projects"
  on public.free_study_projects for select
  using (auth.uid() = user_id);

create policy "Users insert own free study projects"
  on public.free_study_projects for insert
  with check (auth.uid() = user_id);

create policy "Users update own free study projects"
  on public.free_study_projects for update
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

create policy "Users delete own free study projects"
  on public.free_study_projects for delete
  using (auth.uid() = user_id);

create policy "Users select own free study pdfs"
  on public.free_study_pdfs for select
  using (auth.uid() = user_id);

create policy "Users insert own free study pdfs"
  on public.free_study_pdfs for insert
  with check (auth.uid() = user_id);

create policy "Users update own free study pdfs"
  on public.free_study_pdfs for update
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

create policy "Users delete own free study pdfs"
  on public.free_study_pdfs for delete
  using (auth.uid() = user_id);

grant select, insert, update, delete on public.free_study_projects to authenticated;
grant select, insert, update, delete on public.free_study_pdfs to authenticated;
grant select, insert, update, delete on public.free_study_projects to service_role;
grant select, insert, update, delete on public.free_study_pdfs to service_role;
