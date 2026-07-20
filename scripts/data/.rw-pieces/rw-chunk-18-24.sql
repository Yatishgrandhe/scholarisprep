INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a4c5a5f-d47b-460c-b84a-01363d142c0d', 'The student wants to emphasize the great distance the monarchs travel. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Monarch Butterfly Migration
- Monarch butterflies travel up to 3,000 miles each fall.
- They fly from Canada and the northern United States to central Mexico.
- They spend the winter in oyamel fir forests.
- No single butterfly completes the entire round trip.', NULL, '[{"id":"A","text":"Monarch butterflies travel up to 3,000 miles each fall, flying from Canada and the northern United States to central Mexico.","is_correct":true,"explanation":"Correct: it foregrounds the 3,000-mile distance, directly emphasizing how far the monarchs travel."},{"id":"B","text":"Monarch butterflies spend the winter in oyamel fir forests in central Mexico.","is_correct":false,"explanation":"True but irrelevant: it describes where they winter, not the distance traveled."},{"id":"C","text":"No single monarch butterfly completes the entire round trip of the migration.","is_correct":false,"explanation":"True but off-goal: it stresses individual butterflies'' limits, not the distance covered."},{"id":"D","text":"Monarch butterflies travel each fall to spend the winter in fir forests.","is_correct":false,"explanation":"Too vague: it omits the specific 3,000-mile figure needed to emphasize distance."}]'::jsonb, 'A', 'Step 1 — Find the distance clue
The notes state monarchs {{yellow:travel up to 3,000 miles each fall}}.
Step 2 — Match the goal
Choice A names the 3,000-mile figure and the Canada-to-Mexico route, directly emphasizing how far they travel.
Distractor analysis:
- B: True but focuses on the wintering location, not distance.
- C: True but emphasizes that no single butterfly finishes, not the distance.
- D: Omits the specific mileage, so it fails to emphasize the great distance.', 'Look for the choice that includes the specific number of miles traveled.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;