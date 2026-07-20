INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0400a281-b742-43b3-9b6b-c18a7403fba8', 'Which choice completes the text with the most logical and precise word or phrase?', 'The young king was known for his ______ rule: he listened to the complaints of farmers, lowered unfair taxes, and pardoned prisoners who had been jailed without cause. His people praised him for treating everyone with fairness and mercy.', NULL, '[{"id":"A","text":"cruel","is_correct":false,"explanation":"Incorrect: this is the opposite of the kindness the text describes."},{"id":"B","text":"secret","is_correct":false,"explanation":"Incorrect: nothing suggests his rule was hidden."},{"id":"C","text":"just","is_correct":true,"explanation":"Correct: the text says he treated everyone with ''fairness and mercy.''"},{"id":"D","text":"brief","is_correct":false,"explanation":"Incorrect: the length of his rule is never mentioned."}]'::jsonb, 'C', 'Step 1 — Find the clue
The passage says his people praised him for {{yellow:treating everyone with fairness and mercy}}.
Step 2 — Match the word
A ruler defined by fairness and mercy is best described as ''just.''
Distractor analysis:
- A: ''cruel'' contradicts the fairness and mercy described.
- B: ''secret'' has no support; his actions were public and praised.
- D: ''brief'' concerns duration, which the text never mentions.', 'Find the words ''fairness and mercy.''', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
