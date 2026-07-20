-- Multi-subject architecture: exam_type extensions, registry, user subjects, plans, diagnostics

-- A. Extend exam_type enum
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_BIOLOGY';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_CHEMISTRY';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_PHYSICS';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_CALCULUS_AB';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_CALCULUS_BC';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_STATISTICS';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_ENGLISH';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_US_HISTORY';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_WORLD_HISTORY';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_PSYCHOLOGY';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_ECONOMICS';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'AP_COMPUTER_SCIENCE';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'PSAT';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'LSAT';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'MCAT';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'TOEFL';
ALTER TYPE public.exam_type ADD VALUE IF NOT EXISTS 'IELTS';

-- B. subject_registry
CREATE TABLE IF NOT EXISTS public.subject_registry (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  exam_type public.exam_type NOT NULL UNIQUE,
  display_name text NOT NULL,
  short_code text NOT NULL UNIQUE,
  description text,
  sections jsonb NOT NULL DEFAULT '[]'::jsonb,
  topics jsonb NOT NULL DEFAULT '[]'::jsonb,
  score_range jsonb NOT NULL DEFAULT '{"min": 0, "max": 100}'::jsonb,
  time_limits jsonb NOT NULL DEFAULT '{}'::jsonb,
  question_formats jsonb NOT NULL DEFAULT '[]'::jsonb,
  calculator_policy text NOT NULL DEFAULT 'none'
    CHECK (calculator_policy IN ('none', 'scientific', 'graphing', 'always')),
  has_stimulus boolean NOT NULL DEFAULT false,
  stimulus_types text[] DEFAULT '{}',
  passing_score numeric,
  total_questions_full_exam integer,
  exam_duration_minutes integer,
  created_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE public.subject_registry ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Anyone reads subject registry" ON public.subject_registry;
CREATE POLICY "Anyone reads subject registry"
  ON public.subject_registry FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Admins manage registry" ON public.subject_registry;
CREATE POLICY "Admins manage registry"
  ON public.subject_registry FOR ALL
  USING (public.is_platform_admin())
  WITH CHECK (public.is_platform_admin());

-- C. user_active_subjects
CREATE TABLE IF NOT EXISTS public.user_active_subjects (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES public.profiles (id) ON DELETE CASCADE,
  exam_type public.exam_type NOT NULL,
  exam_date date,
  target_score numeric,
  baseline_score numeric,
  is_primary boolean NOT NULL DEFAULT false,
  priority integer NOT NULL DEFAULT 1,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, exam_type)
);

CREATE INDEX IF NOT EXISTS user_active_subjects_user_id_idx
  ON public.user_active_subjects (user_id, is_primary DESC, priority);

ALTER TABLE public.user_active_subjects ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users manage own subjects" ON public.user_active_subjects;
CREATE POLICY "Users manage own subjects"
  ON public.user_active_subjects FOR ALL
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- D. multi_subject_study_plans
CREATE TABLE IF NOT EXISTS public.multi_subject_study_plans (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES public.profiles (id) ON DELETE CASCADE,
  exam_type public.exam_type NOT NULL,
  exam_date date,
  target_score numeric,
  baseline_score numeric,
  weekly_hours_allocated integer DEFAULT 5,
  plan_data jsonb NOT NULL DEFAULT '{}'::jsonb,
  generated_at timestamptz DEFAULT now(),
  last_updated timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, exam_type)
);

CREATE INDEX IF NOT EXISTS multi_subject_study_plans_user_id_idx
  ON public.multi_subject_study_plans (user_id, exam_type);

ALTER TABLE public.multi_subject_study_plans ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users manage own plans" ON public.multi_subject_study_plans;
CREATE POLICY "Users manage own plans"
  ON public.multi_subject_study_plans FOR ALL
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- E. tutor_conversations
ALTER TABLE public.tutor_conversations
  ADD COLUMN IF NOT EXISTS exam_type public.exam_type;

ALTER TABLE public.tutor_conversations
  ADD COLUMN IF NOT EXISTS subject_context jsonb NOT NULL DEFAULT '{}'::jsonb;

-- F. question_attempts
ALTER TABLE public.question_attempts
  ADD COLUMN IF NOT EXISTS exam_type public.exam_type;

ALTER TABLE public.question_attempts
  ADD COLUMN IF NOT EXISTS subject_section text;

CREATE INDEX IF NOT EXISTS question_attempts_user_exam_idx
  ON public.question_attempts (user_id, exam_type, created_at DESC);

-- G. subject_diagnostic_results
CREATE TABLE IF NOT EXISTS public.subject_diagnostic_results (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES public.profiles (id) ON DELETE CASCADE,
  exam_type public.exam_type NOT NULL,
  session_id uuid REFERENCES public.exam_sessions (id) ON DELETE SET NULL,
  section_scores jsonb NOT NULL DEFAULT '{}'::jsonb,
  topic_scores jsonb NOT NULL DEFAULT '{}'::jsonb,
  overall_score numeric,
  predicted_score numeric,
  recommended_focus text[] DEFAULT '{}',
  weak_topics text[] DEFAULT '{}',
  strong_topics text[] DEFAULT '{}',
  taken_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, exam_type)
);

CREATE INDEX IF NOT EXISTS subject_diagnostic_results_user_id_idx
  ON public.subject_diagnostic_results (user_id, taken_at DESC);

ALTER TABLE public.subject_diagnostic_results ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users manage own diagnostics" ON public.subject_diagnostic_results;
CREATE POLICY "Users manage own diagnostics"
  ON public.subject_diagnostic_results FOR ALL
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());
