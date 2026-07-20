-- Scholaris foundation (applied via Supabase MCP to project aioyzumxxsepbnfivvdd)
-- Extensions, enums, helpers, admin RLS, storage buckets

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;
CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA extensions;
CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;

-- See remote migrations: enable_extensions, create_enums, foundation_helpers_and_triggers,
-- foundation_admin_rls_policies, storage_buckets_and_policies
