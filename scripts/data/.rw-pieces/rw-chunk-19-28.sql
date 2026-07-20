INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('19140855-3a40-4c00-8245-73d4e43e4df9', 'The student wants to illustrate the variety of defensive uses of bioluminescence. Which choice most effectively uses information from the notes to accomplish this goal?', 'Bioluminescence in the Deep Sea
- Many deep-sea animals produce their own light through a process called bioluminescence.
- This light comes from a chemical reaction between a molecule called luciferin and oxygen.
- Some fish use bioluminescence to attract prey toward their mouths.
- Other species use flashes of light to startle and escape predators.
- A few animals release glowing clouds into the water to confuse attackers.', NULL, '[{"id":"A","text":"Bioluminescence results from a chemical reaction between luciferin and oxygen in deep-sea animals.","is_correct":false,"explanation":"This explains the mechanism, not the defensive uses."},{"id":"B","text":"Some fish use bioluminescence to attract prey toward their mouths.","is_correct":false,"explanation":"Attracting prey is an offensive use, not defensive, and is only one use."},{"id":"C","text":"To defend themselves, some species flash light to startle predators while others release glowing clouds to confuse attackers.","is_correct":true,"explanation":"This presents two distinct defensive uses, illustrating the variety the goal requires."},{"id":"D","text":"Deep-sea animals produce light, which makes the ocean depths appear less dark.","is_correct":false,"explanation":"The brightening claim is not supported by the notes and ignores defense."}]'::jsonb, 'C', 'Step 1 — Identify defensive uses
The notes list that species use {{yellow:flashes of light to startle and escape predators}} and {{yellow:release glowing clouds into the water to confuse attackers}}.
Step 2 — Match the goal
Choice C combines both defensive behaviors, showing variety.
Distractor analysis:
- A: Describes the mechanism, not defense.
- B: Attracting prey is offensive and singular.
- D: The brightening detail is unsupported by the notes.', 'The goal asks for variety in defensive uses, so look for more than one protective behavior.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;