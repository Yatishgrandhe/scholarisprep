-- Tag existing platform / diagnostic questions for pool draws and math metadata.

update public.questions
set
  pool_key = coalesce(pool_key, 'onboarding_diagnostic_v1'),
  diagnostic_eligible = true
where generation_seed = 'onboarding_diagnostic_v1';

update public.questions
set subject = 'math',
    math_domain = case topic
      when 'Algebra' then 'algebra'
      when 'Geometry' then 'geometry_trig'
      when 'Problem Solving' then 'problem_solving_data'
      else coalesce(math_domain, 'algebra')
    end
where generation_seed = 'onboarding_diagnostic_v1'
  and (section ilike '%math%' or section = 'math');

update public.questions
set subject = 'reading_writing'
where generation_seed = 'onboarding_diagnostic_v1'
  and subject is null;

update public.questions
set diagnostic_eligible = true,
    pool_key = coalesce(pool_key, 'platform_sat_v1')
where is_platform_question = true
  and diagnostic_eligible = false;
