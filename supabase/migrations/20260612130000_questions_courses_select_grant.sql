-- Fix question bank zero counts: "Students read platform questions" RLS subquery
-- references public.courses, but anon/authenticated lacked SELECT on courses
-- (Postgres returns 42501 before RLS can short-circuit on is_platform_question).
-- courses already has RLS: "Anyone reads published courses" (status = published).

GRANT SELECT ON TABLE public.courses TO anon, authenticated;
