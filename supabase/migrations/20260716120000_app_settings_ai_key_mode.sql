-- Singleton key/value settings (AI key policy, etc.)
CREATE TABLE IF NOT EXISTS public.app_settings (
  key text PRIMARY KEY,
  value jsonb NOT NULL DEFAULT '{}'::jsonb,
  updated_at timestamptz NOT NULL DEFAULT now(),
  updated_by uuid REFERENCES public.profiles(id) ON DELETE SET NULL
);

COMMENT ON TABLE public.app_settings IS
  'Platform singleton settings. Never store API key material here — only policy/mode JSON.';

ALTER TABLE public.app_settings ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Authenticated read app_settings" ON public.app_settings;
CREATE POLICY "Authenticated read app_settings"
  ON public.app_settings
  FOR SELECT
  TO authenticated
  USING (true);

DROP POLICY IF EXISTS "Platform admins insert app_settings" ON public.app_settings;
CREATE POLICY "Platform admins insert app_settings"
  ON public.app_settings
  FOR INSERT
  TO authenticated
  WITH CHECK (public.is_platform_admin());

DROP POLICY IF EXISTS "Platform admins update app_settings" ON public.app_settings;
CREATE POLICY "Platform admins update app_settings"
  ON public.app_settings
  FOR UPDATE
  TO authenticated
  USING (public.is_platform_admin())
  WITH CHECK (public.is_platform_admin());

DROP POLICY IF EXISTS "Platform admins delete app_settings" ON public.app_settings;
CREATE POLICY "Platform admins delete app_settings"
  ON public.app_settings
  FOR DELETE
  TO authenticated
  USING (public.is_platform_admin());

GRANT SELECT ON public.app_settings TO authenticated;
GRANT ALL ON public.app_settings TO service_role;

INSERT INTO public.app_settings (key, value)
VALUES ('ai_key_mode', '{"mode":"personal"}'::jsonb)
ON CONFLICT (key) DO NOTHING;
