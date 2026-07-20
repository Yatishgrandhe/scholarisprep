INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('93a4a014-f0af-47fc-a533-7f791df3678d', 'The student wants to explain the mechanism that allows an octopus to change color. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Octopus''s Camouflage
- Octopuses can change the color and texture of their skin almost instantly.
- Their skin contains thousands of tiny pigment-filled sacs called chromatophores.
- Muscles around each sac stretch it to reveal more color or shrink it to hide the color.
- Octopuses use this ability to blend into surroundings and avoid predators.
- Some species can also raise bumps on their skin to mimic rough surfaces.', NULL, '[{"id":"A","text":"Octopuses change color to blend into their surroundings and avoid predators.","is_correct":false,"explanation":"This states the purpose of color change rather than the mechanism behind it."},{"id":"B","text":"An octopus changes color when muscles stretch or shrink thousands of pigment-filled sacs called chromatophores in its skin.","is_correct":true,"explanation":"This describes the chromatophores and the muscle action that reveals or hides color, explaining the mechanism."},{"id":"C","text":"Some octopus species can raise bumps on their skin to mimic rough surfaces.","is_correct":false,"explanation":"This describes a texture change, not the mechanism of color change."},{"id":"D","text":"Octopuses can change the color and texture of their skin almost instantly.","is_correct":false,"explanation":"This states that they change color quickly but does not explain how."}]'::jsonb, 'B', 'Step 1 — Find the mechanism
The notes say {{yellow:Muscles around each sac stretch it to reveal more color or shrink it to hide the color}}.
Step 2 — Match the goal
The student wants the color-change mechanism, so the correct choice must name the chromatophores and the muscle action, which choice B does.
Distractor analysis:
- A: Gives the purpose, not the mechanism.
- C: Describes texture mimicry, a different ability.
- D: States the speed of change without explaining how.', 'The mechanism involves the sacs called chromatophores and the muscles that move them.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;