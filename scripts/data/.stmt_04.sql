INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b4f77a7f-2bf6-4c1f-8ebe-e7061f93267a', 'Which choice completes the text with the most logical and precise word or phrase?', 'The factory''s new machine works at a ______ pace, finishing in one hour what once took an entire day. Managers were amazed at how quickly the orders were completed and shipped.', NULL, '[{"id":"A","text":"rapid","is_correct":true,"explanation":"Correct: the machine does in one hour what took a day, and managers note how ''quickly'' it works."},{"id":"B","text":"steady","is_correct":false,"explanation":"Incorrect: too narrow; it stresses consistency, not the speed the text emphasizes."},{"id":"C","text":"slow","is_correct":false,"explanation":"Incorrect: this reverses the meaning of working quickly."},{"id":"D","text":"costly","is_correct":false,"explanation":"Incorrect: price is never mentioned in the passage."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text says managers were amazed at how {{yellow:quickly the orders were completed and shipped}}.
Step 2 — Match the word
Work done so quickly that an hour replaces a day is best called ''rapid.''
Distractor analysis:
- B: ''steady'' emphasizes consistency, missing the speed the text highlights.
- C: ''slow'' contradicts the quick completion.
- D: ''costly'' concerns price, which the passage never raises.', 'The passage stresses how ''quickly'' the work is done.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
