INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b217d3cb-0def-4a84-8d53-6ef82be6f98a', 'The student wants to emphasize the great distance some monarchs travel. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Monarch Butterfly Migration
- Monarch butterflies are insects with orange and black wings.
- Each fall, North American monarchs travel south to warmer regions.
- Some monarchs fly more than 3,000 miles to reach central Mexico.
- They cluster on fir trees in the mountains during winter.', NULL, '[{"id":"A","text":"Monarch butterflies are insects with orange and black wings.","is_correct":false,"explanation":"This describes appearance, not distance traveled."},{"id":"B","text":"Some monarchs fly more than 3,000 miles to reach central Mexico.","is_correct":true,"explanation":"This directly states the great distance some monarchs travel."},{"id":"C","text":"Monarchs cluster on fir trees in the mountains during winter.","is_correct":false,"explanation":"This describes winter behavior, not distance."},{"id":"D","text":"Each fall, North American monarchs travel south to warmer regions.","is_correct":false,"explanation":"This mentions travel but gives no distance to emphasize."}]'::jsonb, 'B', 'Step 1 — Find the distance clue
The goal is to emphasize how far monarchs travel, and the notes state that {{yellow:Some monarchs fly more than 3,000 miles to reach central Mexico}}.
Step 2 — Match the goal
Only choice B names a specific great distance, fulfilling the goal directly.
Distractor analysis:
- A: Describes wing color, which is irrelevant to distance.
- C: Describes winter clustering behavior, not distance.
- D: Mentions traveling south but provides no distance to emphasize.', 'Look for the note that includes a specific number of miles.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;