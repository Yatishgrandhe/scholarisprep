INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08445c3a-f7f8-4734-8274-2ea5aa14640c', 'The student wants to describe the main purpose of the Underground Railroad. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Underground Railroad
- The Underground Railroad was a network of secret routes and safe houses.
- It helped enslaved people escape to free states and Canada.
- Harriet Tubman led many people to freedom along these routes.
- The network was active mainly in the early to mid-1800s.', NULL, '[{"id":"A","text":"The Underground Railroad was a network of secret routes that helped enslaved people escape to free states and Canada.","is_correct":true,"explanation":"Correct: it states the network''s purpose of helping enslaved people escape to freedom."},{"id":"B","text":"The Underground Railroad was active mainly during the early to mid-1800s.","is_correct":false,"explanation":"True but off-goal: it gives the time period, not the purpose."},{"id":"C","text":"Harriet Tubman led many people to freedom along the Underground Railroad''s routes.","is_correct":false,"explanation":"True but narrow: it focuses on one leader, not the network''s overall purpose."},{"id":"D","text":"The Underground Railroad used secret routes and safe houses across the country.","is_correct":false,"explanation":"Partly relevant but describes the means, not the purpose of escape to freedom."}]'::jsonb, 'A', 'Step 1 — Find the purpose clue
The notes say the network {{yellow:helped enslaved people escape to free states and Canada}}.
Step 2 — Match the goal
Choice A names that purpose directly, describing what the Underground Railroad was for.
Distractor analysis:
- B: Gives the time period, not the purpose.
- C: Focuses on Harriet Tubman, not the network''s overall aim.
- D: Describes routes and safe houses (means), not the purpose.', 'Find the choice that says what the network was meant to do.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;