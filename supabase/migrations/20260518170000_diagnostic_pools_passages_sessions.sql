-- Diagnostic layer: passages, question pools (35-item SAT), session state, random draw helper.
-- Coordinates with AI question generation via subject/section, difficulty, pool_key, passage_id.

-- ---------------------------------------------------------------------------
-- Passages (long-form RW stimuli; reusable across questions)
-- ---------------------------------------------------------------------------
create table if not exists public.passages (
  id uuid primary key default gen_random_uuid(),
  exam_type public.exam_type not null default 'SAT',
  title text,
  content text not null,
  stimulus_type text not null default 'passage'
    check (stimulus_type in ('passage', 'data_table', 'poem', 'graph_description')),
  word_count integer,
  source_attribution text,
  is_platform boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists passages_exam_platform_idx
  on public.passages (exam_type, is_platform);

-- ---------------------------------------------------------------------------
-- Questions: normalized subject, pool membership, math metadata, passage link
-- ---------------------------------------------------------------------------
alter table public.questions
  add column if not exists passage_id uuid references public.passages (id) on delete set null;

alter table public.questions
  add column if not exists subject text
    check (subject is null or subject in ('reading_writing', 'math'));

alter table public.questions
  add column if not exists pool_key text;

alter table public.questions
  add column if not exists math_domain text
    check (
      math_domain is null
      or math_domain in (
        'algebra',
        'advanced_math',
        'problem_solving_data',
        'geometry_trig'
      )
    );

alter table public.questions
  add column if not exists math_skill_code text;

alter table public.questions
  add column if not exists desmos_recommended boolean not null default false;

alter table public.questions
  add column if not exists diagnostic_eligible boolean not null default false;

create index if not exists questions_diagnostic_draw_idx
  on public.questions (exam_type, subject, difficulty, pool_key)
  where is_platform_question = true and diagnostic_eligible = true;

create index if not exists questions_passage_id_idx
  on public.questions (passage_id)
  where passage_id is not null;

-- Backfill subject from legacy section labels
update public.questions q
set subject = 'math'
where q.subject is null
  and (
    q.section ilike '%math%'
    or q.section = 'math'
  );

update public.questions q
set subject = 'reading_writing'
where q.subject is null
  and (
    q.section ilike '%reading%'
    or q.section ilike '%writing%'
    or q.section = 'reading_writing'
    or q.stimulus_type = 'passage'
    or (q.stimulus_text is not null and q.stimulus_text <> '')
  );

update public.questions
set diagnostic_eligible = true
where is_platform_question = true
  and (
    generation_seed like 'onboarding_diagnostic%'
    or generation_seed like 'diagnostic_%'
    or pool_key is not null
  );

-- ---------------------------------------------------------------------------
-- Diagnostic pools (e.g. 35-question full SAT diagnostic)
-- ---------------------------------------------------------------------------
create table if not exists public.diagnostic_pools (
  pool_key text primary key,
  exam_type public.exam_type not null default 'SAT',
  total_questions integer not null default 35
    check (total_questions > 0 and total_questions <= 100),
  description text,
  is_active boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists public.diagnostic_pool_slots (
  id uuid primary key default gen_random_uuid(),
  pool_key text not null references public.diagnostic_pools (pool_key) on delete cascade,
  subject text not null
    check (subject in ('reading_writing', 'math')),
  difficulty public.difficulty not null,
  slot_count integer not null check (slot_count > 0),
  topic text,
  math_domain text,
  sort_order integer not null default 0,
  unique (pool_key, subject, difficulty, topic, math_domain)
);

create index if not exists diagnostic_pool_slots_pool_idx
  on public.diagnostic_pool_slots (pool_key, sort_order);

-- Full SAT diagnostic: 35 questions (18 RW + 17 Math), mixed difficulty
insert into public.diagnostic_pools (pool_key, exam_type, total_questions, description)
values (
  'diagnostic_sat_full_v1',
  'SAT',
  35,
  'Full SAT diagnostic with randomized platform questions by subject and difficulty.'
)
on conflict (pool_key) do update
set total_questions = excluded.total_questions,
    description = excluded.description,
    is_active = excluded.is_active;

delete from public.diagnostic_pool_slots
where pool_key = 'diagnostic_sat_full_v1';

insert into public.diagnostic_pool_slots (
  pool_key, subject, difficulty, slot_count, sort_order
) values
  ('diagnostic_sat_full_v1', 'reading_writing', 'easy', 4, 10),
  ('diagnostic_sat_full_v1', 'reading_writing', 'medium', 8, 20),
  ('diagnostic_sat_full_v1', 'reading_writing', 'hard', 6, 30),
  ('diagnostic_sat_full_v1', 'math', 'easy', 4, 40),
  ('diagnostic_sat_full_v1', 'math', 'medium', 7, 50),
  ('diagnostic_sat_full_v1', 'math', 'hard', 6, 60);

-- Onboarding quick diagnostic (fixed 10-question seed pool)
insert into public.diagnostic_pools (pool_key, exam_type, total_questions, description)
values (
  'onboarding_diagnostic_v1',
  'SAT',
  10,
  'Short onboarding diagnostic; uses generation_seed onboarding_diagnostic_v1.'
)
on conflict (pool_key) do nothing;

-- ---------------------------------------------------------------------------
-- Exam session state (resume, progress, pool snapshot)
-- ---------------------------------------------------------------------------
alter table public.exam_sessions
  add column if not exists status text not null default 'in_progress'
    check (status in ('in_progress', 'paused', 'completed', 'abandoned'));

alter table public.exam_sessions
  add column if not exists current_question_index integer not null default 0
    check (current_question_index >= 0);

alter table public.exam_sessions
  add column if not exists pool_key text;

alter table public.exam_sessions
  add column if not exists session_state jsonb not null default '{}'::jsonb;

alter table public.exam_sessions
  add column if not exists created_at timestamptz not null default now();

create index if not exists exam_sessions_user_diagnostic_idx
  on public.exam_sessions (user_id, session_type, status)
  where session_type = 'diagnostic';

-- Ordered questions + per-item answers for a diagnostic session
create table if not exists public.diagnostic_session_items (
  id uuid primary key default gen_random_uuid(),
  session_id uuid not null references public.exam_sessions (id) on delete cascade,
  question_id uuid not null references public.questions (id) on delete restrict,
  position integer not null check (position >= 0),
  selected_option_id text,
  is_correct boolean,
  time_spent_seconds integer not null default 0,
  flagged boolean not null default false,
  answered_at timestamptz,
  unique (session_id, position),
  unique (session_id, question_id)
);

create index if not exists diagnostic_session_items_session_idx
  on public.diagnostic_session_items (session_id, position);

-- Link question attempts to exam sessions when provided
alter table public.question_attempts
  drop constraint if exists question_attempts_session_id_fkey;

alter table public.question_attempts
  add constraint question_attempts_session_id_fkey
  foreign key (session_id) references public.exam_sessions (id) on delete set null;

-- ---------------------------------------------------------------------------
-- Random draw: pick question IDs per pool slot (subject + difficulty)
-- ---------------------------------------------------------------------------
create or replace function public.draw_diagnostic_question_ids(
  p_pool_key text,
  p_exam_type public.exam_type default 'SAT'
)
returns uuid[]
language plpgsql
volatile
security definer
set search_path = public
set row_security = off
as $$
declare
  slot record;
  picked uuid[];
  result uuid[] := '{}';
begin
  if not exists (
    select 1 from public.diagnostic_pools dp
    where dp.pool_key = p_pool_key and dp.is_active
  ) then
    raise exception 'Unknown or inactive diagnostic pool: %', p_pool_key;
  end if;

  for slot in
    select
      s.subject,
      s.difficulty,
      s.slot_count,
      s.topic,
      s.math_domain
    from public.diagnostic_pool_slots s
    where s.pool_key = p_pool_key
    order by s.sort_order, s.subject, s.difficulty
  loop
    select coalesce(array_agg(sub.id), '{}')
    into picked
    from (
      select q.id
      from public.questions q
      where q.is_platform_question = true
        and q.diagnostic_eligible = true
        and q.exam_type = p_exam_type
        and q.subject = slot.subject
        and q.difficulty = slot.difficulty
        and (slot.topic is null or q.topic ilike '%' || slot.topic || '%')
        and (
          slot.math_domain is null
          or q.math_domain = slot.math_domain
        )
        and q.id <> all (result)
      order by random()
      limit slot.slot_count
    ) sub;

    if coalesce(array_length(picked, 1), 0) < slot.slot_count then
      raise exception
        'Insufficient questions for pool % slot %/% (need %, got %)',
        p_pool_key,
        slot.subject,
        slot.difficulty,
        slot.slot_count,
        coalesce(array_length(picked, 1), 0);
    end if;

    result := result || picked;
  end loop;

  return result;
end;
$$;

create or replace function public.start_diagnostic_session(
  p_pool_key text,
  p_exam_type public.exam_type default 'SAT'
)
returns uuid
language plpgsql
security definer
set search_path = public
as $$
declare
  v_user_id uuid := auth.uid();
  v_session_id uuid;
  v_question_ids uuid[];
  v_total integer;
  i integer;
begin
  if v_user_id is null then
    raise exception 'Not authenticated';
  end if;

  select dp.total_questions into v_total
  from public.diagnostic_pools dp
  where dp.pool_key = p_pool_key and dp.is_active;

  if v_total is null then
    raise exception 'Unknown or inactive diagnostic pool: %', p_pool_key;
  end if;

  if p_pool_key = 'onboarding_diagnostic_v1' then
    select coalesce(array_agg(seed_rows.id order by seed_rows.created_at), '{}')
    into v_question_ids
    from (
      select q.id, q.created_at
      from public.questions q
      where q.is_platform_question = true
        and q.generation_seed = 'onboarding_diagnostic_v1'
      order by q.created_at
      limit v_total
    ) seed_rows;
  else
    v_question_ids := public.draw_diagnostic_question_ids(p_pool_key, p_exam_type);
  end if;

  if coalesce(array_length(v_question_ids, 1), 0) = 0 then
    raise exception 'No questions available for pool %', p_pool_key;
  end if;

  insert into public.exam_sessions (
    user_id,
    exam_type,
    session_type,
    status,
    pool_key,
    total_questions,
    question_order,
    current_question_index,
    session_state,
    metadata
  ) values (
    v_user_id,
    p_exam_type,
    'diagnostic',
    'in_progress',
    p_pool_key,
    coalesce(array_length(v_question_ids, 1), v_total),
    v_question_ids,
    0,
    jsonb_build_object('pool_key', p_pool_key),
    jsonb_build_object('drawn_at', now())
  )
  returning id into v_session_id;

  for i in 1 .. coalesce(array_length(v_question_ids, 1), 0) loop
    insert into public.diagnostic_session_items (
      session_id,
      question_id,
      position
    ) values (
      v_session_id,
      v_question_ids[i],
      i - 1
    );
  end loop;

  return v_session_id;
end;
$$;

-- Stimulus text: prefer linked passage content
create or replace function public.question_stimulus(p_question_id uuid)
returns text
language sql
stable
security invoker
set search_path = public
as $$
  select coalesce(p.content, q.stimulus_text)
  from public.questions q
  left join public.passages p on p.id = q.passage_id
  where q.id = p_question_id;
$$;

-- ---------------------------------------------------------------------------
-- RLS
-- ---------------------------------------------------------------------------
alter table public.passages enable row level security;
alter table public.diagnostic_pools enable row level security;
alter table public.diagnostic_pool_slots enable row level security;
alter table public.diagnostic_session_items enable row level security;

drop policy if exists "Students read platform passages" on public.passages;
create policy "Students read platform passages" on public.passages
  for select to authenticated
  using (is_platform = true);

drop policy if exists "Platform admins manage passages" on public.passages;
create policy "Platform admins manage passages" on public.passages
  for all to authenticated
  using (public.is_platform_admin())
  with check (public.is_platform_admin());

drop policy if exists "Authenticated read diagnostic pools" on public.diagnostic_pools;
create policy "Authenticated read diagnostic pools" on public.diagnostic_pools
  for select to authenticated
  using (is_active = true);

drop policy if exists "Platform admins manage diagnostic pools" on public.diagnostic_pools;
create policy "Platform admins manage diagnostic pools" on public.diagnostic_pools
  for all to authenticated
  using (public.is_platform_admin())
  with check (public.is_platform_admin());

drop policy if exists "Authenticated read diagnostic pool slots" on public.diagnostic_pool_slots;
create policy "Authenticated read diagnostic pool slots" on public.diagnostic_pool_slots
  for select to authenticated
  using (
    exists (
      select 1 from public.diagnostic_pools dp
      where dp.pool_key = diagnostic_pool_slots.pool_key and dp.is_active
    )
  );

drop policy if exists "Platform admins manage diagnostic pool slots" on public.diagnostic_pool_slots;
create policy "Platform admins manage diagnostic pool slots" on public.diagnostic_pool_slots
  for all to authenticated
  using (public.is_platform_admin())
  with check (public.is_platform_admin());

drop policy if exists "Users manage own diagnostic session items" on public.diagnostic_session_items;
create policy "Users manage own diagnostic session items" on public.diagnostic_session_items
  for all to authenticated
  using (
    exists (
      select 1 from public.exam_sessions s
      where s.id = diagnostic_session_items.session_id
        and s.user_id = auth.uid()
    )
  )
  with check (
    exists (
      select 1 from public.exam_sessions s
      where s.id = diagnostic_session_items.session_id
        and s.user_id = auth.uid()
    )
  );

drop policy if exists "Platform admins read diagnostic session items" on public.diagnostic_session_items;
create policy "Platform admins read diagnostic session items" on public.diagnostic_session_items
  for select to authenticated
  using (public.is_platform_admin());

-- ---------------------------------------------------------------------------
-- Grants
-- ---------------------------------------------------------------------------
grant select on table public.passages to authenticated;
grant select on table public.diagnostic_pools to authenticated;
grant select on table public.diagnostic_pool_slots to authenticated;
grant select, insert, update, delete on table public.diagnostic_session_items to authenticated;

grant execute on function public.draw_diagnostic_question_ids(text, public.exam_type) to authenticated;
grant execute on function public.start_diagnostic_session(text, public.exam_type) to authenticated;
grant execute on function public.question_stimulus(uuid) to authenticated, anon;
