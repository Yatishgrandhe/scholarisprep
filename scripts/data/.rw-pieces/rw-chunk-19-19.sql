INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b2fc95af-0d31-45e1-8791-0ae5119a4297', 'The student wants to explain an economic effect of the Erie Canal. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Erie Canal
- The Erie Canal opened in 1825 in New York State.
- It connected the Hudson River to Lake Erie.
- Before the canal, moving goods overland between these waters was slow and expensive.
- After the canal opened, the cost of shipping goods between Buffalo and New York City fell sharply.
- The reduced cost helped New York City become the nation''s busiest port.', NULL, '[{"id":"A","text":"The Erie Canal, which opened in 1825 in New York State, connected the Hudson River to Lake Erie.","is_correct":false,"explanation":"This gives the canal''s date and route but not an economic effect."},{"id":"B","text":"Before the canal, moving goods overland between these waters was slow and expensive.","is_correct":false,"explanation":"This describes conditions before the canal rather than an economic effect of the canal itself."},{"id":"C","text":"After the canal opened, shipping costs between Buffalo and New York City fell sharply, helping New York City become the nation''s busiest port.","is_correct":true,"explanation":"This connects the drop in shipping costs to New York City''s rise as the busiest port, an economic effect."},{"id":"D","text":"The Erie Canal connected two important bodies of water in New York State.","is_correct":false,"explanation":"This restates the geographic connection without identifying any economic effect."}]'::jsonb, 'C', 'Step 1 — Find the economic effect
The notes state the reduced cost {{yellow:helped New York City become the nation''s busiest port}}.
Step 2 — Match the goal
The student wants an economic effect, so the correct choice must link the falling costs to that outcome, which choice C does.
Distractor analysis:
- A: Provides date and route, not an economic effect.
- B: Describes pre-canal conditions rather than an effect of the canal.
- D: Restates the geographic link with no economic effect.', 'An economic effect connects costs or money to a result, like the port''s growth.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;