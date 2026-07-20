-- Platform AI model for central/shared key (FreeModel Claude Sonnet 4.6).
-- Personal BYO keys continue to use Mistral cloud (`mistral-small-2506`);
-- this setting applies only when serving requests with the platform key.
INSERT INTO public.app_settings (key, value)
VALUES ('ai_api_model', '{"model":"claude-sonnet-4-6"}'::jsonb)
ON CONFLICT (key) DO NOTHING;
