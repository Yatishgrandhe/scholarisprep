INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d073902-aae8-4489-bf12-0c9cf09077a7', 'The student wants to describe Hurston''s work as a folklore researcher. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Author Zora Neale Hurston
- Zora Neale Hurston was an American writer born in 1891.
- She grew up in Eatonville, Florida, one of the first all-Black towns.
- She studied folklore and recorded stories from rural communities.
- Her novel Their Eyes Were Watching God was published in 1937.', NULL, '[{"id":"A","text":"Zora Neale Hurston was an American writer born in 1891.","is_correct":false,"explanation":"This gives birth information, not folklore research."},{"id":"B","text":"She grew up in Eatonville, Florida, one of the first all-Black towns.","is_correct":false,"explanation":"This describes where she grew up, not her research."},{"id":"C","text":"She studied folklore and recorded stories from rural communities.","is_correct":true,"explanation":"This directly describes her folklore research work."},{"id":"D","text":"Her novel Their Eyes Were Watching God was published in 1937.","is_correct":false,"explanation":"This describes her fiction, not her folklore research."}]'::jsonb, 'C', 'Step 1 — Find the research note
The goal is her folklore research, and the notes state {{yellow:She studied folklore and recorded stories from rural communities}}.
Step 2 — Match the goal
Choice C uses that exact note to describe her research work.
Distractor analysis:
- A: States her birth year, not her research.
- B: Describes her hometown, not folklore work.
- D: Names a novel, which is fiction rather than research.', 'Look for the note that mentions studying folklore.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;