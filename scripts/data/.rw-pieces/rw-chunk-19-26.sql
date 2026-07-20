INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fc89cf73-87a1-44a6-9d84-61f825871eee', 'The student wants to explain the role trehalose plays in tardigrade survival. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Tardigrade''s Survival Strategy
- Tardigrades are microscopic animals less than a millimeter long.
- When their environment dries out, they enter a dormant state called the "tun."
- In the tun state, a tardigrade replaces lost water with a sugar called trehalose.
- Trehalose forms a glassy coating that protects the animal''s cells from damage.
- Tardigrades can remain in the tun state for years and revive when water returns.', NULL, '[{"id":"A","text":"Tardigrades, which are less than a millimeter long, can remain dormant for years before reviving.","is_correct":false,"explanation":"This describes size and dormancy duration but never mentions trehalose, so it does not explain the sugar''s role."},{"id":"B","text":"When a tardigrade dries out, it replaces lost water with trehalose, a sugar that forms a glassy coating protecting its cells from damage.","is_correct":true,"explanation":"This synthesizes the water replacement and the protective glassy coating to explain exactly what trehalose does."},{"id":"C","text":"Tardigrades enter a dormant state called the \"tun\" when their environment dries out.","is_correct":false,"explanation":"This describes the tun state but omits trehalose entirely, failing the rhetorical goal."},{"id":"D","text":"Trehalose is a sugar that tardigrades produce, and they are microscopic animals.","is_correct":false,"explanation":"This names trehalose but never states its protective function, so it does not explain its role."}]'::jsonb, 'B', 'Step 1 — Locate trehalose''s function
The notes say a tardigrade {{yellow:replaces lost water with a sugar called trehalose}} and that {{yellow:Trehalose forms a glassy coating that protects the animal''s cells from damage}}.
Step 2 — Match the goal
Choice B combines both facts to state precisely what role trehalose plays.
Distractor analysis:
- A: True details but never mentions trehalose, so it fails the goal.
- C: Describes the tun state without trehalose''s role.
- D: Names trehalose but omits its protective function.', 'The goal is the role of trehalose specifically, so the answer must state what the sugar does.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;