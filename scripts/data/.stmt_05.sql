INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('294d3a14-a8d5-4f19-b9ae-1aced6baacc0', 'Which choice completes the text with the most logical and precise word or phrase?', 'The ancient bridge has stood for two thousand years, surviving floods, wars, and earthquakes. Engineers admire how ______ it remains, still carrying heavy traffic without a single crack in its stone arches.', NULL, '[{"id":"A","text":"fragile","is_correct":false,"explanation":"Incorrect: this contradicts a bridge with no cracks after two thousand years."},{"id":"B","text":"sturdy","is_correct":true,"explanation":"Correct: it survives disasters and shows no cracks, so it is strongly built."},{"id":"C","text":"modern","is_correct":false,"explanation":"Incorrect: the bridge is ancient, not new."},{"id":"D","text":"crowded","is_correct":false,"explanation":"Incorrect: traffic volume is true but not what ''how ______ it remains'' describes."}]'::jsonb, 'B', 'Step 1 — Find the clue
The text says the bridge keeps carrying heavy traffic {{yellow:without a single crack in its stone arches}}.
Step 2 — Match the word
A structure that endures disasters and stays crack-free is ''sturdy.''
Distractor analysis:
- A: ''fragile'' contradicts the crack-free endurance.
- C: ''modern'' contradicts the bridge being two thousand years old.
- D: ''crowded'' is true of traffic but does not describe the bridge''s condition.', 'It has ''no cracks'' after surviving disasters.', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
