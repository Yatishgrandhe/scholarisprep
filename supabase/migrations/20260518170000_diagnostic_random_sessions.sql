-- Retire static 10-question onboarding diagnostic seed (replaced by per-session AI generation).
DELETE FROM public.questions
WHERE generation_seed = 'onboarding_diagnostic_v1';

CREATE INDEX IF NOT EXISTS idx_questions_generation_seed
  ON public.questions (generation_seed)
  WHERE generation_seed IS NOT NULL;
