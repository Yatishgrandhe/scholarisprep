-- Diagnostic RPCs require authentication (start_diagnostic_session checks auth.uid()).
revoke execute on function public.draw_diagnostic_question_ids(text, public.exam_type)
  from anon, public;
revoke execute on function public.start_diagnostic_session(text, public.exam_type)
  from anon, public;
revoke execute on function public.question_stimulus(uuid) from anon, public;
