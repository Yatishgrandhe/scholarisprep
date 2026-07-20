INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4af87239-6002-4ed8-a510-a6ce0c03e99d', 'Which choice completes the text with the most logical and precise word or phrase?', 'The new student was ______ at first, speaking only when called on and keeping to the back of the room. After a few weeks, though, she grew comfortable and began raising her hand eagerly in every class.', NULL, '[{"id":"A","text":"shy","is_correct":true,"explanation":"Correct: she spoke only when called on and kept to the back, then later became eager."},{"id":"B","text":"bold","is_correct":false,"explanation":"Incorrect: this contradicts her speaking only when called on."},{"id":"C","text":"angry","is_correct":false,"explanation":"Incorrect: no irritation is described, only quietness."},{"id":"D","text":"clever","is_correct":false,"explanation":"Incorrect: her intelligence is never discussed in the passage."}]'::jsonb, 'A', 'Step 1 — Find the clue
At first she was {{yellow:speaking only when called on and keeping to the back of the room}}.
Step 2 — Match the word
Keeping quiet and to the back, before later growing comfortable, marks her as ''shy.''
Distractor analysis:
- B: ''bold'' contradicts her quiet beginning and the later contrast.
- C: ''angry'' has no support; she is quiet, not upset.
- D: ''clever'' concerns intelligence, which is never mentioned.', 'She ''kept to the back'' and spoke only when called on.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
