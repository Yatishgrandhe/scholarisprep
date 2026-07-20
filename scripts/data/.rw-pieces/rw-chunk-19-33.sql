INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6fcf614f-d98a-4097-ba5d-d8edeab88f47', 'The student wants to explain how horse domestication increased human mobility. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Domestication of the Horse
- Horses were first domesticated on the grasslands of Central Asia thousands of years ago.
- Early domesticated horses were smaller than many modern breeds.
- Domestication allowed people to travel farther and faster than on foot.
- Horses also let herders manage larger flocks across wide territories.
- This mobility transformed trade and warfare among early societies.', NULL, '[{"id":"A","text":"Horses were first domesticated on the grasslands of Central Asia thousands of years ago.","is_correct":false,"explanation":"This gives the location and timing, not the mobility effect."},{"id":"B","text":"Early domesticated horses were smaller than many modern breeds.","is_correct":false,"explanation":"This describes size, irrelevant to mobility."},{"id":"C","text":"By domesticating horses, people could travel farther and faster than on foot and manage larger flocks across wide territories.","is_correct":true,"explanation":"This combines two mobility benefits to explain how domestication increased mobility."},{"id":"D","text":"This new mobility transformed trade and warfare among early societies.","is_correct":false,"explanation":"This states a consequence of mobility rather than how domestication increased it."}]'::jsonb, 'C', 'Step 1 — Find the mobility gains
The notes say domestication allowed people to {{yellow:travel farther and faster than on foot}} and to {{yellow:manage larger flocks across wide territories}}.
Step 2 — Match the goal
Choice C synthesizes both to explain increased mobility.
Distractor analysis:
- A: Location and timing, not mobility.
- B: Size detail, irrelevant.
- D: A downstream consequence, not how mobility increased.', 'The goal is how mobility increased, so look for travel and range benefits.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;