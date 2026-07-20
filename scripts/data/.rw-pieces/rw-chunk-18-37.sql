INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('686d91c2-157f-42b0-88a6-6d9c89c0dc2c', 'The student wants to explain how the printing press changed book production. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Invention of the Printing Press
- Johannes Gutenberg lived in the German city of Mainz.
- Around 1440 he developed a printing press using movable metal type.
- Before the press, books were copied slowly by hand.
- The press allowed many copies of a book to be made quickly.', NULL, '[{"id":"A","text":"Johannes Gutenberg lived in the German city of Mainz.","is_correct":false,"explanation":"This gives location, not a change in production."},{"id":"B","text":"Around 1440 Gutenberg developed a printing press using movable metal type.","is_correct":false,"explanation":"This names the invention but not how production changed."},{"id":"C","text":"Before the press, books were copied slowly by hand, but the press allowed many copies to be made quickly.","is_correct":true,"explanation":"This contrasts slow hand-copying with fast printing, explaining the change."},{"id":"D","text":"Gutenberg developed his press in the German city of Mainz.","is_correct":false,"explanation":"This combines location and invention but shows no change in production."}]'::jsonb, 'C', 'Step 1 — Identify the change
The notes contrast the old and new methods: {{yellow:Before the press, books were copied slowly by hand}} versus the press making copies quickly.
Step 2 — Match the goal
Choice C pairs both notes to show exactly how production changed from slow to fast.
Distractor analysis:
- A: States only where Gutenberg lived.
- B: Names the invention but does not describe the change in production.
- D: Combines place and invention but never contrasts old and new methods.', 'Look for a choice that contrasts how books were made before and after the press.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;