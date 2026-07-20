INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d500a071-1f89-4286-8a15-2211dccc9f8c', 'The student wants to describe a feature of the original Globe Theatre''s design. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Globe Theatre
- The Globe Theatre was a famous playhouse in London.
- It was built in 1599 for William Shakespeare''s acting company.
- The original building had no roof over its central area.
- Audiences standing in that open space were exposed to the weather.
- A modern copy of the theatre was opened near the original site in 1997.', NULL, '[{"id":"A","text":"The Globe Theatre was a famous playhouse in London.","is_correct":false,"explanation":"This gives its fame and location, not a feature of its design."},{"id":"B","text":"It was built in 1599 for William Shakespeare''s acting company.","is_correct":false,"explanation":"This gives the date and owner, not a design feature."},{"id":"C","text":"The original Globe Theatre had no roof over its central area.","is_correct":true,"explanation":"Correct: the missing roof over the central area is a feature of the building''s design."},{"id":"D","text":"A modern copy of the theatre was opened near the original site in 1997.","is_correct":false,"explanation":"This describes the modern replica, not the original theatre''s design."}]'::jsonb, 'C', 'Step 1 — Find the design feature
The notes state that {{yellow:The original building had no roof over its central area}}.
Step 2 — Match the goal
Choice C uses that note to describe a feature of the original Globe''s design, fulfilling the goal.
Distractor analysis:
- A: Gives location and fame, not a design feature.
- B: Gives date and owner, not a design feature.
- D: Describes the modern copy, not the original design.', 'Look for the note about the central area of the building''s structure.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;