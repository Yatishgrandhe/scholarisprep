INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('75bafe5d-e44f-452c-9215-c57ce6143cd6', 'The student wants to emphasize the enormous size of the Great Barrier Reef. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Great Barrier Reef
- The Great Barrier Reef lies off the coast of Australia.
- It stretches more than 1,400 miles.
- It is the largest coral reef system in the world.
- It can be seen from space.', NULL, '[{"id":"A","text":"The Great Barrier Reef lies off the coast of Australia.","is_correct":false,"explanation":"True but off-goal: it gives location, not size."},{"id":"B","text":"The Great Barrier Reef, the largest coral reef system in the world, stretches more than 1,400 miles.","is_correct":true,"explanation":"Correct: it names it as the largest reef system and gives its 1,400-mile length, emphasizing size."},{"id":"C","text":"The Great Barrier Reef can be seen from space.","is_correct":false,"explanation":"Suggestive but indirect: it implies size without stating the reef''s extent in the way the goal requires."},{"id":"D","text":"The Great Barrier Reef is made up of coral off Australia''s coast.","is_correct":false,"explanation":"True but off-goal: it describes composition and location, not size."}]'::jsonb, 'B', 'Step 1 — Find the size clue
The notes say the reef {{yellow:stretches more than 1,400 miles}} and is the largest reef system.
Step 2 — Match the goal
Choice B combines the largest-in-the-world status with the 1,400-mile length, directly emphasizing its enormous size.
Distractor analysis:
- A: States location, not size.
- C: Hints at size but gives no measurement of extent.
- D: Describes composition and location, not size.', 'Find the choice that gives the reef''s length and ranking by size.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;