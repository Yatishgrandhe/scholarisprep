-- Subagent 4: database audit — RLS grants, FK indexes, performance indexes,
-- integrity constraints, streak/achievement triggers.

-- ---------------------------------------------------------------------------
-- STEP 2: anon read for platform questions (RLS policy exists; grant missing)
-- ---------------------------------------------------------------------------
GRANT SELECT ON TABLE public.questions TO anon;

DROP POLICY IF EXISTS "Anon read platform questions" ON public.questions;
CREATE POLICY "Anon read platform questions"
  ON public.questions
  FOR SELECT
  TO anon
  USING (is_platform_question = true);

-- Passages linked to platform questions (diagnostic stimuli)
GRANT SELECT ON TABLE public.passages TO anon;

DROP POLICY IF EXISTS "Anon read platform passages" ON public.passages;
CREATE POLICY "Anon read platform passages"
  ON public.passages
  FOR SELECT
  TO anon
  USING (
    EXISTS (
      SELECT 1
      FROM public.questions q
      WHERE q.passage_id = passages.id
        AND q.is_platform_question = true
    )
  );

-- ---------------------------------------------------------------------------
-- STEP 1: FK column indexes (unindexed foreign keys from audit)
-- ---------------------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_content_reports_reporter_id
  ON public.content_reports (reporter_id);

CREATE INDEX IF NOT EXISTS idx_content_reports_reviewed_by
  ON public.content_reports (reviewed_by);

CREATE INDEX IF NOT EXISTS idx_courses_creator_id
  ON public.courses (creator_id);

CREATE INDEX IF NOT EXISTS idx_courses_org_id
  ON public.courses (org_id);

CREATE INDEX IF NOT EXISTS idx_diagnostic_results_session_id
  ON public.diagnostic_results (session_id);

CREATE INDEX IF NOT EXISTS idx_diagnostic_results_user_id
  ON public.diagnostic_results (user_id);

CREATE INDEX IF NOT EXISTS idx_exam_sessions_course_id
  ON public.exam_sessions (course_id);

CREATE INDEX IF NOT EXISTS idx_lesson_progress_course_id
  ON public.lesson_progress (course_id);

CREATE INDEX IF NOT EXISTS idx_lessons_course_id
  ON public.lessons (course_id);

CREATE INDEX IF NOT EXISTS idx_org_invites_invited_by
  ON public.org_invites (invited_by);

CREATE INDEX IF NOT EXISTS idx_organizations_owner_id
  ON public.organizations (owner_id);

CREATE INDEX IF NOT EXISTS idx_practice_attempts_user_id
  ON public.practice_attempts (user_id);

CREATE INDEX IF NOT EXISTS idx_profiles_org_id
  ON public.profiles (org_id);

CREATE INDEX IF NOT EXISTS idx_question_attempts_question_id
  ON public.question_attempts (question_id);

CREATE INDEX IF NOT EXISTS idx_question_attempts_session_id
  ON public.question_attempts (session_id);

CREATE INDEX IF NOT EXISTS idx_questions_course_id
  ON public.questions (course_id);

CREATE INDEX IF NOT EXISTS idx_questions_created_by
  ON public.questions (created_by);

CREATE INDEX IF NOT EXISTS idx_questions_lesson_id
  ON public.questions (lesson_id);

CREATE INDEX IF NOT EXISTS idx_subject_diagnostic_results_session_id
  ON public.subject_diagnostic_results (session_id);

CREATE INDEX IF NOT EXISTS idx_subscriptions_org_id
  ON public.subscriptions (org_id);

CREATE INDEX IF NOT EXISTS idx_subscriptions_user_id
  ON public.subscriptions (user_id);

CREATE INDEX IF NOT EXISTS idx_tutor_conversations_user_id
  ON public.tutor_conversations (user_id);

CREATE INDEX IF NOT EXISTS idx_tutor_messages_conversation_id
  ON public.tutor_messages (conversation_id);

-- ---------------------------------------------------------------------------
-- STEP 3: performance indexes
-- ---------------------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_questions_exam_type_section_difficulty
  ON public.questions (exam_type, section, difficulty)
  WHERE is_platform_question = true;

CREATE INDEX IF NOT EXISTS idx_questions_topic_exam
  ON public.questions (topic, exam_type);

CREATE INDEX IF NOT EXISTS idx_questions_ai_generated
  ON public.questions (ai_generated)
  WHERE ai_generated = true;

