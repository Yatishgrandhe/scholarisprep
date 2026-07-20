INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('95502cb5-30fe-4129-a50e-ebff28f13a7b', 'Which choice completes the text with the most logical and precise word or phrase?', 'The new bridge design had to support heavy trucks crossing all day long. Earlier models had bent and sagged under such loads, but this one held firm without bending an inch. Engineers reported that the beams were remarkably ______, easily bearing weights that had broken the old design.', NULL, '[{"id":"A","text":"strong","is_correct":true,"explanation":"Correct: the text says the beams held firm and bore heavy weights without bending, which means strong."},{"id":"B","text":"weak","is_correct":false,"explanation":"Incorrect: weak contradicts beams that held firm under loads that broke the old design."},{"id":"C","text":"cheap","is_correct":false,"explanation":"Incorrect: cost is not discussed; the point is bearing heavy weight."},{"id":"D","text":"narrow","is_correct":false,"explanation":"Incorrect: width is not mentioned; the beams are described by how much weight they bear."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text says this design {{yellow:held firm without bending an inch}} and bore weights that broke the old one.
Step 2 — Match the word
Beams that hold firm and bear heavy loads without bending are strong.
Distractor analysis:
- B: ''weak'' contradicts holding firm under heavy loads.
- C: ''cheap'' addresses cost, which is never mentioned.
- D: ''narrow'' addresses width, not the load-bearing ability described.', 'The beams held firm and bore heavy weights without bending.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
