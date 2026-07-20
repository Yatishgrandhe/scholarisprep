INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c7905413-6602-463d-8668-15e7fdae3d0d', 'Which choice completes the text with the most logical and precise word or phrase?', 'Desert plants must survive on very little water, so many species store moisture in thick stems. Because rainfall is so ______ in these regions, the plants have evolved to use every drop, swelling after a storm and slowly drawing on the reserve during the long dry months.', NULL, '[{"id":"A","text":"abundant","is_correct":false,"explanation":"Incorrect: this reverses the meaning, since water is described as very little."},{"id":"B","text":"scarce","is_correct":true,"explanation":"Correct: the text says plants survive on ''very little water,'' so rainfall is scarce."},{"id":"C","text":"colorful","is_correct":false,"explanation":"Incorrect: rainfall is not described by appearance, so this is irrelevant."},{"id":"D","text":"loud","is_correct":false,"explanation":"Incorrect: sound is never discussed in the passage."}]'::jsonb, 'B', 'Step 1 — Find the clue
The passage opens by saying desert plants must survive on {{yellow:very little water}}.
Step 2 — Match the word
If there is very little water, then rainfall must be ''scarce,'' which fits the dry conditions described.
Distractor analysis:
- A: ''abundant'' contradicts the idea of very little water.
- C: ''colorful'' describes appearance, which is irrelevant to rainfall amount.
- D: ''loud'' refers to sound, an idea never raised.', 'The first sentence tells you how much water there is.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
