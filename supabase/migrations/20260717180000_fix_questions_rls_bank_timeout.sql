-- Fix AP/IB (and SAT) question-bank timeouts under anon/authenticated.
--
-- Root causes:
-- 1) SELECT policies on roles={public} forced per-row checks (courses EXISTS,
--    is_platform_admin()) during bank scans.
-- 2) Under RLS, enum equality on exam_type is not pushed into index seeks, so
--    PostgREST scans ~140k platform rows then filters — anon's 3s timeout fails.
--
-- Fix: tighten RLS roles + SECURITY DEFINER RPCs for platform bank counts/ids
-- (row_security off) so exam_type/unit_code indexes are used.

-- 1) Platform bank reads: simple, index-friendly predicate only.
DROP POLICY IF EXISTS "Students read platform questions" ON public.questions;
CREATE POLICY "Students read platform questions"
  ON public.questions
  FOR SELECT
  TO authenticated
  USING (is_platform_question = true);

-- 2) Creator-course questions (non-platform) that are published.
DROP POLICY IF EXISTS "Students read published course questions" ON public.questions;
CREATE POLICY "Students read published course questions"
  ON public.questions
  FOR SELECT
  TO authenticated
  USING (
    course_id IS NOT NULL
    AND EXISTS (
      SELECT 1
      FROM public.courses c
      WHERE c.id = questions.course_id
        AND c.status = 'published'::public.course_status
    )
  );

-- 3) Admin / creator / exam-simulator policies: stop applying to anon.
DROP POLICY IF EXISTS "Platform admins read all" ON public.questions;
CREATE POLICY "Platform admins read all"
  ON public.questions
  FOR SELECT
  TO authenticated
  USING (public.is_platform_admin());

DROP POLICY IF EXISTS "Creators manage questions" ON public.questions;
CREATE POLICY "Creators manage questions"
  ON public.questions
  FOR ALL
  TO authenticated
  USING (created_by = auth.uid())
  WITH CHECK (created_by = auth.uid());

DROP POLICY IF EXISTS "Students read exam simulator questions" ON public.questions;
CREATE POLICY "Students read exam simulator questions"
  ON public.questions
  FOR SELECT
  TO authenticated
  USING (source = 'exam_simulator');

DROP POLICY IF EXISTS "Anon read platform questions" ON public.questions;
CREATE POLICY "Anon read platform questions"
  ON public.questions
  FOR SELECT
  TO anon
  USING (is_platform_question = true);

-- Indexes: exam_type must lead. Drop any mis-ordered covering index.
DROP INDEX IF EXISTS questions_platform_exam_unit_challenge_idx;
CREATE INDEX IF NOT EXISTS questions_platform_exam_challenge_unit_idx
  ON public.questions (exam_type, challenge_only, unit_code)
  WHERE is_platform_question = true;

CREATE INDEX IF NOT EXISTS questions_platform_exam_id_idx
  ON public.questions (exam_type, id)
  WHERE is_platform_question = true AND challenge_only = false;

-- Fast bank RPCs (bypass RLS; platform rows only).
CREATE OR REPLACE FUNCTION public.count_platform_questions(
  p_exam_type text,
  p_challenge_only boolean DEFAULT false,
  p_unit_code text DEFAULT NULL,
  p_difficulty text DEFAULT NULL
)
RETURNS bigint
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO 'public'
SET row_security TO 'off'
AS $$
  SELECT COUNT(*)::bigint
  FROM public.questions q
  WHERE q.is_platform_question = true
    AND q.challenge_only = COALESCE(p_challenge_only, false)
    AND q.exam_type = p_exam_type::public.exam_type
    AND (p_unit_code IS NULL OR q.unit_code = p_unit_code)
    AND (p_difficulty IS NULL OR q.difficulty::text = p_difficulty);
$$;

CREATE OR REPLACE FUNCTION public.list_platform_question_ids(
  p_exam_type text,
  p_challenge_only boolean DEFAULT false,
  p_unit_code text DEFAULT NULL,
  p_difficulty text DEFAULT NULL,
  p_limit integer DEFAULT 1000,
  p_offset integer DEFAULT 0
)
RETURNS TABLE(id uuid)
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO 'public'
SET row_security TO 'off'
AS $$
  SELECT q.id
  FROM public.questions q
  WHERE q.is_platform_question = true
    AND q.challenge_only = COALESCE(p_challenge_only, false)
    AND q.exam_type = p_exam_type::public.exam_type
    AND (p_unit_code IS NULL OR q.unit_code = p_unit_code)
    AND (p_difficulty IS NULL OR q.difficulty::text = p_difficulty)
  ORDER BY q.id
  LIMIT GREATEST(1, LEAST(COALESCE(p_limit, 1000), 2000))
  OFFSET GREATEST(0, COALESCE(p_offset, 0));
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

REVOKE ALL ON FUNCTION public.count_platform_questions(text, boolean, text, text) FROM PUBLIC;
REVOKE ALL ON FUNCTION public.list_platform_question_ids(text, boolean, text, text, integer, integer) FROM PUBLIC;
REVOKE ALL ON FUNCTION public.count_platform_questions_by_unit(text, boolean, text) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.count_platform_questions(text, boolean, text, text) TO anon, authenticated;
GRANT EXECUTE ON FUNCTION public.list_platform_question_ids(text, boolean, text, text, integer, integer) TO anon, authenticated;
GRANT EXECUTE ON FUNCTION public.count_platform_questions_by_unit(text, boolean, text) TO anon, authenticated;