CREATE INDEX IF NOT EXISTS idx_attempts_user_created
  ON public.question_attempts (user_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_attempts_user_exam
  ON public.question_attempts (user_id, exam_type, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_attempts_session
  ON public.question_attempts (session_id)
  WHERE session_id IS NOT NULL;

-- exam_sessions: use started_at for session timeline (created_at also exists)
CREATE INDEX IF NOT EXISTS idx_sessions_user_type_created
  ON public.exam_sessions (user_id, session_type, started_at DESC);

CREATE INDEX IF NOT EXISTS idx_sessions_user_exam
  ON public.exam_sessions (user_id, exam_type, started_at DESC);

CREATE INDEX IF NOT EXISTS idx_tutor_messages_convo_created
  ON public.tutor_messages (conversation_id, created_at);

CREATE INDEX IF NOT EXISTS idx_enrollments_user_course
  ON public.enrollments (user_id, course_id);

CREATE INDEX IF NOT EXISTS idx_enrollments_course_progress
  ON public.enrollments (course_id, progress_percent);

CREATE INDEX IF NOT EXISTS idx_lesson_progress_user_course
  ON public.lesson_progress (user_id, course_id);

CREATE INDEX IF NOT EXISTS idx_active_subjects_user
  ON public.user_active_subjects (user_id);

-- ---------------------------------------------------------------------------
-- STEP 4: data integrity
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.validate_question_options(
  opts jsonb,
  qtype text,
  correct text
)
RETURNS boolean
LANGUAGE plpgsql
IMMUTABLE
SET search_path = public
AS $$
DECLARE
  elem jsonb;
BEGIN
  IF opts IS NULL OR jsonb_typeof(opts) <> 'array' THEN
    RETURN false;
  END IF;

  IF jsonb_array_length(opts) < 2 THEN
    RETURN false;
  END IF;

  FOR elem IN SELECT value FROM jsonb_array_elements(opts)
  LOOP
    IF jsonb_typeof(elem) <> 'object'
      OR NOT (elem ? 'id' AND elem ? 'text')
      OR coalesce(elem->>'id', '') = ''
    THEN
      RETURN false;
    END IF;
  END LOOP;

  IF qtype = 'multiple_choice' AND correct IS NOT NULL AND correct <> '' THEN
    IF NOT EXISTS (
      SELECT 1
      FROM jsonb_array_elements(opts) o(value)
      WHERE o.value->>'id' = correct
    ) THEN
      RETURN false;
    END IF;
  END IF;

  RETURN true;
END;
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint
    WHERE conname = 'chk_question_counts'
      AND conrelid = 'public.exam_sessions'::regclass
  ) THEN
    ALTER TABLE public.exam_sessions
      ADD CONSTRAINT chk_question_counts
      CHECK (
        coalesce(total_questions, 0) >= 0
        AND coalesce(correct_count, 0) >= 0
        AND coalesce(correct_count, 0) <= coalesce(total_questions, 0)
        AND coalesce(current_question_index, 0) >= 0
        AND (
          total_questions IS NULL
          OR current_question_index <= total_questions
        )
      );
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint
    WHERE conname = 'chk_progress_range'
      AND conrelid = 'public.enrollments'::regclass
  ) THEN
    ALTER TABLE public.enrollments
      ADD CONSTRAINT chk_progress_range
      CHECK (
        progress_percent >= 0
        AND progress_percent <= 100
      );
  END IF;
END $$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint
    WHERE conname = 'chk_valid_options'
      AND conrelid = 'public.questions'::regclass
  ) THEN
    ALTER TABLE public.questions
      ADD CONSTRAINT chk_valid_options
      CHECK (
        public.validate_question_options(
          options,
          question_type::text,
          correct_answer
        )
      );
  END IF;
END $$;

-- ---------------------------------------------------------------------------
-- STEP 5: streak + achievement triggers on question_attempts INSERT
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.update_user_streak()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
SET row_security = off
AS $$
DECLARE
  v_today date := (timezone('UTC', now()))::date;
  v_yesterday date := ((timezone('UTC', now()) - interval '1 day'))::date;
  v_row public.user_streaks%ROWTYPE;
  v_next integer;
  v_longest integer;
