-- Saved questions bookmarks (exam-scoped)
CREATE TABLE IF NOT EXISTS public.saved_questions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  question_id uuid NOT NULL REFERENCES public.questions(id) ON DELETE CASCADE,
  exam_type public.exam_type NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, question_id)
);

CREATE INDEX IF NOT EXISTS saved_questions_user_exam_idx
  ON public.saved_questions (user_id, exam_type, created_at DESC);

ALTER TABLE public.saved_questions ENABLE ROW LEVEL SECURITY;

CREATE POLICY saved_questions_select_own ON public.saved_questions
  FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY saved_questions_insert_own ON public.saved_questions
  FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY saved_questions_delete_own ON public.saved_questions
  FOR DELETE USING (auth.uid() = user_id);

GRANT SELECT, INSERT, DELETE ON public.saved_questions TO authenticated;
