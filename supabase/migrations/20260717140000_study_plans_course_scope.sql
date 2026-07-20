-- Scope study plans per course (exam_type slug = course_id).
-- Course identity in Scholaris is the exam_type enum (SAT, AP_ENVIRONMENTAL_SCIENCE, …),
-- not the lessons `courses` UUID table (SAT/ACT catalog only).
-- Fixes: SAT plan leaking onto AP/IB dashboards via legacy UNIQUE(user_id) on study_plans.

-- ---------------------------------------------------------------------------
-- A. multi_subject_study_plans — add course_id, unique per (user, course)
-- ---------------------------------------------------------------------------
ALTER TABLE public.multi_subject_study_plans
  ADD COLUMN IF NOT EXISTS course_id public.exam_type;

UPDATE public.multi_subject_study_plans
SET course_id = exam_type
WHERE course_id IS NULL;

ALTER TABLE public.multi_subject_study_plans
  ALTER COLUMN course_id SET NOT NULL;

UPDATE public.multi_subject_study_plans
SET exam_type = course_id
WHERE exam_type IS DISTINCT FROM course_id;

ALTER TABLE public.multi_subject_study_plans
  DROP CONSTRAINT IF EXISTS multi_subject_study_plans_user_id_exam_type_key;

ALTER TABLE public.multi_subject_study_plans
  ADD CONSTRAINT multi_subject_study_plans_user_course_key
  UNIQUE (user_id, course_id);

DROP INDEX IF EXISTS public.multi_subject_study_plans_user_id_idx;

CREATE INDEX IF NOT EXISTS multi_subject_study_plans_user_course_idx
  ON public.multi_subject_study_plans (user_id, course_id);

CREATE INDEX IF NOT EXISTS multi_subject_study_plans_user_exam_idx
  ON public.multi_subject_study_plans (user_id, exam_type);

COMMENT ON COLUMN public.multi_subject_study_plans.course_id IS
  'Course scope for study plans — same enum as exam_type (SAT, AP_*, IB_*).';

-- ---------------------------------------------------------------------------
-- B. study_plans (legacy) — one row per user+course, not one per user
-- ---------------------------------------------------------------------------
ALTER TABLE public.study_plans
  ADD COLUMN IF NOT EXISTS course_id public.exam_type;

UPDATE public.study_plans
SET exam_type = 'SAT'::public.exam_type
WHERE exam_type IS NULL;

UPDATE public.study_plans
SET course_id = exam_type
WHERE course_id IS NULL;

ALTER TABLE public.study_plans
  ALTER COLUMN exam_type SET NOT NULL;

ALTER TABLE public.study_plans
  ALTER COLUMN course_id SET NOT NULL;

UPDATE public.study_plans
SET exam_type = course_id
WHERE exam_type IS DISTINCT FROM course_id;

ALTER TABLE public.study_plans
  DROP CONSTRAINT IF EXISTS study_plans_user_id_key;

ALTER TABLE public.study_plans
  ADD CONSTRAINT study_plans_user_course_key
  UNIQUE (user_id, course_id);

CREATE INDEX IF NOT EXISTS study_plans_user_course_idx
  ON public.study_plans (user_id, course_id);

CREATE INDEX IF NOT EXISTS study_plans_user_exam_idx
  ON public.study_plans (user_id, exam_type);

COMMENT ON COLUMN public.study_plans.course_id IS
  'Course scope for legacy study plans — UNIQUE(user_id, course_id); never global per user.';

-- ---------------------------------------------------------------------------
-- C. Keep course_id ↔ exam_type in sync on write
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.sync_study_plan_course_id()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  IF NEW.course_id IS NULL AND NEW.exam_type IS NOT NULL THEN
    NEW.course_id := NEW.exam_type;
  ELSIF NEW.exam_type IS NULL AND NEW.course_id IS NOT NULL THEN
    NEW.exam_type := NEW.course_id;
  ELSIF NEW.course_id IS NOT NULL THEN
    NEW.exam_type := NEW.course_id;
  END IF;
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_multi_subject_study_plans_course_id
  ON public.multi_subject_study_plans;
CREATE TRIGGER trg_multi_subject_study_plans_course_id
  BEFORE INSERT OR UPDATE OF course_id, exam_type
  ON public.multi_subject_study_plans
  FOR EACH ROW
  EXECUTE FUNCTION public.sync_study_plan_course_id();

DROP TRIGGER IF EXISTS trg_study_plans_course_id ON public.study_plans;
CREATE TRIGGER trg_study_plans_course_id
  BEFORE INSERT OR UPDATE OF course_id, exam_type
  ON public.study_plans
  FOR EACH ROW
  EXECUTE FUNCTION public.sync_study_plan_course_id();

-- ---------------------------------------------------------------------------
-- D. RLS — own rows only; app filters by course_id so courses never cross-leak
-- ---------------------------------------------------------------------------
ALTER TABLE public.multi_subject_study_plans ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_plans ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users manage own plans" ON public.multi_subject_study_plans;
CREATE POLICY "Users manage own course plans"
  ON public.multi_subject_study_plans
  FOR ALL
  TO authenticated
  USING (user_id = (SELECT auth.uid()))
  WITH CHECK (
    user_id = (SELECT auth.uid())
    AND course_id IS NOT NULL
    AND exam_type = course_id
  );

DROP POLICY IF EXISTS "Users manage own plan" ON public.study_plans;
CREATE POLICY "Users manage own course plans"
  ON public.study_plans
  FOR ALL
  TO authenticated
  USING (user_id = (SELECT auth.uid()))
  WITH CHECK (
    user_id = (SELECT auth.uid())
    AND course_id IS NOT NULL
    AND exam_type = course_id
  );

-- Admins retain read on legacy table
DROP POLICY IF EXISTS "Platform admins read all" ON public.study_plans;
CREATE POLICY "Platform admins read all"
  ON public.study_plans
  FOR SELECT
  TO authenticated
  USING (public.is_platform_admin());
