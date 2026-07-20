INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c5d20c1-5cbb-4c5c-a593-7204f8fdaa5e', 'Which choice completes the text with the most logical and precise word or phrase?', 'In the play, the merchant promises to pay back every coin he borrows. He keeps careful records and returns money exactly when he says he will. His neighbors trust him completely, describing him as an ______ man whose word can always be believed.', NULL, '[{"id":"A","text":"honest","is_correct":true,"explanation":"Correct: the text says his word can always be believed and he repays exactly, which means honest."},{"id":"B","text":"dishonest","is_correct":false,"explanation":"Incorrect: dishonest reverses the trust and reliable repayment described."},{"id":"C","text":"angry","is_correct":false,"explanation":"Incorrect: temper is not mentioned; the text is about trust and repayment."},{"id":"D","text":"wealthy","is_correct":false,"explanation":"Incorrect: wealth is not the point; neighbors trust his word, not his riches."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text says the merchant''s {{yellow:word can always be believed}} and he repays exactly as promised.
Step 2 — Match the word
A man whose word is always believed and who keeps his promises is honest.
Distractor analysis:
- B: ''dishonest'' reverses the meaning entirely.
- C: ''angry'' introduces a trait with no support.
- D: ''wealthy'' is irrelevant; trust comes from his word, not money.', 'His word can always be believed and he repays exactly.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
