-- RLS policies existed but several tables lacked role privileges.
GRANT SELECT ON TABLE public.achievements TO anon, authenticated;
GRANT SELECT ON TABLE public.user_achievements TO authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.study_plans TO authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.exam_sessions TO authenticated;
GRANT SELECT, INSERT, UPDATE ON TABLE public.question_attempts TO authenticated;
GRANT SELECT, INSERT, UPDATE ON TABLE public.questions TO authenticated;
GRANT SELECT, INSERT, UPDATE ON TABLE public.profiles TO authenticated;
GRANT SELECT, INSERT ON TABLE public.diagnostic_results TO authenticated;
