INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('161a0792-9bf4-4d08-a6a8-2e1030a86c79', 'The student wants to emphasize how quickly a recycled can can be reused. Which choice most effectively uses information from the notes to accomplish this goal?', 'Recycling Aluminum
- Aluminum cans can be recycled and used to make new cans.
- Recycling aluminum uses far less energy than making it from raw materials.
- A recycled can may return to a store shelf within about 60 days.
- Many cities collect cans through curbside programs.', NULL, '[{"id":"A","text":"Aluminum cans can be recycled and used to make new cans.","is_correct":false,"explanation":"This states cans are recyclable, not how quickly they return."},{"id":"B","text":"Recycling aluminum uses far less energy than making it from raw materials.","is_correct":false,"explanation":"This is about energy savings, not speed."},{"id":"C","text":"A recycled can may return to a store shelf within about 60 days.","is_correct":true,"explanation":"This gives a specific short time, emphasizing speed of reuse."},{"id":"D","text":"Many cities collect cans through curbside programs.","is_correct":false,"explanation":"This describes collection, not how quickly cans are reused."}]'::jsonb, 'C', 'Step 1 — Find the speed note
The goal is how quickly a can is reused, and the notes state {{yellow:A recycled can may return to a store shelf within about 60 days}}.
Step 2 — Match the goal
Choice C uses that specific time frame to emphasize the speed of reuse.
Distractor analysis:
- A: Says cans are recyclable but gives no time frame.
- B: Discusses energy savings, not speed.
- D: Describes how cans are collected, not how fast they return.', 'Look for the note that gives a number of days.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;