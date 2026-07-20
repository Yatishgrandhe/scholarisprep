INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5c6249bd-92d2-4105-9db1-5efb479d46e9', 'Which choice completes the text with the most logical and precise word or phrase?', 'Bees communicate the location of flowers through a special movement called the waggle dance. By moving in a figure-eight pattern and shaking their bodies, a returning bee tells the others exactly where to find food. The direction and length of the dance ______ the angle and distance to the flowers, allowing the hive to gather nectar efficiently.', NULL, '[{"id":"A","text":"hide","is_correct":false,"explanation":"Reverse: the dance reveals information rather than hiding it."},{"id":"B","text":"indicate","is_correct":true,"explanation":"Correct: a dance that tells others where food is indicates the angle and distance."},{"id":"C","text":"taste","is_correct":false,"explanation":"No evidence: the dance conveys directions, not flavor."},{"id":"D","text":"delay","is_correct":false,"explanation":"No evidence: the dance speeds gathering; it does not cause delay."}]'::jsonb, 'B', 'Step 1 — Find the clue
The text says the bee {{yellow:tells the others exactly where to find food}}.
Step 2 — Match the word
If the dance tells others exactly where to go, its direction and length indicate the angle and distance.
Distractor analysis:
- A: ''Hide'' reverses the clue; the dance reveals, not conceals.
- C: ''Taste'' is unsupported and unrelated to direction.
- D: ''Delay'' contradicts the efficient gathering the dance enables.', 'The dance tells the other bees where the flowers are.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
