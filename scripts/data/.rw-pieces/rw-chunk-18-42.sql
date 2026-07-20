INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b00cb256-bd8b-4baf-b307-be53de7ca99e', 'The student wants to emphasize a historic milestone in Price''s career. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Composer Florence Price
- Florence Price was an American composer born in 1887.
- In 1933 her symphony was performed by the Chicago Symphony Orchestra.
- She was the first Black woman to have a symphony played by a major U.S. orchestra.
- She wrote more than 300 musical works during her life.', NULL, '[{"id":"A","text":"Florence Price was an American composer born in 1887.","is_correct":false,"explanation":"This gives birth information, not a milestone."},{"id":"B","text":"She wrote more than 300 musical works during her life.","is_correct":false,"explanation":"This shows productivity, not a historic milestone."},{"id":"C","text":"She was the first Black woman to have a symphony played by a major U.S. orchestra.","is_correct":true,"explanation":"Being the first to achieve this is a historic milestone."},{"id":"D","text":"In 1933 her symphony was performed in Chicago.","is_correct":false,"explanation":"This notes a performance but omits the ''first'' that makes it historic."}]'::jsonb, 'C', 'Step 1 — Find the milestone note
The goal is a historic milestone, and the notes state she was {{yellow:the first Black woman to have a symphony played by a major U.S. orchestra}}.
Step 2 — Match the goal
Choice C uses the word ''first'' to mark a true historic milestone.
Distractor analysis:
- A: States her birth year, not an achievement.
- B: Counts her works, showing productivity rather than a milestone.
- D: Notes a performance but drops the ''first,'' so it does not convey a milestone.', 'Look for the note that uses the word ''first.''', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;