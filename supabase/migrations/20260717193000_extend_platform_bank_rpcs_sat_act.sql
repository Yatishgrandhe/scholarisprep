-- Extend platform bank RPCs for SAT/ACT (section + skill_ids + cursor)
-- and AP/IB unit_code covering indexes. Hierarchy aggregate for rush.
-- SECURITY DEFINER + row_security off: platform catalog only.
-- Function-level statement_timeout (15s) so anon's 3s role timeout does not
-- cancel DEFINER catalog scans mid-flight (see Supabase timeouts docs).

-- Covering indexes for SAT/ACT bank scans (prefer eq over ilike ORs).
CREATE INDEX IF NOT EXISTS questions_platform_exam_challenge_section_skill_idx
  ON public.questions (exam_type, challenge_only, section, skill_id)
  WHERE is_platform_question = true;

CREATE INDEX IF NOT EXISTS questions_platform_exam_challenge_section_skill_diff_idx
  ON public.questions (exam_type, challenge_only, section, skill_id, difficulty)
  WHERE is_platform_question = true;

-- AP/IB unit + id covering for cursor / ORDER BY id LIMIT without heap filter thrash.
CREATE INDEX IF NOT EXISTS questions_platform_exam_challenge_unit_id_idx
  ON public.questions (exam_type, challenge_only, unit_code, id)
  WHERE is_platform_question = true;

-- SAT/ACT section + id covering for ordered/capped id scans (avoids sorting 6k+ rows).
CREATE INDEX IF NOT EXISTS questions_platform_exam_challenge_section_id_idx
  ON public.questions (exam_type, challenge_only, section, id)
  WHERE is_platform_question = true;

-- Map canonical bank section filters to concrete section values (indexed IN).
CREATE OR REPLACE FUNCTION public.platform_bank_section_values(p_section text)
RETURNS text[]
LANGUAGE sql
IMMUTABLE
AS $$
  SELECT CASE
    WHEN p_section IS NULL OR btrim(p_section) = '' OR lower(p_section) = 'all'
      THEN NULL
    WHEN lower(p_section) = 'math'
      THEN ARRAY['math', 'math_calc', 'math_no_calc']::text[]
    WHEN lower(p_section) IN ('reading_writing', 'rw', 'en', 'english')
      THEN ARRAY['reading_writing', 'english']::text[]
    ELSE ARRAY[p_section]::text[]
  END;
$$;

REVOKE ALL ON FUNCTION public.platform_bank_section_values(text) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.platform_bank_section_values(text) TO anon, authenticated;

-- Drop old signatures before recreating with extra params.
DROP FUNCTION IF EXISTS public.count_platform_questions(text, boolean, text, text);
DROP FUNCTION IF EXISTS public.list_platform_question_ids(text, boolean, text, text, integer, integer);
DROP FUNCTION IF EXISTS public.question_counts_by_skill(text);

CREATE OR REPLACE FUNCTION public.count_platform_questions(
  p_exam_type text,
  p_challenge_only boolean DEFAULT false,
  p_unit_code text DEFAULT NULL,
  p_difficulty text DEFAULT NULL,
  p_section text DEFAULT NULL,
  p_skill_ids text[] DEFAULT NULL
)
RETURNS bigint
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO 'public'
SET row_security TO 'off'
SET statement_timeout TO '15s'
AS $$
  SELECT COUNT(*)::bigint
  FROM public.questions q
  WHERE q.is_platform_question = true
    AND q.challenge_only = COALESCE(p_challenge_only, false)
    AND q.exam_type = p_exam_type::public.exam_type
    AND (p_unit_code IS NULL OR q.unit_code = p_unit_code)
    AND (p_difficulty IS NULL OR q.difficulty::text = p_difficulty)
    AND (
      public.platform_bank_section_values(p_section) IS NULL
      OR q.section = ANY (public.platform_bank_section_values(p_section))
    )
    AND (
      p_skill_ids IS NULL
      OR cardinality(p_skill_ids) = 0
      OR q.skill_id = ANY (p_skill_ids)
    );
$$;

