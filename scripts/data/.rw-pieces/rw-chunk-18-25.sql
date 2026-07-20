INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e77d97c2-13e3-4614-a45b-7f59a5056727', 'The student wants to explain how the printing press changed the speed of book production. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Invention of the Printing Press
- Johannes Gutenberg built a printing press around 1440.
- The press used movable metal type.
- Before the press, books were copied by hand, which was slow.
- The press allowed books to be made much faster and in greater numbers.', NULL, '[{"id":"A","text":"Gutenberg built his printing press around 1440, near the middle of the fifteenth century.","is_correct":false,"explanation":"True but off-goal: it states when the press was built, not how it changed production speed."},{"id":"B","text":"Before the press, books were copied by hand slowly, but the press allowed books to be made much faster.","is_correct":true,"explanation":"Correct: it contrasts the slow hand-copying with the faster press, directly addressing speed."},{"id":"C","text":"Gutenberg''s printing press used movable metal type to print pages.","is_correct":false,"explanation":"True but irrelevant: it describes the mechanism, not the change in speed."},{"id":"D","text":"The printing press allowed books to be made in greater numbers than before.","is_correct":false,"explanation":"Partly relevant but focuses on quantity, not the change in speed the goal asks for."}]'::jsonb, 'B', 'Step 1 — Find the speed clue
The notes say books were once {{yellow:copied by hand, which was slow}} and the press let books be made faster.
Step 2 — Match the goal
Choice B contrasts slow hand-copying with the faster press, directly explaining the change in speed.
Distractor analysis:
- A: Gives the date, not the change in production speed.
- C: Describes the movable type mechanism, not speed.
- D: Focuses on greater numbers (quantity), not speed.', 'Find the choice that contrasts the old slow method with the new faster one.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;