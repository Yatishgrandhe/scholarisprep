INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ea380483-fc93-4a6f-bcb4-a828cd00036b', 'The student wants to emphasize the great distance monarch butterflies travel during their fall migration. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Monarch Butterfly Migration
- Monarch butterflies travel up to 3,000 miles each fall.
- They migrate from Canada and the United States to central Mexico.
- No single butterfly completes the entire round trip.
- It takes several generations to finish the full migration cycle.
- Scientists are studying how monarchs navigate over such long distances.', NULL, '[{"id":"A","text":"Monarch butterflies travel up to 3,000 miles each fall during their migration.","is_correct":true,"explanation":"Correct: it directly states the 3,000-mile distance, emphasizing how far the butterflies travel."},{"id":"B","text":"Scientists are studying how monarchs navigate over long distances.","is_correct":false,"explanation":"This focuses on scientific study, not on emphasizing the distance traveled."},{"id":"C","text":"No single monarch butterfly completes the entire round trip.","is_correct":false,"explanation":"This addresses which butterfly finishes the trip, not the great distance itself."},{"id":"D","text":"Monarch butterflies migrate from Canada and the United States to central Mexico.","is_correct":false,"explanation":"This names the locations but does not emphasize the great distance with a measurement."}]'::jsonb, 'A', 'Step 1 — Find the distance detail
The notes state that {{yellow:Monarch butterflies travel up to 3,000 miles each fall}}.
Step 2 — Match the goal
Choice A uses that exact figure to emphasize the great distance, which is exactly the rhetorical goal.
Distractor analysis:
- B: True but irrelevant; it discusses navigation research, not distance.
- C: True but addresses who completes the trip, not the distance traveled.
- D: Names origin and destination but gives no measurement to emphasize great distance.', 'Look for the bullet that gives a specific number of miles.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;