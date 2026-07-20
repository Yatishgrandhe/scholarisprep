-- AP/IB catalog foundation: course_units, full_exam_forms, FRQ grading columns.
-- Depends on 20260717010000_ap_ib_exam_type_enum_expansion.sql (new enum values committed).
-- Registry/forms seed: 20260717010200_ap_ib_subject_registry_and_forms_seed.sql

-- A. course_units
CREATE TABLE IF NOT EXISTS public.course_units (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  exam_type public.exam_type NOT NULL,
  unit_code text NOT NULL,
  unit_name text NOT NULL,
  unit_order integer NOT NULL DEFAULT 0,
  ced_topics text[] NOT NULL DEFAULT '{}',
  weight_hint numeric,
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (exam_type, unit_code)
);

CREATE INDEX IF NOT EXISTS course_units_exam_type_order_idx
  ON public.course_units (exam_type, unit_order);

ALTER TABLE public.course_units ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Anyone reads course units" ON public.course_units;
CREATE POLICY "Anyone reads course units"
  ON public.course_units FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Admins manage course units" ON public.course_units;
CREATE POLICY "Admins manage course units"
  ON public.course_units FOR ALL
  USING (public.is_platform_admin())
  WITH CHECK (public.is_platform_admin());

GRANT SELECT ON TABLE public.course_units TO anon, authenticated;

-- B. questions.unit_code + FRQ rubric columns
ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS unit_code text;

ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS rubric jsonb;

ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS max_points numeric;

CREATE INDEX IF NOT EXISTS questions_exam_type_unit_code_idx
  ON public.questions (exam_type, unit_code);

-- C. full_exam_forms (Forms A–J)
CREATE TABLE IF NOT EXISTS public.full_exam_forms (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  exam_type public.exam_type NOT NULL,
  form_id text NOT NULL
    CHECK (form_id IN ('A','B','C','D','E','F','G','H','I','J')),
  blueprint jsonb NOT NULL DEFAULT '{}'::jsonb,
  pool_tag text,
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (exam_type, form_id)
);

CREATE INDEX IF NOT EXISTS full_exam_forms_exam_active_idx
  ON public.full_exam_forms (exam_type, is_active);

ALTER TABLE public.full_exam_forms ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Anyone reads full exam forms" ON public.full_exam_forms;
CREATE POLICY "Anyone reads full exam forms"
  ON public.full_exam_forms FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Admins manage full exam forms" ON public.full_exam_forms;
CREATE POLICY "Admins manage full exam forms"
  ON public.full_exam_forms FOR ALL
  USING (public.is_platform_admin())
  WITH CHECK (public.is_platform_admin());

GRANT SELECT ON TABLE public.full_exam_forms TO anon, authenticated;

-- D. question_attempts FRQ grading columns
ALTER TABLE public.question_attempts
  ADD COLUMN IF NOT EXISTS ai_score numeric;

ALTER TABLE public.question_attempts
  ADD COLUMN IF NOT EXISTS ai_feedback text;

ALTER TABLE public.question_attempts
  ADD COLUMN IF NOT EXISTS rubric_scores jsonb;

ALTER TABLE public.question_attempts
  ADD COLUMN IF NOT EXISTS grading_model text;

ALTER TABLE public.question_attempts
  ADD COLUMN IF NOT EXISTS graded_at timestamptz;
