-- Platform secrets (API keys). Never expose value to authenticated clients.
-- Mode/policy stays in app_settings; key material lives here only.
CREATE TABLE IF NOT EXISTS public.app_secrets (
  key text PRIMARY KEY,
  value text NOT NULL,
  hint text,
  updated_at timestamptz NOT NULL DEFAULT now(),
  updated_by uuid REFERENCES public.profiles(id) ON DELETE SET NULL
);

COMMENT ON TABLE public.app_secrets IS
  'Server-only secrets (e.g. shared Mistral API key). No authenticated SELECT — service_role only.';

ALTER TABLE public.app_secrets ENABLE ROW LEVEL SECURITY;

-- Explicitly revoke client roles; deny-by-default under RLS with no policies.
REVOKE ALL ON public.app_secrets FROM anon;
REVOKE ALL ON public.app_secrets FROM authenticated;
GRANT ALL ON public.app_secrets TO service_role;

-- Optional: platform_admin write policies (unused by app — admin API uses service_role).
-- Still no SELECT policy for authenticated, so clients cannot read value/hint via PostgREST.
DROP POLICY IF EXISTS "Platform admins insert app_secrets" ON public.app_secrets;
CREATE POLICY "Platform admins insert app_secrets"
  ON public.app_secrets
  FOR INSERT
  TO authenticated
  WITH CHECK (public.is_platform_admin());

DROP POLICY IF EXISTS "Platform admins update app_secrets" ON public.app_secrets;
CREATE POLICY "Platform admins update app_secrets"
  ON public.app_secrets
  FOR UPDATE
  TO authenticated
  USING (public.is_platform_admin())
  WITH CHECK (public.is_platform_admin());

DROP POLICY IF EXISTS "Platform admins delete app_secrets" ON public.app_secrets;
CREATE POLICY "Platform admins delete app_secrets"
  ON public.app_secrets
  FOR DELETE
  TO authenticated
  USING (public.is_platform_admin());
