INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('427bcd37-9c74-4afc-ad00-d5a065ea5fe8', 'The student wants to emphasize how much energy recycling a can saves. Which choice most effectively uses information from the notes to accomplish this goal?', 'Recycling Aluminum Cans
- Aluminum cans can be recycled and used again.
- Recycling a can uses about 95 percent less energy than making a new one.
- A recycled can can be back on a store shelf within 60 days.
- Americans use billions of aluminum cans each year.', NULL, '[{"id":"A","text":"Recycling an aluminum can uses about 95 percent less energy than making a new one.","is_correct":true,"explanation":"Correct: it cites the 95 percent energy savings, directly emphasizing the energy saved."},{"id":"B","text":"A recycled aluminum can can be back on a store shelf within 60 days.","is_correct":false,"explanation":"True but off-goal: it stresses speed of reuse, not energy savings."},{"id":"C","text":"Americans use billions of aluminum cans every year.","is_correct":false,"explanation":"True but irrelevant: it describes usage volume, not energy savings."},{"id":"D","text":"Aluminum cans can be recycled and used again and again.","is_correct":false,"explanation":"True but vague: it notes reuse generally without the energy figure."}]'::jsonb, 'A', 'Step 1 — Find the energy clue
The notes say recycling {{yellow:uses about 95 percent less energy than making a new one}}.
Step 2 — Match the goal
Choice A reports the 95 percent energy savings, directly emphasizing how much energy is saved.
Distractor analysis:
- B: Focuses on the 60-day turnaround, not energy.
- C: Cites how many cans are used, not energy savings.
- D: Notes reuse generally but omits the energy figure.', 'Look for the choice with the percentage of energy saved.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;