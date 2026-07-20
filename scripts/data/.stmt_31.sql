INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f9389914-e884-452d-adb6-aedb8dbc13e3', 'Which choice completes the text with the most logical and precise word or phrase?', 'The science teacher wanted the room to be calm during the experiment. She asked the students to lower their voices and move slowly so nothing would spill. Soon the once-noisy classroom became ______, with everyone working silently and carefully at their stations.', NULL, '[{"id":"A","text":"quiet","is_correct":true,"explanation":"Correct: the text says everyone was ''working silently,'' which restates quiet."},{"id":"B","text":"loud","is_correct":false,"explanation":"Incorrect: loud contradicts students working silently after lowering their voices."},{"id":"C","text":"messy","is_correct":false,"explanation":"Incorrect: they moved carefully so nothing would spill, the opposite of messy."},{"id":"D","text":"crowded","is_correct":false,"explanation":"Incorrect: the number of people is not discussed; the change is about noise."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text describes everyone {{yellow:working silently and carefully at their stations}} after lowering their voices.
Step 2 — Match the word
A classroom where everyone works silently has become quiet.
Distractor analysis:
- B: ''loud'' contradicts the silent work described.
- C: ''messy'' is wrong; they worked carefully so nothing spilled.
- D: ''crowded'' addresses numbers, which the text never discusses.', 'Everyone was working silently after lowering their voices.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
