INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2293ba2a-6975-416b-9a28-9f81c0ccc5a5', 'Which choice completes the text with the most logical and precise word or phrase?', 'Historians note that the ancient bridge has lasted more than two thousand years. Wars, floods, and earthquakes have struck the city, yet the stone arches still stand. Engineers admire how ______ the structure is, remaining solid while newer bridges nearby have crumbled and fallen.', NULL, '[{"id":"A","text":"durable","is_correct":true,"explanation":"Correct: the text says the bridge has lasted two thousand years and still stands, which means durable."},{"id":"B","text":"fragile","is_correct":false,"explanation":"Incorrect: fragile contradicts a bridge that survives wars, floods, and earthquakes."},{"id":"C","text":"modern","is_correct":false,"explanation":"Incorrect: the bridge is ancient, contrasted with newer bridges that fell."},{"id":"D","text":"colorful","is_correct":false,"explanation":"Incorrect: appearance is not discussed; the focus is on lasting through disasters."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text states the bridge has {{yellow:lasted more than two thousand years}} and still stands after disasters.
Step 2 — Match the word
A structure that lasts thousands of years through wars and quakes is durable.
Distractor analysis:
- B: ''fragile'' contradicts surviving so many disasters.
- C: ''modern'' is wrong; the bridge is ancient.
- D: ''colorful'' addresses appearance, which is never mentioned.', 'The bridge has lasted thousands of years and still stands.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
