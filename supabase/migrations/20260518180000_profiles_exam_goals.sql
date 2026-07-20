-- Allow students to prepare for multiple exam programs at once.
ALTER TABLE public.profiles
  ADD COLUMN IF NOT EXISTS exam_goals text[] DEFAULT '{}'::text[];

COMMENT ON COLUMN public.profiles.exam_goals IS
  'All exam programs the student selected during onboarding; exam_goal remains the primary focus.';
