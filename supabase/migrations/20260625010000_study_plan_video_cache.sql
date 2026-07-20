-- Shared cache of the best YouTube teaching video per (exam, skill), so study
-- plan generation reuses videos instead of burning YouTube search quota.
create table if not exists public.study_plan_videos (
  exam_type text not null,
  skill_id text not null,
  video_id text not null,
  title text,
  channel text,
  fetched_at timestamptz not null default now(),
  primary key (exam_type, skill_id)
);

alter table public.study_plan_videos enable row level security;

-- Public video metadata cache: any signed-in user may read and populate it.
drop policy if exists "study_plan_videos read" on public.study_plan_videos;
create policy "study_plan_videos read" on public.study_plan_videos
  for select to authenticated using (true);

drop policy if exists "study_plan_videos insert" on public.study_plan_videos;
create policy "study_plan_videos insert" on public.study_plan_videos
  for insert to authenticated with check (true);

drop policy if exists "study_plan_videos update" on public.study_plan_videos;
create policy "study_plan_videos update" on public.study_plan_videos
  for update to authenticated using (true) with check (true);

-- RLS only filters AFTER a GRANT lets the role touch the table.
grant select, insert, update on public.study_plan_videos to authenticated;
