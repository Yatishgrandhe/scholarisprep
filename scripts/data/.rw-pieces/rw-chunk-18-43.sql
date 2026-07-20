INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fa13f8f4-34f5-41f1-b191-5b92536f894b', 'The student wants to explain how honeybees help farmers grow food. Which choice most effectively uses information from the notes to accomplish this goal?', 'Honeybees and Pollination
- Honeybees collect nectar from flowers to make honey.
- As they move between flowers, they carry pollen.
- This pollination helps many crops produce fruit.
- A single hive can contain tens of thousands of bees.', NULL, '[{"id":"A","text":"Honeybees collect nectar from flowers to make honey.","is_correct":false,"explanation":"This describes honey-making, not helping crops."},{"id":"B","text":"As they move between flowers, they carry pollen, and this pollination helps many crops produce fruit.","is_correct":true,"explanation":"This links pollination to crops producing fruit, helping farmers."},{"id":"C","text":"A single hive can contain tens of thousands of bees.","is_correct":false,"explanation":"This describes hive size, not help to farmers."},{"id":"D","text":"Honeybees collect nectar and live in large hives.","is_correct":false,"explanation":"This combines nectar and hive facts but does not mention crops."}]'::jsonb, 'B', 'Step 1 — Find the crop note
The goal is how bees help farmers, and the notes state pollination {{yellow:helps many crops produce fruit}}.
Step 2 — Match the goal
Choice B connects the bees carrying pollen to crops producing fruit, showing the help to farmers.
Distractor analysis:
- A: Describes making honey, not helping crops.
- C: Gives hive size, unrelated to growing food.
- D: Combines two facts but never mentions crops or farming.', 'Look for the note that connects pollen to crops.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;