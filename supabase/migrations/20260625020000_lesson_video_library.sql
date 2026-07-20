-- Curated library of SAT teaching + tips videos per skill. The study planner
-- picks from here per student (teaching when weak/low score, tips when strong),
-- so every lesson has a good video without burning live search quota.
-- Populated server-side via /api/admin/seed-lesson-videos (service role).
create table if not exists public.lesson_video_library (
  id uuid primary key default gen_random_uuid(),
  exam_type text not null,
  skill_id text not null,
  kind text not null check (kind in ('teaching', 'tips')),
  video_id text not null,
  title text,
  channel text,
  rank int not null default 0,
  created_at timestamptz not null default now(),
  unique (exam_type, skill_id, kind, video_id)
);

create index if not exists lesson_video_library_lookup
  on public.lesson_video_library (exam_type, skill_id, kind, rank);

alter table public.lesson_video_library enable row level security;

drop policy if exists "lesson_video_library read" on public.lesson_video_library;
create policy "lesson_video_library read" on public.lesson_video_library
  for select to authenticated using (true);

grant select on public.lesson_video_library to authenticated;
