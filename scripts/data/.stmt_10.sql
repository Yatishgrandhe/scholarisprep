INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('455b78c4-c7fd-4323-9577-44f7d67e5634', 'Which choice completes the text with the most logical and precise word or phrase?', 'During the storm, the captain stayed ______, giving orders in a steady voice while the crew panicked around him. His composure reassured the sailors, and the ship reached harbor safely.', NULL, '[{"id":"A","text":"frantic","is_correct":false,"explanation":"Incorrect: this contradicts his steady voice and composure."},{"id":"B","text":"calm","is_correct":true,"explanation":"Correct: he gives orders in a ''steady voice'' and his ''composure'' reassures the crew."},{"id":"C","text":"silent","is_correct":false,"explanation":"Incorrect: he is giving orders, so he is not silent."},{"id":"D","text":"lost","is_correct":false,"explanation":"Incorrect: the ship reaches harbor, and he is in control."}]'::jsonb, 'B', 'Step 1 — Find the clue
The text says he was giving orders {{yellow:in a steady voice while the crew panicked around him}}.
Step 2 — Match the word
A steady voice and reassuring composure amid panic show that he stayed ''calm.''
Distractor analysis:
- A: ''frantic'' contradicts his steadiness and composure.
- C: ''silent'' contradicts his giving orders.
- D: ''lost'' contradicts his control and the safe arrival.', 'His ''composure'' and ''steady voice'' point to the answer.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
