INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('27fcf504-ebe4-43ac-b0c0-c86a3c78462e', 'Which choice completes the text with the most logical and precise word or phrase?', 'The first explorers to map the river had no guides and no charts. No one had recorded these waters before, and the surrounding forest appeared on no map. Reaching this ______ territory, where no traveler had set foot, filled the team with both fear and wonder.', NULL, '[{"id":"A","text":"unexplored","is_correct":true,"explanation":"Correct: the text says no one had recorded these waters and no traveler had set foot there, meaning unexplored."},{"id":"B","text":"familiar","is_correct":false,"explanation":"Incorrect: familiar reverses a place where no traveler had ever been."},{"id":"C","text":"crowded","is_correct":false,"explanation":"Incorrect: no people are present; no traveler had set foot there."},{"id":"D","text":"ruined","is_correct":false,"explanation":"Incorrect: damage is not mentioned; the land is simply never visited before."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text states this is land {{yellow:where no traveler had set foot}} and appeared on no map.
Step 2 — Match the word
Territory no one had recorded or visited is unexplored.
Distractor analysis:
- B: ''familiar'' contradicts a place never visited.
- C: ''crowded'' is wrong; no traveler had been there.
- D: ''ruined'' adds damage with no support in the text.', 'No traveler had set foot there and it appeared on no map.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
