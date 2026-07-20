-- ============================================================
-- Compress database: drop unused backup tables + IB cleanup
-- ============================================================
-- Executed via Supabase Management API on 2026-07-19.
-- Result: 500 MB -> 348 MB (30% reduction)
--
-- Actions taken:
-- 1. Dropped 23 questions_*_backup_* tables (~56 MB)
-- 2. Deleted 14,380 questions for removed IB courses
-- 3. VACUUM FULL on questions + 6 other tables
-- 4. ANALYZE to refresh query planner statistics
--
-- To check current DB size:
--   SELECT pg_size_pretty(sum(pg_total_relation_size(schemaname || '.' || tablename)))
--   FROM pg_tables WHERE schemaname = 'public';
-- ============================================================

DROP TABLE IF EXISTS public.questions_5opt_backup_20260630;
DROP TABLE IF EXISTS public.questions_arerecipe_backup_20260630;
DROP TABLE IF EXISTS public.questions_arevol_backup_20260630;
DROP TABLE IF EXISTS public.questions_coe_backup_20260623;
DROP TABLE IF EXISTS public.questions_ling_backup_20260630;
DROP TABLE IF EXISTS public.questions_lintable_backup_20260630;
DROP TABLE IF EXISTS public.questions_math_backup_20260614;
DROP TABLE IF EXISTS public.questions_math_backup_20260630;
DROP TABLE IF EXISTS public.questions_math_fix_backup_20260630;
DROP TABLE IF EXISTS public.questions_nrm_backup_20260630;
DROP TABLE IF EXISTS public.questions_english_backup_20260625;
DROP TABLE IF EXISTS public.questions_incontext_backup_20260623;
DROP TABLE IF EXISTS public.questions_coe_backup_20260624;
DROP TABLE IF EXISTS public.questions_gridexpl_backup_20260630;
DROP TABLE IF EXISTS public.questions_syn_backup_20260624;
DROP TABLE IF EXISTS public.questions_syn_lenfix_backup_20260624;
DROP TABLE IF EXISTS public.questions_tva_backup_20260630;
DROP TABLE IF EXISTS public.questions_iee_backup_20260630;
DROP TABLE IF EXISTS public.questions_oia_backup_20260630;
DROP TABLE IF EXISTS public.questions_rig_backup_20260630;
DROP TABLE IF EXISTS public.questions_protable_backup_20260630;
DROP TABLE IF EXISTS public.questions_geo_backup_20260630;
DROP TABLE IF EXISTS public.questions_rat_backup_20260630;

DELETE FROM public.questions
WHERE exam_type IN (
  'IB_DIGITAL_SOCIETY_SL',
  'IB_DIGITAL_SOCIETY_HL',
  'IB_VISUAL_ARTS_SL',
  'IB_VISUAL_ARTS_HL',
  'IB_MUSIC_SL',
  'IB_MUSIC_HL',
  'IB_THEATRE_SL',
  'IB_THEATRE_HL',
  'IB_FILM_SL',
  'IB_FILM_HL',
  'IB_DANCE_SL',
  'IB_DANCE_HL',
  'IB_TOK',
  'IB_EE'
);
