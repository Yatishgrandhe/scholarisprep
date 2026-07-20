-- AI keys moved to per-user browser localStorage; the server/DB no longer
-- stores any API key. Drop the column to clear all existing keys.
alter table public.user_ai_settings drop column if exists openrouter_api_key;
