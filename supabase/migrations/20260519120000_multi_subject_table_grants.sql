-- Multi-subject tables had RLS but no role grants (Postgres returns 403 before RLS).
GRANT SELECT ON TABLE public.subject_registry TO anon, authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.user_active_subjects TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.multi_subject_study_plans TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.subject_diagnostic_results TO authenticated;
