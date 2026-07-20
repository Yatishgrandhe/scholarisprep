-- College Board / OpenSAT import provenance columns
ALTER TABLE public.questions ADD COLUMN IF NOT EXISTS external_id text;
ALTER TABLE public.questions ADD COLUMN IF NOT EXISTS source text;
ALTER TABLE public.questions ADD COLUMN IF NOT EXISTS source_metadata jsonb DEFAULT '{}'::jsonb;

CREATE UNIQUE INDEX IF NOT EXISTS questions_source_external_id_idx
  ON public.questions (source, external_id)
  WHERE external_id IS NOT NULL AND source IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_questions_source_pool
  ON public.questions (source, pool_key)
  WHERE is_platform_question = true;

COMMENT ON COLUMN public.questions.external_id IS 'Upstream item ID (e.g. College Board EQB hex or OpenSAT id)';
COMMENT ON COLUMN public.questions.source IS 'e.g. college_board_opensat, ai_generated, creator';
