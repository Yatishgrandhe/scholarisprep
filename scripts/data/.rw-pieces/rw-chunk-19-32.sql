INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ae9efe7-e35d-4cc1-8e39-ecbcc2cb584c', 'The student wants to explain the engineering principle that kept water moving through the aqueducts. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Roman Aqueducts
- Ancient Rome relied on aqueducts to bring water from distant sources into the city.
- The aqueducts used a gentle, continuous downward slope to keep water flowing.
- Engineers built arched bridges to carry channels across valleys.
- The system delivered enough water for public baths, fountains, and homes.
- Some aqueducts stretched for more than fifty miles.', NULL, '[{"id":"A","text":"Some Roman aqueducts stretched for more than fifty miles to reach the city.","is_correct":false,"explanation":"This gives length, not the principle that kept water moving."},{"id":"B","text":"The aqueducts relied on a gentle, continuous downward slope to keep water flowing toward the city.","is_correct":true,"explanation":"This identifies the slope as the principle that kept water moving, matching the goal."},{"id":"C","text":"The system delivered enough water for public baths, fountains, and homes.","is_correct":false,"explanation":"This describes what the water supplied, not the engineering principle."},{"id":"D","text":"Engineers built arched bridges to carry water channels across valleys.","is_correct":false,"explanation":"Arched bridges are a structure, not the principle keeping water flowing."}]'::jsonb, 'B', 'Step 1 — Identify the principle
The notes state the aqueducts {{yellow:used a gentle, continuous downward slope to keep water flowing}}.
Step 2 — Match the goal
Choice B names the slope as what kept water moving.
Distractor analysis:
- A: Gives length, not the principle.
- C: Describes uses of the water.
- D: Describes bridges, a structure rather than the flow principle.', 'The goal is the principle that kept water moving, so look for what caused the flow.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;