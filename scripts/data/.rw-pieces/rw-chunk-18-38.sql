INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('92463a31-a9d8-430e-8894-102ca1c2be3a', 'The student wants to highlight the importance of reefs to ocean life. Which choice most effectively uses information from the notes to accomplish this goal?', 'Coral Reefs
- Coral reefs are underwater structures built by tiny animals called coral polyps.
- Reefs are home to about one quarter of all ocean species.
- The Great Barrier Reef lies off the coast of Australia.
- Many reefs are found in warm, shallow waters.', NULL, '[{"id":"A","text":"Reefs are home to about one quarter of all ocean species.","is_correct":true,"explanation":"This shows reefs support a large share of ocean life."},{"id":"B","text":"The Great Barrier Reef lies off the coast of Australia.","is_correct":false,"explanation":"This gives a location, not importance to ocean life."},{"id":"C","text":"Many reefs are found in warm, shallow waters.","is_correct":false,"explanation":"This describes where reefs grow, not their importance to life."},{"id":"D","text":"Coral reefs are underwater structures built by tiny animals called coral polyps.","is_correct":false,"explanation":"This defines reefs but does not show their importance to ocean life."}]'::jsonb, 'A', 'Step 1 — Find the importance clue
The goal is reefs'' importance to ocean life, and the notes state reefs are {{yellow:home to about one quarter of all ocean species}}.
Step 2 — Match the goal
Choice A uses that fact to show how many ocean species depend on reefs.
Distractor analysis:
- B: Gives the location of one reef, not importance to life.
- C: Describes the water where reefs grow, not their value to life.
- D: Defines what reefs are but not why they matter to ocean life.', 'Look for the note about how many ocean species live in reefs.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;