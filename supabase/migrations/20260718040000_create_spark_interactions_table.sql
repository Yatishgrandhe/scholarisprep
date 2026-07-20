-- Track Spark visualization suggestions shown and interacted with in tutor chat
create table public.spark_interactions (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users(id) on delete cascade not null,
  spark_type text not null,          -- e.g. 'shm_live_graph'
  action text not null,              -- 'suggested' | 'try_it' | 'dismiss'
  exam_type text,                    -- course context at time of interaction
  conversation_id uuid,              -- tutor_conversations.id if in a chat
  triggered_by_message text,         -- the user message that triggered the suggestion
  created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- Enable RLS
alter table public.spark_interactions enable row level security;

-- Users can insert their own interactions
create policy "Users can insert own spark interactions"
  on public.spark_interactions for insert
  with check (auth.uid() = user_id);

-- Users can read their own interactions
create policy "Users can read own spark interactions"
  on public.spark_interactions for select
  using (auth.uid() = user_id);

-- Admins can read all
create policy "Admins can read all spark interactions"
  on public.spark_interactions for select
  using (public.is_platform_admin());

-- Grants
grant select, insert on public.spark_interactions to authenticated;

-- Index for analytics queries
create index idx_spark_interactions_user on public.spark_interactions(user_id);
create index idx_spark_interactions_type on public.spark_interactions(spark_type, action);
create index idx_spark_interactions_created on public.spark_interactions(created_at);
