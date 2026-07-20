-- Analytics query helper: partial index for course-scoped attempt lookups.
-- Backfill + NOT NULL already applied in 20260717010300_question_attempts_exam_type_scope.sql.

CREATE INDEX IF NOT EXISTS idx_question_attempts_user_exam_type_not_null
  ON public.question_attempts (user_id, exam_type, created_at DESC)
  WHERE exam_type IS NOT NULL;
