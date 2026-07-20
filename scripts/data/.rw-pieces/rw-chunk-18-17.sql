INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59932ca8-9f8e-4fbd-aced-4c39c238c1b3', 'The student wants to emphasize the durability of ancient Roman roads. Which choice most effectively uses information from the notes to accomplish this goal?', 'Ancient Roman Roads
- The Romans built a vast network of paved roads across their empire.
- Some Roman roads still exist today, more than 2,000 years later.
- The roads were built in layers to make them strong and long-lasting.
- They allowed armies and traders to move quickly between cities.
- The phrase "all roads lead to Rome" comes from this network.', NULL, '[{"id":"A","text":"The Romans built a vast network of paved roads across their empire.","is_correct":false,"explanation":"This describes the network''s size, not its durability over time."},{"id":"B","text":"Roman roads allowed armies and traders to move quickly between cities.","is_correct":false,"explanation":"This addresses speed of travel, not durability."},{"id":"C","text":"Some Roman roads still exist today, more than 2,000 years later.","is_correct":true,"explanation":"Correct: it shows the roads have lasted thousands of years, directly emphasizing durability."},{"id":"D","text":"The phrase \"all roads lead to Rome\" comes from this network.","is_correct":false,"explanation":"This explains the origin of a phrase, not the roads'' durability."}]'::jsonb, 'C', 'Step 1 — Find the durability detail
The notes state that {{yellow:Some Roman roads still exist today, more than 2,000 years later}}.
Step 2 — Match the goal
Choice C uses the roads'' survival across millennia to emphasize durability, fulfilling the goal.
Distractor analysis:
- A: Emphasizes size, not lasting strength.
- B: Emphasizes travel speed, not durability.
- D: Explains a saying, unrelated to durability.', 'Look for the note showing the roads have lasted thousands of years.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;