INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14b57c32-3c61-46bb-a308-55070aba57c6', 'The student wants to highlight how many marine species depend on coral reefs. Which choice most effectively uses information from the notes to accomplish this goal?', 'Coral Reefs as Habitats
- Coral reefs cover less than one percent of the ocean floor.
- They are home to about 25 percent of all marine species.
- Reefs provide food and shelter for fish.
- Many reefs are found in warm, shallow waters.', NULL, '[{"id":"A","text":"Coral reefs are often found in warm, shallow ocean waters.","is_correct":false,"explanation":"True but irrelevant: it describes where reefs are located, not how many species rely on them."},{"id":"B","text":"Coral reefs cover less than one percent of the ocean floor.","is_correct":false,"explanation":"True but off-goal: it stresses how little area reefs cover, not the species that depend on them."},{"id":"C","text":"Coral reefs are home to about 25 percent of all marine species.","is_correct":true,"explanation":"Correct: it states the share of marine species living in reefs, highlighting how many depend on them."},{"id":"D","text":"Coral reefs provide both food and shelter for many fish.","is_correct":false,"explanation":"Partly relevant but names only fish, not the broad number of marine species."}]'::jsonb, 'C', 'Step 1 — Find the species clue
The notes say reefs are {{yellow:home to about 25 percent of all marine species}}.
Step 2 — Match the goal
Choice C reports that one quarter of marine species live in reefs, highlighting how many depend on them.
Distractor analysis:
- A: Describes the reefs'' location, not the dependent species.
- B: Emphasizes the small area reefs cover, not species numbers.
- D: Mentions only fish, not the full share of marine species.', 'Look for the percentage of marine species that live in reefs.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;