-- Practice Exam (exam_simulator) questions are is_platform_question=false so they
-- stay out of the practice bank. But the "Students read platform questions" RLS
-- policy only exposes is_platform_question=true rows, so the client read 0 exam
-- questions and exams failed to start ("rw_module_1 short (0/27)"). Add an
-- additive read policy for the dedicated exam pool. They remain
-- is_platform_question=false, so every bank query (which filters
-- is_platform_question=true) still excludes them.
DROP POLICY IF EXISTS "Students read exam simulator questions" ON public.questions;
CREATE POLICY "Students read exam simulator questions"
  ON public.questions
  FOR SELECT
  USING (source = 'exam_simulator');