CREATE OR REPLACE FUNCTION public.list_platform_question_ids(
  p_exam_type text,
  p_challenge_only boolean DEFAULT false,
  p_unit_code text DEFAULT NULL,
  p_difficulty text DEFAULT NULL,
  p_limit integer DEFAULT 1000,
  p_offset integer DEFAULT 0,
  p_section text DEFAULT NULL,
  p_skill_ids text[] DEFAULT NULL,
  p_after_id uuid DEFAULT NULL
)
RETURNS TABLE(id uuid)
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO 'public'
SET row_security TO 'off'
SET statement_timeout TO '15s'
AS $$
  SELECT q.id
  FROM public.questions q
  WHERE q.is_platform_question = true
    AND q.challenge_only = COALESCE(p_challenge_only, false)
    AND q.exam_type = p_exam_type::public.exam_type
    AND (p_unit_code IS NULL OR q.unit_code = p_unit_code)
    AND (p_difficulty IS NULL OR q.difficulty::text = p_difficulty)
    AND (
      public.platform_bank_section_values(p_section) IS NULL
      OR q.section = ANY (public.platform_bank_section_values(p_section))
    )
    AND (
      p_skill_ids IS NULL
      OR cardinality(p_skill_ids) = 0
      OR q.skill_id = ANY (p_skill_ids)
    )
    AND (p_after_id IS NULL OR q.id > p_after_id)
  -- NOTE: ORDER BY is required for keyset (p_after_id) pagination. Practice
  -- Start clients prefer difficulty-stratified capped pages (limit ≤400) to
  -- avoid sorting large AP/IB unit match sets on cold cache.
  ORDER BY q.id
  LIMIT GREATEST(1, LEAST(COALESCE(p_limit, 1000), 2000))
  OFFSET CASE
    WHEN p_after_id IS NOT NULL THEN 0
    ELSE GREATEST(0, COALESCE(p_offset, 0))
  END;
$$;

CREATE OR REPLACE FUNCTION public.count_platform_questions_by_unit(
  p_exam_type text,
  p_challenge_only boolean DEFAULT false,
  p_difficulty text DEFAULT NULL
)
RETURNS TABLE(unit_code text, question_count bigint)
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO 'public'
SET row_security TO 'off'
SET statement_timeout TO '15s'
AS $$
  SELECT q.unit_code, COUNT(*)::bigint AS question_count
  FROM public.questions q
  WHERE q.is_platform_question = true
    AND q.challenge_only = COALESCE(p_challenge_only, false)
    AND q.exam_type = p_exam_type::public.exam_type
    AND q.unit_code IS NOT NULL
    AND (p_difficulty IS NULL OR q.difficulty::text = p_difficulty)
  GROUP BY q.unit_code;
$$;

-- Aggregate counts for bank hierarchy + Question Rush (one round-trip).
CREATE OR REPLACE FUNCTION public.question_counts_by_skill(
  p_exam_type text,
  p_challenge_only boolean DEFAULT false,
  p_difficulty text DEFAULT NULL,
  p_section text DEFAULT NULL,
  p_unit_code text DEFAULT NULL
)
RETURNS TABLE(
  section text,
  skill_id text,
  difficulty text,
  total bigint,
  challenged bigint
)
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO 'public'
SET row_security TO 'off'
SET statement_timeout TO '15s'
AS $$
  SELECT
    q.section,
    COALESCE(q.unit_code, q.skill_id) AS skill_id,
    q.difficulty::text AS difficulty,
    COUNT(*)::bigint AS total,
    COUNT(*) FILTER (
      WHERE COALESCE(q.source_metadata->>'challenged_problem', '') = 'true'
    )::bigint AS challenged
  FROM public.questions q
  WHERE q.is_platform_question = true
    AND q.challenge_only = COALESCE(p_challenge_only, false)
    AND q.exam_type = p_exam_type::public.exam_type
    AND (p_difficulty IS NULL OR q.difficulty::text = p_difficulty)
    AND (p_unit_code IS NULL OR q.unit_code = p_unit_code)
    AND (
      public.platform_bank_section_values(p_section) IS NULL
      OR q.section = ANY (public.platform_bank_section_values(p_section))
    )
    AND COALESCE(q.unit_code, q.skill_id) IS NOT NULL
  GROUP BY q.section, COALESCE(q.unit_code, q.skill_id), q.difficulty;
$$;

REVOKE ALL ON FUNCTION public.count_platform_questions(text, boolean, text, text, text, text[]) FROM PUBLIC;
REVOKE ALL ON FUNCTION public.list_platform_question_ids(text, boolean, text, text, integer, integer, text, text[], uuid) FROM PUBLIC;
REVOKE ALL ON FUNCTION public.count_platform_questions_by_unit(text, boolean, text) FROM PUBLIC;
REVOKE ALL ON FUNCTION public.question_counts_by_skill(text, boolean, text, text, text) FROM PUBLIC;

GRANT EXECUTE ON FUNCTION public.count_platform_questions(text, boolean, text, text, text, text[]) TO anon, authenticated;
GRANT EXECUTE ON FUNCTION public.list_platform_question_ids(text, boolean, text, text, integer, integer, text, text[], uuid) TO anon, authenticated;
GRANT EXECUTE ON FUNCTION public.count_platform_questions_by_unit(text, boolean, text) TO anon, authenticated;
GRANT EXECUTE ON FUNCTION public.question_counts_by_skill(text, boolean, text, text, text) TO anon, authenticated;
