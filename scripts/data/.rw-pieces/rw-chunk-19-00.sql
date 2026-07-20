INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bfa8454c-65cb-486e-b233-3fab1c319981', 'The student wants to note a major honor Neruda received. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Poet Pablo Neruda
- Pablo Neruda was a poet from Chile born in 1904.
- He wrote many of his poems about everyday objects and nature.
- In 1971 he received the Nobel Prize in Literature.
- His collection Twenty Love Poems became widely read.', NULL, '[{"id":"A","text":"Pablo Neruda was a poet from Chile born in 1904.","is_correct":false,"explanation":"This gives origin and birth, not an honor."},{"id":"B","text":"He wrote many of his poems about everyday objects and nature.","is_correct":false,"explanation":"This describes his subjects, not an honor."},{"id":"C","text":"In 1971 he received the Nobel Prize in Literature.","is_correct":true,"explanation":"Receiving the Nobel Prize is a major honor."},{"id":"D","text":"His collection Twenty Love Poems became widely read.","is_correct":false,"explanation":"This describes popularity, not a formal honor."}]'::jsonb, 'C', 'Step 1 — Find the honor note
The goal is a major honor, and the notes state {{yellow:In 1971 he received the Nobel Prize in Literature}}.
Step 2 — Match the goal
Choice C uses that note to name a major honor Neruda received.
Distractor analysis:
- A: Gives his nationality and birth year, not an honor.
- B: Describes his poetic subjects, not an award.
- D: Notes a popular book, which is recognition but not a formal honor.', 'Look for the note that mentions a prize.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;