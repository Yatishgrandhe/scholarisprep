INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('165454d6-d978-45b0-8a33-e00153e23e6e', 'The student wants to explain how Hurston''s training as an anthropologist influenced her writing. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Author Zora Neale Hurston
- Zora Neale Hurston was an American writer born in 1891.
- She trained as an anthropologist and studied folklore.
- She collected stories and songs from communities across the South.
- Her novel Their Eyes Were Watching God is her best-known work.
- Her writing often included the everyday speech of the people she studied.', NULL, '[{"id":"A","text":"Zora Neale Hurston was an American writer born in 1891.","is_correct":false,"explanation":"This gives biographical facts but does not link her training to her writing."},{"id":"B","text":"Her novel Their Eyes Were Watching God is her best-known work.","is_correct":false,"explanation":"This names her famous novel but does not connect anthropology to her writing."},{"id":"C","text":"Trained as an anthropologist, Hurston collected stories and songs and often included the everyday speech of the people she studied in her writing.","is_correct":true,"explanation":"Correct: it links her anthropological training to the speech she put into her writing."},{"id":"D","text":"Hurston collected stories and songs from communities across the South.","is_correct":false,"explanation":"This describes her fieldwork but does not connect it to how she wrote."}]'::jsonb, 'C', 'Step 1 — Find the link between training and writing
The notes say she trained as an anthropologist and that {{yellow:Her writing often included the everyday speech of the people she studied}}.
Step 2 — Match the goal
Choice C connects her anthropological training to the real speech in her writing, fulfilling the goal.
Distractor analysis:
- A: Gives birth facts, no link to her writing.
- B: Names a novel but draws no connection to anthropology.
- D: Describes fieldwork alone without connecting it to her writing.', 'Find the note connecting the people she studied to the speech in her writing.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;