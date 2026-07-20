INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c111854b-dfed-4e42-99d3-bdf2469c2f07', 'The student wants to emphasize how the canal improved the speed of transportation. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Construction of the Erie Canal
- The Erie Canal, completed in 1825, connected the Hudson River to Lake Erie.
- Before the canal, transporting goods overland from Buffalo to New York City took weeks.
- After the canal opened, the same journey took only a few days.
- Shipping costs for goods fell by roughly 90 percent.
- The canal helped New York City become the nation''s busiest port.', NULL, '[{"id":"A","text":"The Erie Canal, completed in 1825, connected the Hudson River to Lake Erie.","is_correct":false,"explanation":"Too narrow: it gives the canal''s route and date but says nothing about transportation speed."},{"id":"B","text":"A journey from Buffalo to New York City that once took weeks took only a few days after the canal opened.","is_correct":true,"explanation":"Correct: it contrasts the pre-canal travel time with the post-canal time, directly emphasizing improved speed."},{"id":"C","text":"After the canal opened, shipping costs for goods fell by roughly 90 percent.","is_correct":false,"explanation":"True but off-goal: it addresses cost, not speed of transportation."},{"id":"D","text":"The canal helped New York City become the nation''s busiest port.","is_correct":false,"explanation":"True but irrelevant: it describes an economic outcome, not improvement in travel speed."}]'::jsonb, 'B', 'Step 1 — Locate the speed comparison
The notes state the trip once {{yellow:took weeks}} but afterward {{yellow:took only a few days}}.
Step 2 — Match the goal
Choice B pairs these two facts to show the canal made transportation faster, fulfilling the goal of emphasizing speed.
Distractor analysis:
- A: Gives route and date, not speed.
- C: Discusses cost reduction, a different measure.
- D: Describes a port outcome, not travel speed.', 'You need to contrast travel time before and after the canal, not cost or economic outcomes.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;