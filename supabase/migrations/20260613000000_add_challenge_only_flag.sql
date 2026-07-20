-- Exclusive DSAT Challenge tier.
-- challenge_only items are served ONLY on the Challenge Questions page and are
-- excluded from every other question pool (practice, question bank, speed drill,
-- exam simulator, predicted papers, diagnostics, bank stats).
ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS challenge_only boolean NOT NULL DEFAULT false;

CREATE INDEX IF NOT EXISTS questions_challenge_only_true_idx
  ON public.questions (challenge_only)
  WHERE challenge_only = true;
