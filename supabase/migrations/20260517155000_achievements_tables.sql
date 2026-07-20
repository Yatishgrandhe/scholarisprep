-- Achievements catalog and user progress (required before seed migration).

create table if not exists public.user_streaks (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references public.profiles (id) on delete cascade unique,
  current_streak integer not null default 0,
  longest_streak integer not null default 0,
  last_activity_date date,
  updated_at timestamptz default now()
);

create table if not exists public.achievements (
  id uuid primary key default gen_random_uuid(),
  key text unique not null,
  name text not null,
  description text,
  icon text,
  criteria jsonb
);

create table if not exists public.user_achievements (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references public.profiles (id) on delete cascade not null,
  achievement_id uuid references public.achievements (id) on delete cascade not null,
  earned_at timestamptz default now(),
  unique (user_id, achievement_id)
);

alter table public.user_streaks enable row level security;
alter table public.achievements enable row level security;
alter table public.user_achievements enable row level security;

drop policy if exists "Users manage streaks" on public.user_streaks;
create policy "Users manage streaks"
  on public.user_streaks
  for all
  using (user_id = auth.uid())
  with check (user_id = auth.uid());

drop policy if exists "Anyone reads achievement defs" on public.achievements;
create policy "Anyone reads achievement defs"
  on public.achievements
  for select
  using (true);

drop policy if exists "Users read own achievements" on public.user_achievements;
create policy "Users read own achievements"
  on public.user_achievements
  for select
  using (user_id = auth.uid());