BEGIN
  IF NEW.user_id IS NULL THEN
    RETURN NEW;
  END IF;

  SELECT * INTO v_row
  FROM public.user_streaks
  WHERE user_id = NEW.user_id;

  IF NOT FOUND THEN
    INSERT INTO public.user_streaks (
      user_id,
      current_streak,
      longest_streak,
      last_activity_date,
      updated_at
    )
    VALUES (NEW.user_id, 1, 1, v_today, now())
    ON CONFLICT (user_id) DO UPDATE
      SET
        current_streak = CASE
          WHEN public.user_streaks.last_activity_date = v_today THEN public.user_streaks.current_streak
          WHEN public.user_streaks.last_activity_date = v_yesterday THEN public.user_streaks.current_streak + 1
          ELSE 1
        END,
        longest_streak = GREATEST(
          public.user_streaks.longest_streak,
          CASE
            WHEN public.user_streaks.last_activity_date = v_today THEN public.user_streaks.current_streak
            WHEN public.user_streaks.last_activity_date = v_yesterday THEN public.user_streaks.current_streak + 1
            ELSE 1
          END
        ),
        last_activity_date = v_today,
        updated_at = now();
    RETURN NEW;
  END IF;

  IF v_row.last_activity_date = v_today THEN
    RETURN NEW;
  END IF;

  IF v_row.last_activity_date = v_yesterday THEN
    v_next := v_row.current_streak + 1;
  ELSE
    v_next := 1;
  END IF;

  v_longest := GREATEST(coalesce(v_row.longest_streak, 0), v_next);

  UPDATE public.user_streaks
  SET
    current_streak = v_next,
    longest_streak = v_longest,
    last_activity_date = v_today,
    updated_at = now()
  WHERE user_id = NEW.user_id;

  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.check_and_award_achievements()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
SET row_security = off
AS $$
DECLARE
  v_attempt_count bigint;
  v_ai_explain_count bigint;
  v_streak integer;
  r record;
  v_threshold integer;
BEGIN
  IF NEW.user_id IS NULL THEN
    RETURN NEW;
  END IF;

  SELECT count(*)::bigint INTO v_attempt_count
  FROM public.question_attempts
  WHERE user_id = NEW.user_id;

  SELECT count(*)::bigint INTO v_ai_explain_count
  FROM public.question_attempts
  WHERE user_id = NEW.user_id
    AND ai_explanation_requested = true;

  SELECT coalesce(current_streak, 0) INTO v_streak
  FROM public.user_streaks
  WHERE user_id = NEW.user_id;

  FOR r IN
    SELECT a.id, a.key, a.criteria
    FROM public.achievements a
    WHERE a.criteria IS NOT NULL
  LOOP
    IF EXISTS (
      SELECT 1
      FROM public.user_achievements ua
      WHERE ua.user_id = NEW.user_id
        AND ua.achievement_id = r.id
    ) THEN
      CONTINUE;
    END IF;

    CASE r.criteria->>'type'
      WHEN 'question_attempts' THEN
        v_threshold := coalesce((r.criteria->>'count')::integer, 0);
        IF v_attempt_count >= v_threshold AND v_threshold > 0 THEN
          INSERT INTO public.user_achievements (user_id, achievement_id)
          VALUES (NEW.user_id, r.id)
          ON CONFLICT (user_id, achievement_id) DO NOTHING;
        END IF;
      WHEN 'ai_explain' THEN
        v_threshold := coalesce((r.criteria->>'count')::integer, 0);
        IF v_ai_explain_count >= v_threshold AND v_threshold > 0 THEN
          INSERT INTO public.user_achievements (user_id, achievement_id)
          VALUES (NEW.user_id, r.id)
          ON CONFLICT (user_id, achievement_id) DO NOTHING;
        END IF;
      WHEN 'streak' THEN
        v_threshold := coalesce((r.criteria->>'days')::integer, 0);
        IF v_streak >= v_threshold AND v_threshold > 0 THEN
          INSERT INTO public.user_achievements (user_id, achievement_id)
          VALUES (NEW.user_id, r.id)
          ON CONFLICT (user_id, achievement_id) DO NOTHING;
        END IF;
      ELSE
        NULL;
    END CASE;
  END LOOP;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_question_attempts_01_update_streak ON public.question_attempts;
CREATE TRIGGER trg_question_attempts_01_update_streak
  AFTER INSERT ON public.question_attempts
  FOR EACH ROW
  EXECUTE FUNCTION public.update_user_streak();

DROP TRIGGER IF EXISTS trg_question_attempts_02_award_achievements ON public.question_attempts;
CREATE TRIGGER trg_question_attempts_02_award_achievements
  AFTER INSERT ON public.question_attempts
  FOR EACH ROW
  EXECUTE FUNCTION public.check_and_award_achievements();

GRANT EXECUTE ON FUNCTION public.validate_question_options(jsonb, text, text) TO authenticated, anon;

COMMENT ON TABLE public.achievements IS
  'Catalog; lacks created_at (static seed data). user_streaks uses updated_at; enrollments uses enrolled_at.';
