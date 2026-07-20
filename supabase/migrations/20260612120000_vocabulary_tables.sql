-- SAT vocabulary word bank + per-user progress
CREATE TABLE IF NOT EXISTS public.vocabulary_words (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  word text NOT NULL,
  definition text NOT NULL,
  example_sentence text,
  part_of_speech text,
  difficulty public.difficulty NOT NULL DEFAULT 'medium',
  exam_type public.exam_type NOT NULL DEFAULT 'SAT',
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT vocabulary_words_word_exam_unique UNIQUE (word, exam_type)
);

CREATE INDEX IF NOT EXISTS vocabulary_words_exam_difficulty_idx
  ON public.vocabulary_words (exam_type, difficulty);

CREATE INDEX IF NOT EXISTS vocabulary_words_exam_word_idx
  ON public.vocabulary_words (exam_type, lower(word));

CREATE TABLE IF NOT EXISTS public.user_vocabulary_progress (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  word_id uuid NOT NULL REFERENCES public.vocabulary_words(id) ON DELETE CASCADE,
  mastery smallint NOT NULL DEFAULT 0 CHECK (mastery >= 0 AND mastery <= 100),
  is_saved boolean NOT NULL DEFAULT false,
  times_reviewed integer NOT NULL DEFAULT 0,
  last_reviewed_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, word_id)
);

CREATE INDEX IF NOT EXISTS user_vocabulary_progress_user_idx
  ON public.user_vocabulary_progress (user_id, is_saved);

ALTER TABLE public.vocabulary_words ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_vocabulary_progress ENABLE ROW LEVEL SECURITY;

CREATE POLICY vocabulary_words_select_authenticated ON public.vocabulary_words
  FOR SELECT TO authenticated USING (true);

CREATE POLICY user_vocabulary_progress_select_own ON public.user_vocabulary_progress
  FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY user_vocabulary_progress_insert_own ON public.user_vocabulary_progress
  FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY user_vocabulary_progress_update_own ON public.user_vocabulary_progress
  FOR UPDATE USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

CREATE POLICY user_vocabulary_progress_delete_own ON public.user_vocabulary_progress
  FOR DELETE USING (auth.uid() = user_id);

GRANT SELECT ON public.vocabulary_words TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.user_vocabulary_progress TO authenticated;
