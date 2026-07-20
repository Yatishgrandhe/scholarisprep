INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('418ef69a-bc95-474f-9180-24529d3dc9a1', 'The student wants to emphasize what makes the monarchs'' migration unusual among traveling animals. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Migration of the Monarch Butterfly
- Each autumn, monarch butterflies in eastern North America fly south to central Mexico.
- The journey can cover up to 3,000 miles.
- No single butterfly completes the round trip; the return north spans several generations.
- Monarchs navigate partly using the position of the sun.
- Loss of milkweed, their only larval food, has reduced their numbers.', NULL, '[{"id":"A","text":"Each autumn, monarch butterflies in eastern North America fly south to central Mexico.","is_correct":false,"explanation":"Too narrow: many animals migrate seasonally, so this alone does not show what is unusual."},{"id":"B","text":"No single monarch completes the round trip; the return north spans several generations.","is_correct":true,"explanation":"Correct: it highlights the multigenerational round trip, a distinctly unusual feature of the migration."},{"id":"C","text":"Loss of milkweed, their only larval food, has reduced their numbers.","is_correct":false,"explanation":"True but off-goal: it concerns a threat to the species, not what makes the migration unusual."},{"id":"D","text":"Monarchs navigate partly using the position of the sun.","is_correct":false,"explanation":"True but off-goal: sun navigation is shared with other migrating animals, so it does not single out the monarchs."}]'::jsonb, 'B', 'Step 1 — Find the unusual trait
The notes say {{yellow:No single butterfly completes the round trip; the return north spans several generations}}.
Step 2 — Match the goal
Choice B emphasizes that the round trip takes multiple generations, an unusual feature compared with other migrating animals.
Distractor analysis:
- A: A common seasonal migration, not unusual.
- B is correct.
- C: Addresses population decline, not migration uniqueness.
- D: Sun navigation is shared with many species.', 'Unusual means the trait other migrators lack, so look for the multigenerational detail.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;