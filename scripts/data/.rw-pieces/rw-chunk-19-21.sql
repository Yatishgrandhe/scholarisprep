INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bf5fb898-db71-4fe7-96c3-3c16f5330a18', 'The student wants to explain why plays at the Globe were performed in the afternoon. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Globe Theatre
- The Globe Theatre was an open-air playhouse in London built in 1599.
- It was the main venue for many of William Shakespeare''s plays.
- The theater had no roof over the central yard where lower-paying audience members stood.
- Because performances relied on daylight, plays were staged in the afternoon.
- A fire destroyed the original Globe in 1613 during a performance.', NULL, '[{"id":"A","text":"The Globe Theatre, built in 1599, was the main venue for many of William Shakespeare''s plays.","is_correct":false,"explanation":"This describes the theater''s role but not the reason for afternoon performances."},{"id":"B","text":"A fire destroyed the original Globe in 1613 during a performance.","is_correct":false,"explanation":"This recounts the theater''s destruction, unrelated to the timing of performances."},{"id":"C","text":"Because the central yard had no roof and performances relied on daylight, plays at the Globe were staged in the afternoon.","is_correct":true,"explanation":"This links the roofless yard and reliance on daylight to the afternoon timing, explaining the reason."},{"id":"D","text":"Lower-paying audience members stood in the central yard of the Globe Theatre.","is_correct":false,"explanation":"This describes the audience arrangement, not the reason for afternoon performances."}]'::jsonb, 'C', 'Step 1 — Find the reason
The notes state that {{yellow:performances relied on daylight, plays were staged in the afternoon}}.
Step 2 — Match the goal
The student wants to explain why plays ran in the afternoon, so the correct choice must connect the lack of roof and daylight to the timing, which choice C does.
Distractor analysis:
- A: Gives the theater''s role, not the reason for timing.
- B: Recounts the fire, irrelevant to timing.
- D: Describes seating, not the reason for afternoon shows.', 'The reason connects the open roof and daylight to when plays were staged.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;