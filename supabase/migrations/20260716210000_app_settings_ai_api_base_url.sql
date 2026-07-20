-- Platform AI API base URL for central/shared key (FreeModel / OpenAI-compatible).
-- Personal BYO keys continue to use Mistral cloud; this setting applies only when
-- serving requests with the platform key from app_secrets.
INSERT INTO public.app_settings (key, value)
VALUES ('ai_api_base_url', '{"url":"https://cc.freemodel.dev"}'::jsonb)
ON CONFLICT (key) DO NOTHING;

COMMENT ON TABLE public.app_settings IS
  'Platform singleton settings. Never store API key material here — only policy/mode/URL JSON.';
