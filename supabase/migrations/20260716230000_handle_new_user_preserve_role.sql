-- handle_new_user ON CONFLICT must not overwrite role / onboarding_completed.
-- Prod previously set role = COALESCE(EXCLUDED.role, profiles.role), which always
-- picked EXCLUDED.role (default student when OAuth metadata has no role) and could
-- demote platform_admin during insert races (trigger runs without JWT, so
-- protect_platform_admin_role allows the change).

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  meta_role text := NEW.raw_user_meta_data->>'role';
  resolved_role public.user_role := 'student';
BEGIN
  IF meta_role IN ('student', 'creator', 'org_admin', 'platform_admin') THEN
    resolved_role := meta_role::public.user_role;
  END IF;

  INSERT INTO public.profiles (id, email, full_name, role, onboarding_completed)
  VALUES (
    NEW.id,
    COALESCE(NEW.email, ''),
    COALESCE(NEW.raw_user_meta_data->>'full_name', NULL),
    resolved_role,
    false
  )
  ON CONFLICT (id) DO UPDATE
    SET email = EXCLUDED.email,
        full_name = COALESCE(EXCLUDED.full_name, public.profiles.full_name);
        -- Do NOT update role or onboarding_completed on conflict.

  INSERT INTO public.user_streaks (user_id, current_streak, longest_streak)
  VALUES (NEW.id, 0, 0)
  ON CONFLICT (user_id) DO NOTHING;

  RETURN NEW;
END;
$$;
