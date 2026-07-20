INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0eb353a7-5c3a-433b-8180-1e5461051d45', 'As used in the text, the word "modest" most nearly means', 'The recipe calls for only a ______ amount of salt, just a single pinch, because too much would overpower the delicate flavor of the soup. The chef warned that even a little extra could ruin the entire dish.', NULL, '[{"id":"A","text":"small","is_correct":true,"explanation":"Correct: the text defines it as ''just a single pinch,'' a tiny amount."},{"id":"B","text":"generous","is_correct":false,"explanation":"Incorrect: this reverses the meaning, since too much would ruin the soup."},{"id":"C","text":"humble","is_correct":false,"explanation":"Incorrect: this is a meaning of ''modest'' but does not fit describing an amount of salt."},{"id":"D","text":"sweet","is_correct":false,"explanation":"Incorrect: it describes flavor, not the quantity of salt."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text defines the amount as {{yellow:just a single pinch}}.
Step 2 — Match the word
An amount equal to a single pinch is ''small,'' the sense of ''modest'' here.
Distractor analysis:
- B: ''generous'' contradicts the warning against too much salt.
- C: ''humble'' is a real sense of ''modest'' but cannot describe a quantity.
- D: ''sweet'' refers to taste, not amount.', 'It is defined as ''just a single pinch.''', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
