-- Users can record newly earned achievements from the client.
drop policy if exists "Users earn achievements" on public.user_achievements;
create policy "Users earn achievements"
  on public.user_achievements
  for insert
  to authenticated
  with check (user_id = auth.uid());

insert into public.achievements (key, name, description, icon)
values
  (
    'first_practice',
    'First Steps',
    'Complete your first practice session',
    'footprints'
  ),
  (
    'streak_3',
    'On a Roll',
    'Reach a 3-day study streak',
    'fire'
  ),
  (
    'streak_7',
    'Week Warrior',
    'Reach a 7-day study streak',
    'fire'
  ),
  (
    'first_exam',
    'Test Taker',
    'Complete your first full practice test',
    'exam'
  ),
  (
    'perfect_practice',
    'Flawless',
    'Score 100% on a practice session',
    'star'
  )
on conflict (key) do nothing;
