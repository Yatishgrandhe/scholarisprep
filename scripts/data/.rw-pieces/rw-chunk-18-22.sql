INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f567949-cf53-4bd1-b381-633ee4f1d162', 'The student wants to explain why honeybees are important to food crops. Which choice most effectively uses information from the notes to accomplish this goal?', 'Honeybees and Pollination
- Honeybees gather nectar from flowers to make honey.
- As they move between flowers, they carry pollen on their bodies.
- This pollen helps many plants produce fruits and seeds.
- A large share of the crops people eat depend on bee pollination.
- Farmers sometimes rent hives to pollinate their fields.', NULL, '[{"id":"A","text":"Honeybees gather nectar from flowers to make honey.","is_correct":false,"explanation":"This explains honey making, not the bees'' importance to food crops."},{"id":"B","text":"A large share of the crops people eat depend on bee pollination.","is_correct":true,"explanation":"Correct: it states that many food crops rely on bee pollination, explaining the bees'' importance."},{"id":"C","text":"Farmers sometimes rent hives to pollinate their fields.","is_correct":false,"explanation":"This describes a farming practice, not why bees are important to crops."},{"id":"D","text":"As honeybees move between flowers, they carry pollen on their bodies.","is_correct":false,"explanation":"This describes how bees move pollen, not their importance to food crops."}]'::jsonb, 'B', 'Step 1 — Find the importance to crops
The notes state that {{yellow:A large share of the crops people eat depend on bee pollination}}.
Step 2 — Match the goal
Choice B uses that note to explain why honeybees matter to food crops, fulfilling the goal.
Distractor analysis:
- A: Explains honey making, not crop importance.
- C: Describes a practice, not the underlying importance.
- D: Describes the mechanism of carrying pollen, not the importance to crops.', 'Find the note linking the crops people eat to bee pollination.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;