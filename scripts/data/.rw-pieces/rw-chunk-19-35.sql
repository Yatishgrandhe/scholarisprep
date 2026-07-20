INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('38db5253-9966-42fe-ad01-7cfd7999c7b0', 'The student wants to explain how Braille improved upon the military code. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Invention of Braille
- Louis Braille lost his sight in a childhood accident in early-nineteenth-century France.
- As a student, he learned of a military code using raised dots read by touch.
- The military code was too complex for quick reading.
- Braille simplified the system into a six-dot cell representing each letter.
- His system let blind readers read and write efficiently for the first time.', NULL, '[{"id":"A","text":"Louis Braille lost his sight in a childhood accident in early-nineteenth-century France.","is_correct":false,"explanation":"This gives biographical background, not the improvement on the code."},{"id":"B","text":"Because the military code was too complex for quick reading, Braille simplified it into a six-dot cell representing each letter.","is_correct":true,"explanation":"This contrasts the code''s complexity with Braille''s simpler six-dot cell, explaining the improvement."},{"id":"C","text":"As a student, Braille learned of a military code using raised dots read by touch.","is_correct":false,"explanation":"This states the source but not how he improved it."},{"id":"D","text":"Braille''s system let blind readers read and write efficiently for the first time.","is_correct":false,"explanation":"This describes the outcome but not the comparison to the military code."}]'::jsonb, 'B', 'Step 1 — Find the flaw and the fix
The notes state the military code {{yellow:was too complex for quick reading}} and that Braille {{yellow:simplified the system into a six-dot cell representing each letter}}.
Step 2 — Match the goal
Choice B contrasts the complex code with the simpler cell, showing the improvement.
Distractor analysis:
- A: Biographical background only.
- C: Names the source without the improvement.
- D: States the result, not the comparison.', 'The goal compares Braille''s system to the military code, so include both.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;