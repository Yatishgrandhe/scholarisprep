INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f41657b3-9382-4918-a7e5-4a07e37bc476', 'Which choice completes the text with the most logical and precise word or phrase?', 'In her memoir, the explorer describes a ______ landscape stretching for miles: no trees, no rivers, no animals, only flat gray rock under an empty sky. She felt as if she were walking across the surface of another world.', NULL, '[{"id":"A","text":"crowded","is_correct":false,"explanation":"Incorrect: this contradicts a place with no trees, rivers, or animals."},{"id":"B","text":"barren","is_correct":true,"explanation":"Correct: the landscape has no trees, rivers, or animals, so it is empty and lifeless."},{"id":"C","text":"fertile","is_correct":false,"explanation":"Incorrect: fertile means rich in life, the opposite of what is described."},{"id":"D","text":"narrow","is_correct":false,"explanation":"Incorrect: the land stretches ''for miles,'' so it is not narrow."}]'::jsonb, 'B', 'Step 1 — Find the clue
The text lists what is absent: {{yellow:no trees, no rivers, no animals, only flat gray rock}}.
Step 2 — Match the word
A landscape stripped of life and water is ''barren.''
Distractor analysis:
- A: ''crowded'' contradicts the emptiness described.
- C: ''fertile'' means full of life, the reverse of the scene.
- D: ''narrow'' contradicts land stretching for miles.', 'The list of ''no trees, no rivers, no animals'' tells you it is empty.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
