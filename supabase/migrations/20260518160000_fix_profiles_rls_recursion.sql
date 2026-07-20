-- Duplicate admin policy queries profiles inline and causes infinite RLS recursion (HTTP 500).
DROP POLICY IF EXISTS "Admins read all profiles" ON public.profiles;

-- Ensure helper functions bypass RLS when reading profiles for policy checks.
CREATE OR REPLACE FUNCTION public.is_platform_admin()
RETURNS boolean
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO public
SET row_security TO off
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.profiles
    WHERE id = auth.uid()
      AND role = 'platform_admin'::public.user_role
  );
$$;

CREATE OR REPLACE FUNCTION public.is_org_admin()
RETURNS boolean
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO public
SET row_security TO off
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.profiles
    WHERE id = auth.uid()
      AND role = 'org_admin'::public.user_role
      AND org_id IS NOT NULL
  );
$$;

CREATE OR REPLACE FUNCTION public.current_user_org_id()
RETURNS uuid
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path TO public
SET row_security TO off
AS $$
  SELECT org_id FROM public.profiles WHERE id = auth.uid();
$$;

GRANT EXECUTE ON FUNCTION public.is_platform_admin() TO authenticated, anon;
GRANT EXECUTE ON FUNCTION public.is_org_admin() TO authenticated, anon;
GRANT EXECUTE ON FUNCTION public.current_user_org_id() TO authenticated, anon;
