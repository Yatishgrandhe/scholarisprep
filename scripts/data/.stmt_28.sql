INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21d88fb7-c3be-4b65-9c57-ec82278291ed', 'Which choice completes the text with the most logical and precise word or phrase?', 'The desert traveler had walked for hours without water. By midday his lips had cracked and his throat felt dry as sand. When he finally reached the oasis, he drank deeply, for he was desperately ______ after the long, hot journey.', NULL, '[{"id":"A","text":"thirsty","is_correct":true,"explanation":"Correct: the text describes a dry throat and walking for hours without water, which means thirsty."},{"id":"B","text":"sleepy","is_correct":false,"explanation":"Incorrect: sleepiness is not described; the details are about lack of water."},{"id":"C","text":"bored","is_correct":false,"explanation":"Incorrect: boredom is unrelated to the dry throat and drinking deeply."},{"id":"D","text":"satisfied","is_correct":false,"explanation":"Incorrect: satisfied reverses the need that drives him to drink deeply."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text says he walked without water and his {{yellow:throat felt dry as sand}}, then drank deeply.
Step 2 — Match the word
A dry throat after hours without water and drinking deeply describes being thirsty.
Distractor analysis:
- B: ''sleepy'' has no support; the details concern water, not rest.
- C: ''bored'' is irrelevant to the physical thirst described.
- D: ''satisfied'' reverses his need to drink.', 'His throat was dry as sand and he had no water for hours.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
