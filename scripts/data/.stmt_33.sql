INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c1aa551b-b554-4376-bfe9-cf483df47c4e', 'Which choice completes the text with the most logical and precise word or phrase?', 'The young pianist practiced the same difficult passage every day for a year. Even when his fingers ached and progress felt slow, he refused to quit. His teacher praised his ______ effort, noting that he never gave up no matter how hard the piece became.', NULL, '[{"id":"A","text":"persistent","is_correct":true,"explanation":"Correct: the text says he ''never gave up'' and practiced every day, which means persistent."},{"id":"B","text":"careless","is_correct":false,"explanation":"Incorrect: careless contradicts daily practice and refusing to quit."},{"id":"C","text":"brief","is_correct":false,"explanation":"Incorrect: brief reverses the year of daily practice described."},{"id":"D","text":"selfish","is_correct":false,"explanation":"Incorrect: selfishness is not discussed; the praise is for not giving up."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text notes that the pianist {{yellow:never gave up no matter how hard the piece became}} and practiced every day.
Step 2 — Match the word
Effort that continues daily and never gives up is persistent.
Distractor analysis:
- B: ''careless'' contradicts steady, dedicated practice.
- C: ''brief'' reverses the year-long daily effort.
- D: ''selfish'' has no support in the text.', 'He never gave up and practiced the same passage every day for a year.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
