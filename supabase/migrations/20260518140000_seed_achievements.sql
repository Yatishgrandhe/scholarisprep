-- Seed achievement definitions (idempotent on key)
INSERT INTO achievements (key, name, description, icon, criteria)
VALUES
  (
    'first_step',
    'First Step',
    'Complete your first practice session',
    'footprints',
    '{"type":"practice_sessions","count":1}'::jsonb
  ),
  (
    'on_a_roll',
    'On A Roll',
    'Study 3 days in a row',
    'fire',
    '{"type":"streak","days":3}'::jsonb
  ),
  (
    'week_warrior',
    'Week Warrior',
    'Study 7 days in a row',
    'trophy',
    '{"type":"streak","days":7}'::jsonb
  ),
  (
    'perfect_score',
    'Perfect Score',
    'Score 100% on a practice session',
    'star',
    '{"type":"perfect_practice"}'::jsonb
  ),
  (
    'half_way_there',
    'Half Way There',
    'Reach halfway from baseline to your target score',
    'chart-line-up',
    '{"type":"score_halfway"}'::jsonb
  ),
  (
    'marathon_runner',
    'Marathon Runner',
    'Complete a full practice exam',
    'exam',
    '{"type":"full_exam"}'::jsonb
  ),
  (
    'question_machine',
    'Question Machine',
    'Attempt 100 questions total',
    'lightning',
    '{"type":"question_attempts","count":100}'::jsonb
  ),
  (
    'deep_diver',
    'Deep Diver',
    'Use AI explain 10 times',
    'sparkle',
    '{"type":"ai_explain","count":10}'::jsonb
  ),
  (
    'tutors_pet',
    'Tutors Pet',
    'Have 5 tutor conversations',
    'chat',
    '{"type":"tutor_conversations","count":5}'::jsonb
  ),
  (
    'course_complete',
    'Course Complete',
    'Complete a full course',
    'graduation-cap',
    '{"type":"course_complete"}'::jsonb
  )
ON CONFLICT (key) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  icon = EXCLUDED.icon,
  criteria = EXCLUDED.criteria;
