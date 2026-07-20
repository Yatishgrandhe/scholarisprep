INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6eebe218-eaa7-4246-9b40-a83dcaf95196', 'The student wants to emphasize the accidental nature of the discovery. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Discovery of Penicillin
- In 1928, Alexander Fleming was studying bacteria in his laboratory.
- He noticed that a mold had accidentally contaminated one of his bacterial dishes.
- The bacteria near the mold had been killed.
- The mold produced a substance Fleming named penicillin.
- Penicillin later became one of the first widely used antibiotics.', NULL, '[{"id":"A","text":"Penicillin later became one of the first widely used antibiotics.","is_correct":false,"explanation":"This describes penicillin''s later importance, not the accidental discovery."},{"id":"B","text":"Fleming discovered penicillin when he noticed that a mold had accidentally contaminated a dish and killed the nearby bacteria.","is_correct":true,"explanation":"This stresses the accidental contamination and the killed bacteria, capturing the unplanned discovery."},{"id":"C","text":"In 1928, Alexander Fleming was studying bacteria in his laboratory.","is_correct":false,"explanation":"This sets the scene but omits the accident itself."},{"id":"D","text":"The mold produced a substance Fleming named penicillin.","is_correct":false,"explanation":"This states the naming but not the accidental discovery."}]'::jsonb, 'B', 'Step 1 — Find the accident
The notes state that {{yellow:a mold had accidentally contaminated one of his bacterial dishes}} and that {{yellow:The bacteria near the mold had been killed}}.
Step 2 — Match the goal
Choice B foregrounds the accidental contamination and its effect, emphasizing chance.
Distractor analysis:
- A: Describes later importance, not the accident.
- B is correct.
- C: Sets the scene without the accident.
- D: States the naming, not the accidental nature.', 'The goal stresses that the discovery was unplanned, so look for the word accidentally and its result.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;