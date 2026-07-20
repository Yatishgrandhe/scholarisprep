INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcac4d48-65f5-4227-8d3a-9e21ae71f023', 'The student wants to explain why honeybees are important to crops. Which choice most effectively uses information from the notes to accomplish this goal?', 'Honeybees and Pollination
- Honeybees move pollen from flower to flower as they gather nectar.
- This process, called pollination, helps plants make seeds and fruit.
- Many crops depend on honeybees for pollination.
- A single hive can hold tens of thousands of bees.', NULL, '[{"id":"A","text":"A single honeybee hive can hold tens of thousands of bees.","is_correct":false,"explanation":"True but irrelevant: it describes hive size, not the bees'' importance to crops."},{"id":"B","text":"Honeybees move pollen from flower to flower as they gather nectar.","is_correct":false,"explanation":"True but off-goal: it describes the action without linking it to crops'' dependence."},{"id":"C","text":"Many crops depend on honeybees for pollination, which helps plants make seeds and fruit.","is_correct":true,"explanation":"Correct: it states that crops depend on bee pollination to make seeds and fruit, explaining their importance."},{"id":"D","text":"Pollination is the process of moving pollen from one flower to another.","is_correct":false,"explanation":"True but off-goal: it defines pollination without showing why bees matter to crops."}]'::jsonb, 'C', 'Step 1 — Find the importance clue
The notes say {{yellow:Many crops depend on honeybees for pollination}}.
Step 2 — Match the goal
Choice C links crops'' dependence on bee pollination to making seeds and fruit, explaining why honeybees are important to crops.
Distractor analysis:
- A: Describes hive size, not crop importance.
- B: Describes the pollen-moving action without the crop link.
- D: Defines pollination but omits why bees matter to crops.', 'Find the choice that says crops rely on bees.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;