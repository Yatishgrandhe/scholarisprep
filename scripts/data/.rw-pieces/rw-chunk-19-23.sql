INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8f81d4ae-4737-4231-a83f-48cd42a2ec52', 'The student wants to describe what the Antikythera mechanism could do. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Antikythera Mechanism
- The Antikythera mechanism is an ancient Greek device recovered from a shipwreck in 1901.
- It is made of more than thirty bronze gears fitted together.
- By turning a hand crank, a user could model the motions of the sun and moon.
- The device could also predict the timing of eclipses.
- Researchers believe it was built more than two thousand years ago.', NULL, '[{"id":"A","text":"The Antikythera mechanism is an ancient Greek device recovered from a shipwreck in 1901.","is_correct":false,"explanation":"This gives the device''s origin and discovery, not what it could do."},{"id":"B","text":"The Antikythera mechanism is made of more than thirty bronze gears fitted together.","is_correct":false,"explanation":"This describes its construction rather than its functions."},{"id":"C","text":"By turning a hand crank, a user of the mechanism could model the motions of the sun and moon and predict the timing of eclipses.","is_correct":true,"explanation":"This lists two functions of the device, directly describing what it could do."},{"id":"D","text":"Researchers believe the Antikythera mechanism was built more than two thousand years ago.","is_correct":false,"explanation":"This concerns its age, not its capabilities."}]'::jsonb, 'C', 'Step 1 — Find the functions
The notes state the device could model the sun and moon and {{yellow:predict the timing of eclipses}}.
Step 2 — Match the goal
The student wants to describe what it could do, so the correct choice must report its functions, which choice C does.
Distractor analysis:
- A: Gives origin and discovery, not function.
- B: Describes construction, not capability.
- D: States its age, not what it could do.', 'Focus on the choice that lists the device''s actual functions.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;