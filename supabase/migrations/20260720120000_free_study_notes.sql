-- Free Studying notes + image asset metadata (blobs live on Cloudflare R2).

create table if not exists public.free_study_notes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  title text not null default 'Untitled note',
  body text not null default '',
  exam_type text,
  created_at timestamptz not null default timezone('utc'::text, now()),
  updated_at timestamptz not null default timezone('utc'::text, now())
);

create index if not exists free_study_notes_by_user_updated
  on public.free_study_notes (user_id, updated_at desc);

create table if not exists public.free_study_note_assets (
  id uuid primary key default gen_random_uuid(),
  note_id uuid not null references public.free_study_notes (id) on delete cascade,
  user_id uuid not null references auth.users (id) on delete cascade,
  provider text not null default 'r2' check (provider in ('r2', 'supabase')),
  object_key text not null,
  paths jsonb not null default '{}'::jsonb,
  -- paths: { master, thumb, card, full } relative object keys
  content_type text not null default 'image/webp',
  byte_size integer,
  width integer,
  height integer,
  created_at timestamptz not null default timezone('utc'::text, now())
);

create index if not exists free_study_note_assets_by_note
  on public.free_study_note_assets (note_id, created_at desc);

create index if not exists free_study_note_assets_by_user
  on public.free_study_note_assets (user_id);

alter table public.free_study_notes enable row level security;
alter table public.free_study_note_assets enable row level security;

create policy "Users select own free study notes"
  on public.free_study_notes for select
  using (auth.uid() = user_id);

create policy "Users insert own free study notes"
  on public.free_study_notes for insert
  with check (auth.uid() = user_id);

create policy "Users update own free study notes"
  on public.free_study_notes for update
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

create policy "Users delete own free study notes"
  on public.free_study_notes for delete
  using (auth.uid() = user_id);

create policy "Users select own free study note assets"
  on public.free_study_note_assets for select
  using (auth.uid() = user_id);

create policy "Users insert own free study note assets"
  on public.free_study_note_assets for insert
  with check (auth.uid() = user_id);

create policy "Users update own free study note assets"
  on public.free_study_note_assets for update
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

create policy "Users delete own free study note assets"
  on public.free_study_note_assets for delete
  using (auth.uid() = user_id);

grant select, insert, update, delete on public.free_study_notes to authenticated;
grant select, insert, update, delete on public.free_study_note_assets to authenticated;
grant select, insert, update, delete on public.free_study_notes to service_role;
grant select, insert, update, delete on public.free_study_note_assets to service_role;
