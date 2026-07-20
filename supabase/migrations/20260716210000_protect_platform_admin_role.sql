-- Prevent authenticated clients from demoting platform_admin
-- (e.g. /onboarding/role previously forced role = student).
-- service_role (admin API) and direct Postgres (no JWT) may still change role.

CREATE OR REPLACE FUNCTION public.protect_platform_admin_role()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  jwt_role text;
BEGIN
  IF OLD.role = 'platform_admin'::public.user_role
     AND NEW.role IS DISTINCT FROM OLD.role THEN
    BEGIN
      jwt_role := auth.jwt() ->> 'role';
    EXCEPTION WHEN OTHERS THEN
      jwt_role := NULL;
    END;
    IF jwt_role IS NOT NULL AND jwt_role IS DISTINCT FROM 'service_role' THEN
      RAISE EXCEPTION 'Cannot change role of a platform_admin user'
        USING ERRCODE = '42501';
    END IF;
  END IF;
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS protect_platform_admin_role ON public.profiles;
CREATE TRIGGER protect_platform_admin_role
  BEFORE UPDATE OF role ON public.profiles
  FOR EACH ROW
  EXECUTE FUNCTION public.protect_platform_admin_role();
