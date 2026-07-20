INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6638cc7-5644-4b58-987d-f3f521710533', 'The student wants to emphasize how long ago dogs were domesticated. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Domestication of Dogs
- Dogs were the first animals humans domesticated.
- This happened at least 15,000 years ago.
- Early dogs likely helped humans hunt.
- Today there are hundreds of dog breeds.', NULL, '[{"id":"A","text":"Today there are hundreds of different dog breeds.","is_correct":false,"explanation":"True but irrelevant: it describes modern breeds, not the timing of domestication."},{"id":"B","text":"Early dogs likely helped humans with hunting.","is_correct":false,"explanation":"True but off-goal: it describes an early role, not how long ago domestication happened."},{"id":"C","text":"Dogs were domesticated by humans at least 15,000 years ago.","is_correct":true,"explanation":"Correct: it states the 15,000-year span, emphasizing how long ago domestication occurred."},{"id":"D","text":"Dogs were the first animals that humans domesticated.","is_correct":false,"explanation":"True but off-goal: it stresses order (first), not how long ago it happened."}]'::jsonb, 'C', 'Step 1 — Find the timing clue
The notes say domestication happened {{yellow:at least 15,000 years ago}}.
Step 2 — Match the goal
Choice C reports the 15,000-year figure, directly emphasizing how long ago dogs were domesticated.
Distractor analysis:
- A: Describes modern breeds, not timing.
- B: Describes hunting help, not timing.
- D: Stresses that dogs were first, not how long ago.', 'Look for the choice that names the number of years ago.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;