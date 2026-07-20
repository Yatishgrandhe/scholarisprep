INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff51e2f1-b002-4cc0-8912-ad94ace7d76a', 'The student wants to describe the process that forms volcanic islands. Which choice most effectively uses information from the notes to accomplish this goal?', 'Volcanic Islands
- Volcanic islands form when underwater volcanoes erupt and build up over time.
- The Hawaiian Islands were created this way.
- Lava cools and hardens into new rock with each eruption.
- Over thousands of years, the rock rises above the ocean surface.', NULL, '[{"id":"A","text":"The Hawaiian Islands were created this way.","is_correct":false,"explanation":"This names an example, not the process."},{"id":"B","text":"Lava cools and hardens into new rock with each eruption, and over thousands of years the rock rises above the ocean surface.","is_correct":true,"explanation":"This describes the step-by-step process of island formation."},{"id":"C","text":"The Hawaiian Islands are popular with tourists.","is_correct":false,"explanation":"This is not supported by the notes and is not about the process."},{"id":"D","text":"Volcanic islands include the Hawaiian Islands.","is_correct":false,"explanation":"This lists an example, not the formation process."}]'::jsonb, 'B', 'Step 1 — Find the process notes
The goal is the formation process, and the notes state {{yellow:Lava cools and hardens into new rock with each eruption}} before rising above the ocean.
Step 2 — Match the goal
Choice B chains the cooling lava and rising rock to describe the process.
Distractor analysis:
- A: Names an example island, not the process.
- C: Adds an unsupported tourism claim not in the notes.
- D: Lists an example rather than describing how islands form.', 'Look for the notes that describe lava cooling and rock rising step by step.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;