INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5a8101ed-3199-4bb2-83de-07e6b315edb6', 'The student wants to explain how reintroducing wolves led to the recovery of plants in the river valleys. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Restoration of Wolves to Yellowstone
- Gray wolves were eliminated from Yellowstone National Park by the 1920s.
- In 1995, biologists reintroduced wolves to the park.
- With wolves present, elk herds began avoiding open river valleys.
- Willows and aspens in those valleys recovered as elk browsing decreased.
- Beavers, which depend on willows, returned to the restored streams.', NULL, '[{"id":"A","text":"Gray wolves were eliminated from Yellowstone National Park by the 1920s before being reintroduced in 1995.","is_correct":false,"explanation":"Off-goal: it recounts the wolves'' removal and return but not how plants recovered."},{"id":"B","text":"After wolves returned, elk avoided open river valleys, and willows and aspens there recovered as browsing decreased.","is_correct":true,"explanation":"Correct: it traces the chain from wolves to changed elk behavior to plant recovery, exactly the explanation sought."},{"id":"C","text":"Beavers, which depend on willows, returned to the restored streams.","is_correct":false,"explanation":"True but off-goal: it describes a later effect, not how the plants themselves recovered."},{"id":"D","text":"In 1995, biologists reintroduced wolves to the park.","is_correct":false,"explanation":"Too narrow: it states the reintroduction but not the chain leading to plant recovery."}]'::jsonb, 'B', 'Step 1 — Trace the causal chain
The notes say {{yellow:elk herds began avoiding open river valleys}} and that {{yellow:Willows and aspens in those valleys recovered as elk browsing decreased}}.
Step 2 — Match the goal
Choice B connects the wolves'' presence to elk avoiding the valleys and the resulting plant recovery, providing the requested explanation.
Distractor analysis:
- A: Recounts removal and return, not the recovery mechanism.
- B is correct.
- C: Describes beavers, a downstream effect.
- D: States the reintroduction alone.', 'You need the chain from wolves to elk behavior to plant recovery, not the later beaver effect.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;