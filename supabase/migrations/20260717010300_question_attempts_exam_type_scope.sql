-- Per-course mistake/activity log: every attempt must carry exam_type.
-- Backfill NULL rows from session → question → SAT default, then enforce NOT NULL.

UPDATE public.question_attempts qa
SET exam_type = es.exam_type
FROM public.exam_sessions es
WHERE qa.session_id = es.id
  AND qa.exam_type IS NULL
  AND es.exam_type IS NOT NULL;

UPDATE public.question_attempts qa
SET exam_type = q.exam_type
FROM public.questions q
WHERE qa.question_id = q.id
  AND qa.exam_type IS NULL
  AND q.exam_type IS NOT NULL;

UPDATE public.question_attempts
SET exam_type = 'SAT'::public.exam_type
WHERE exam_type IS NULL;

ALTER TABLE public.question_attempts
  ALTER COLUMN exam_type SET DEFAULT 'SAT'::public.exam_type;

ALTER TABLE public.question_attempts
  ALTER COLUMN exam_type SET NOT NULL;

COMMENT ON COLUMN public.question_attempts.exam_type IS
  'Course scope for mistake log / analytics — one row per user attempt per exam_type.';
