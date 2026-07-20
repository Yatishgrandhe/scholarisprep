-- ============================================================
-- Drop leftover questions_expmodel_backup_20260630
-- ============================================================
-- Companion to 20260719020000_compress_database_drop_backups.sql
-- (that pass dropped 23 backups; this one remained).
-- Table had RLS disabled (~47 rows / ~136 KB) — shrink + security fix.
-- After apply: run VACUUM ANALYZE via execute_sql (not in this migration;
-- VACUUM cannot run inside a transaction block).
-- ============================================================

DROP TABLE IF EXISTS public.questions_expmodel_backup_20260630;
