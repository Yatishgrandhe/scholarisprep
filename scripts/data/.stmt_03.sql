INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4fd2ed52-caf2-4829-90da-07cf47a037b5', 'Which choice completes the text with the most logical and precise word or phrase?', 'After weeks of failed experiments, the chemist felt ______ and nearly quit. Yet she reminded herself that even small setbacks were part of discovery, and the next morning she returned to the lab with renewed energy.', NULL, '[{"id":"A","text":"excited","is_correct":false,"explanation":"Incorrect: this contradicts the fact that she nearly quit."},{"id":"B","text":"disheartened","is_correct":true,"explanation":"Correct: after failed experiments she nearly quit, showing she lost heart."},{"id":"C","text":"confused","is_correct":false,"explanation":"Incorrect: the text describes failure, not a lack of understanding."},{"id":"D","text":"curious","is_correct":false,"explanation":"Incorrect: this describes interest, not the low feeling shown by nearly quitting."}]'::jsonb, 'B', 'Step 1 — Find the clue
The text says that after weeks of failed experiments she {{yellow:nearly quit}}.
Step 2 — Match the word
Someone who nearly quits after repeated failure feels ''disheartened,'' the loss of spirit.
Distractor analysis:
- A: ''excited'' contradicts her wanting to quit.
- C: ''confused'' implies misunderstanding, not the discouragement shown.
- D: ''curious'' describes interest, the opposite of nearly quitting.', 'She ''nearly quit'' after the failures.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
