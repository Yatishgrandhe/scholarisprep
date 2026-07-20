INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('97f00d6f-f6ac-4787-8141-d0ddc681a301', 'The student wants to emphasize the agricultural importance of honeybees today. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Domestication of the Honeybee
- Honeybees have been kept by humans for at least 4,500 years.
- Ancient Egyptian tomb paintings show beekeepers tending hives.
- Bees pollinate roughly a third of the crops people eat today.
- Beekeepers harvest honey, beeswax, and royal jelly from managed hives.
- Many modern farms rent hives to ensure their fields are pollinated.', NULL, '[{"id":"A","text":"Honeybees have been kept by humans for at least 4,500 years, as ancient Egyptian tomb paintings show.","is_correct":false,"explanation":"True but off-goal: it emphasizes history, not present-day agricultural importance."},{"id":"B","text":"Because bees pollinate about a third of the crops people eat, many modern farms rent hives to ensure their fields are pollinated.","is_correct":true,"explanation":"Correct: it ties bees'' crop pollination to current farming practice, emphasizing today''s agricultural importance."},{"id":"C","text":"Beekeepers harvest honey, beeswax, and royal jelly from managed hives.","is_correct":false,"explanation":"True but off-goal: it lists hive products, not the bees'' importance to crop agriculture."},{"id":"D","text":"Ancient Egyptian tomb paintings show beekeepers tending hives.","is_correct":false,"explanation":"Too narrow and historical: it provides no information about present agricultural importance."}]'::jsonb, 'B', 'Step 1 — Find the agricultural link
The notes say bees {{yellow:pollinate roughly a third of the crops people eat today}} and that {{yellow:many modern farms rent hives to ensure their fields are pollinated}}.
Step 2 — Match the goal
Choice B combines these two present-day facts to stress how vital honeybees are to modern agriculture.
Distractor analysis:
- A: Focuses on history, not today''s importance.
- B is correct.
- C: Lists hive products, off the crop-importance goal.
- D: Purely historical detail.', 'You want today''s farming impact, so connect crop pollination with what modern farms now do.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;