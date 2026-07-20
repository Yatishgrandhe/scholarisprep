INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c3b9a6c3-706a-4b70-98dd-3124ebb7ac38', 'The student wants to present the environmental benefits of green roofs. Which choice most effectively uses information from the notes to accomplish this goal?', 'Urban Green Roofs
- A green roof is a building roof partially or fully covered with vegetation.
- Green roofs absorb rainwater that would otherwise overwhelm city drainage systems.
- They lower the temperature of a building''s interior in summer.
- Plants on the roofs filter pollutants from the air.
- Installing a green roof costs more than installing a conventional roof.', NULL, '[{"id":"A","text":"A green roof is a building roof partially or fully covered with vegetation.","is_correct":false,"explanation":"Too narrow: it defines a green roof but lists no benefits."},{"id":"B","text":"Green roofs absorb rainwater that would overwhelm drainage systems and filter pollutants from the air.","is_correct":true,"explanation":"Correct: it presents two environmental benefits—stormwater absorption and air filtration—drawn from the notes."},{"id":"C","text":"Installing a green roof costs more than installing a conventional roof.","is_correct":false,"explanation":"Reverse: it states a drawback, the opposite of presenting a benefit."},{"id":"D","text":"A green roof can be partially or fully covered with vegetation.","is_correct":false,"explanation":"Too narrow: it restates the definition without naming any benefit."}]'::jsonb, 'B', 'Step 1 — Find the benefits
The notes say green roofs {{yellow:absorb rainwater that would otherwise overwhelm city drainage systems}} and that plants {{yellow:filter pollutants from the air}}.
Step 2 — Match the goal
Choice B combines these two environmental advantages, fulfilling the goal of presenting benefits.
Distractor analysis:
- A: Definition only, no benefits.
- B is correct.
- C: States a cost drawback, the reverse of a benefit.
- D: Restates the definition.', 'The goal is benefits, so avoid the definition and the cost drawback.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;