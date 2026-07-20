INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('67b2fd74-02df-4db4-864a-ad92aec33725', 'The student wants to explain how the printing press changed the speed of producing books. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Invention of the Printing Press
- Johannes Gutenberg developed his printing press around 1440 in Germany.
- Before the press, books were copied slowly by hand.
- The press allowed many copies of a text to be made quickly.
- This made books cheaper and more widely available.
- More people learned to read as books spread across Europe.', NULL, '[{"id":"A","text":"Johannes Gutenberg developed his printing press around 1440 in Germany.","is_correct":false,"explanation":"This gives the inventor and date, not the change in speed of production."},{"id":"B","text":"Before the press, books were copied slowly by hand, but the press allowed many copies to be made quickly.","is_correct":true,"explanation":"Correct: it contrasts the slow hand copying with the fast press, directly explaining the change in speed."},{"id":"C","text":"As books spread across Europe, more people learned to read.","is_correct":false,"explanation":"This addresses literacy, not the speed of producing books."},{"id":"D","text":"The press made books cheaper and more widely available.","is_correct":false,"explanation":"This addresses cost and availability, not the speed of production."}]'::jsonb, 'B', 'Step 1 — Find the speed contrast
The notes state that {{yellow:Before the press, books were copied slowly by hand}} and that the press let copies be made quickly.
Step 2 — Match the goal
Choice B pairs those two notes to show how the speed of book production changed, fulfilling the goal.
Distractor analysis:
- A: Gives inventor and date, not a change in speed.
- C: Focuses on literacy spreading, not production speed.
- D: Focuses on cost and availability, not speed.', 'Look for the note that contrasts slow copying with fast copying.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;