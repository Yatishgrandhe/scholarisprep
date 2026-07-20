INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('543e6afc-afc7-4076-a1b0-a690031e1bfb', 'The student wants to introduce Harriet Tubman''s role in the Underground Railroad to an audience unfamiliar with it. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Underground Railroad
- The Underground Railroad was a secret network that helped enslaved people escape to freedom.
- It was most active in the United States during the 1800s.
- Helpers, called conductors, guided travelers along hidden routes.
- Harriet Tubman was one of the most famous conductors.
- Many people reached free states or Canada through the network.', NULL, '[{"id":"A","text":"Many people reached free states or Canada through the Underground Railroad.","is_correct":false,"explanation":"This describes the network''s results, not Harriet Tubman''s role."},{"id":"B","text":"Harriet Tubman was one of the most famous conductors, helpers who guided travelers along hidden routes.","is_correct":true,"explanation":"Correct: it introduces Tubman and explains the conductor role for an unfamiliar audience."},{"id":"C","text":"The Underground Railroad was most active in the United States during the 1800s.","is_correct":false,"explanation":"This gives a time and place but does not mention Tubman''s role."},{"id":"D","text":"The Underground Railroad was a secret network that helped enslaved people escape to freedom.","is_correct":false,"explanation":"This defines the network but does not introduce Harriet Tubman."}]'::jsonb, 'B', 'Step 1 — Find the Tubman detail
The notes state that {{yellow:Harriet Tubman was one of the most famous conductors}}.
Step 2 — Match the goal
Choice B names Tubman and explains what a conductor did, introducing her role clearly for new audiences.
Distractor analysis:
- A: Describes outcomes, not Tubman''s role.
- C: Gives time and place only, no mention of Tubman.
- D: Defines the network but omits Tubman entirely.', 'Look for the note that names Harriet Tubman directly.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;