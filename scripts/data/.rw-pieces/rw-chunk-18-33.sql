INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c2d7b46d-a467-4e54-9321-c8e7d395fcca', 'The student wants to emphasize the great variety of living things in the Amazon. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Amazon Rainforest
- The Amazon rainforest is located in South America.
- It produces a large share of the world''s oxygen.
- It is home to millions of plant and animal species.
- The Amazon River runs through the forest.', NULL, '[{"id":"A","text":"The Amazon rainforest is located in South America.","is_correct":false,"explanation":"True but irrelevant: it gives location, not variety of life."},{"id":"B","text":"The Amazon rainforest is home to millions of plant and animal species.","is_correct":true,"explanation":"Correct: it cites millions of species, emphasizing the variety of living things."},{"id":"C","text":"The Amazon rainforest produces a large share of the world''s oxygen.","is_correct":false,"explanation":"True but off-goal: it concerns oxygen production, not variety of species."},{"id":"D","text":"The Amazon River runs through the rainforest.","is_correct":false,"explanation":"True but irrelevant: it describes the river, not the variety of life."}]'::jsonb, 'B', 'Step 1 — Find the variety clue
The notes say the forest is {{yellow:home to millions of plant and animal species}}.
Step 2 — Match the goal
Choice B reports the millions of species, directly emphasizing the great variety of living things.
Distractor analysis:
- A: Gives location, not variety.
- C: Concerns oxygen, not species variety.
- D: Describes the river, not the variety of life.', 'Find the choice that mentions the number of species.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;