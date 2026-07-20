-- Scope saved question bookmarks per course (exam_type slug = course_id).
-- Course identity in Scholaris is the exam_type enum (SAT, AP_BIOLOGY, …),
-- not the lessons `courses` UUID table (SAT/ACT catalog only).

ALTER TABLE public.saved_questions
  ADD COLUMN IF NOT EXISTS course_id public.exam_type;

UPDATE public.saved_questions
SET course_id = exam_type
WHERE course_id IS NULL;

ALTER TABLE public.saved_questions
  ALTER COLUMN course_id SET NOT NULL;

-- Keep exam_type in sync for legacy readers; prefer course_id going forward.
UPDATE public.saved_questions
SET exam_type = course_id
WHERE exam_type IS DISTINCT FROM course_id;

ALTER TABLE public.saved_questions
  DROP CONSTRAINT IF EXISTS saved_questions_user_id_question_id_key;

ALTER TABLE public.saved_questions
  ADD CONSTRAINT saved_questions_user_course_question_key
  UNIQUE (user_id, course_id, question_id);

DROP INDEX IF EXISTS public.saved_questions_user_exam_idx;

CREATE INDEX IF NOT EXISTS saved_questions_user_course_created_idx
  ON public.saved_questions (user_id, course_id, created_at DESC);

CREATE INDEX IF NOT EXISTS saved_questions_user_course_question_idx
  ON public.saved_questions (user_id, course_id, question_id);
