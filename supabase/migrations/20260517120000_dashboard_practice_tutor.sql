-- Scholaris dashboard: practice sessions, tutor chat, profile bootstrap
-- Run in Supabase SQL Editor or: supabase db push

-- ---------------------------------------------------------------------------
-- Profile + streak bootstrap on signup
-- ---------------------------------------------------------------------------
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, email, full_name, role, onboarding_completed)
  values (
    new.id,
    coalesce(new.email, ''),
    coalesce(new.raw_user_meta_data->>'full_name', null),
    'student',
    false
  )
  on conflict (id) do update
    set email = excluded.email,
        full_name = coalesce(excluded.full_name, public.profiles.full_name);

  insert into public.user_streaks (user_id, current_streak, longest_streak)
  values (new.id, 0, 0)
  on conflict (user_id) do nothing;

  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

-- ---------------------------------------------------------------------------
-- Study plans: one row per user
-- ---------------------------------------------------------------------------
alter table public.study_plans
  drop constraint if exists study_plans_user_id_key;

alter table public.study_plans
  add constraint study_plans_user_id_key unique (user_id);

-- ---------------------------------------------------------------------------
-- Practice
-- ---------------------------------------------------------------------------
create table if not exists public.practice_sessions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  exam_type text not null default 'SAT',
  section text not null,
  difficulty text not null default 'medium',
  total_questions integer not null default 10,
  correct_count integer not null default 0,
  started_at timestamptz not null default now(),
  completed_at timestamptz,
  created_at timestamptz not null default now()
);

create index if not exists practice_sessions_user_id_idx
  on public.practice_sessions (user_id, completed_at desc);

create table if not exists public.practice_attempts (
  id uuid primary key default gen_random_uuid(),
  session_id uuid not null references public.practice_sessions (id) on delete cascade,
  user_id uuid not null references auth.users (id) on delete cascade,
  question_index integer not null,
  topic text not null default 'General',
  difficulty text not null default 'medium',
  question_text text not null,
  stimulus_text text,
  options jsonb not null default '[]'::jsonb,
  selected_option text,
  correct_option text,
  is_correct boolean not null default false,
  flagged boolean not null default false,
  time_seconds integer not null default 0,
  created_at timestamptz not null default now()
);

create index if not exists practice_attempts_session_id_idx
  on public.practice_attempts (session_id, question_index);

-- ---------------------------------------------------------------------------
-- AI Tutor conversations
-- ---------------------------------------------------------------------------
create table if not exists public.tutor_conversations (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  title text not null default 'New chat',
  exam_type text not null default 'SAT',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists tutor_conversations_user_id_idx
  on public.tutor_conversations (user_id, updated_at desc);

create table if not exists public.tutor_messages (
  id uuid primary key default gen_random_uuid(),
  conversation_id uuid not null references public.tutor_conversations (id) on delete cascade,
  role text not null check (role in ('user', 'assistant')),
  content text not null,
  created_at timestamptz not null default now()
);

create index if not exists tutor_messages_conversation_id_idx
  on public.tutor_messages (conversation_id, created_at);

-- ---------------------------------------------------------------------------
-- RLS
-- ---------------------------------------------------------------------------
alter table public.practice_sessions enable row level security;
alter table public.practice_attempts enable row level security;
alter table public.tutor_conversations enable row level security;
alter table public.tutor_messages enable row level security;

drop policy if exists "practice_sessions_own" on public.practice_sessions;
create policy "practice_sessions_own" on public.practice_sessions
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "practice_attempts_own" on public.practice_attempts;
create policy "practice_attempts_own" on public.practice_attempts
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "tutor_conversations_own" on public.tutor_conversations;
create policy "tutor_conversations_own" on public.tutor_conversations
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "tutor_messages_own" on public.tutor_messages;
create policy "tutor_messages_own" on public.tutor_messages
  for all using (
    exists (
      select 1 from public.tutor_conversations c
      where c.id = conversation_id and c.user_id = auth.uid()
    )
  ) with check (
    exists (
      select 1 from public.tutor_conversations c
      where c.id = conversation_id and c.user_id = auth.uid()
    )
  );

alter table public.user_streaks
  drop constraint if exists user_streaks_user_id_key;

alter table public.user_streaks
  add constraint user_streaks_user_id_key unique (user_id);

-- Streaks: users can read/update own row
alter table public.user_streaks enable row level security;

drop policy if exists "user_streaks_own" on public.user_streaks;
create policy "user_streaks_own" on public.user_streaks
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);
