INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b2f05bdc-6391-4fe8-ab69-37d85383716d', 'The student wants to present an environmental benefit of solar panels. Which choice most effectively uses information from the notes to accomplish this goal?', 'Solar Panels
- Solar panels are made of cells that turn sunlight into electricity.
- They produce no air pollution while generating power.
- Some homeowners install panels on their rooftops.
- The cost of solar panels has fallen over the past decade.', NULL, '[{"id":"A","text":"Solar panels are made of cells that turn sunlight into electricity.","is_correct":false,"explanation":"This explains how panels work, not an environmental benefit."},{"id":"B","text":"They produce no air pollution while generating power.","is_correct":true,"explanation":"Producing no air pollution is a clear environmental benefit."},{"id":"C","text":"Some homeowners install panels on their rooftops.","is_correct":false,"explanation":"This describes where panels are placed, not an environmental benefit."},{"id":"D","text":"The cost of solar panels has fallen over the past decade.","is_correct":false,"explanation":"This is an economic point, not an environmental benefit."}]'::jsonb, 'B', 'Step 1 — Find the environmental note
The goal is an environmental benefit, and the notes state panels {{yellow:produce no air pollution while generating power}}.
Step 2 — Match the goal
Choice B uses that note to present a clear environmental benefit.
Distractor analysis:
- A: Explains how panels function, not a benefit to the environment.
- C: Describes placement on rooftops, not an environmental effect.
- D: Concerns cost, an economic rather than environmental point.', 'Look for the note about pollution.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;