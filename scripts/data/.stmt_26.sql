INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7977393f-c7a6-4fc3-9cdd-76dac5f1e7e2', 'Which choice completes the text with the most logical and precise word or phrase?', 'After the long drought, the harvest was far smaller than usual. With so little grain to sell, the farming families had very little money. The region''s once-busy markets grew quiet as the ______ farmers could no longer afford the goods they had bought freely in better years.', NULL, '[{"id":"A","text":"poor","is_correct":true,"explanation":"Correct: the text says the families ''had very little money,'' which defines being poor."},{"id":"B","text":"wealthy","is_correct":false,"explanation":"Incorrect: wealthy reverses the meaning; the families had very little money."},{"id":"C","text":"lazy","is_correct":false,"explanation":"Incorrect: there is no evidence of laziness; the cause is a drought, not effort."},{"id":"D","text":"famous","is_correct":false,"explanation":"Incorrect: fame is never mentioned and does not connect to affording goods."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text states that after the small harvest the families {{yellow:had very little money}} and could no longer afford goods.
Step 2 — Match the word
Having very little money and being unable to afford things describes farmers who are poor.
Distractor analysis:
- B: ''wealthy'' is the reverse of having very little money.
- C: ''lazy'' has no support; the cause is drought, not effort.
- D: ''famous'' is irrelevant to affording goods.', 'The farmers had very little money and could not afford goods.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
