-- Harden diagnostic RLS: explicit WITH CHECK + authenticated role.
-- Deactivate stale onboarding_diagnostic_v1 pool (seed questions removed).

-- exam_sessions
DROP POLICY IF EXISTS "Users manage own sessions" ON public.exam_sessions;
CREATE POLICY "Users manage own sessions"
  ON public.exam_sessions
  FOR ALL
  TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- diagnostic_results (onboarding diagnostic persistence)
DROP POLICY IF EXISTS "Users manage own diagnostics" ON public.diagnostic_results;
CREATE POLICY "Users manage own diagnostic results"
  ON public.diagnostic_results
  FOR ALL
  TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- subject_diagnostic_results (multi-subject diagnostic scores)
DROP POLICY IF EXISTS "Users manage own diagnostics" ON public.subject_diagnostic_results;
CREATE POLICY "Users manage own subject diagnostics"
  ON public.subject_diagnostic_results
  FOR ALL
  TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- Retired pool: onboarding_diagnostic_v1 has no seed rows after diagnostic_random_sessions
UPDATE public.diagnostic_pools
SET is_active = false,
    description = coalesce(
      description,
      'Retired: onboarding uses per-session AI generation (onboarding_diagnostic_v2).'
    )
WHERE pool_key = 'onboarding_diagnostic_v1';
