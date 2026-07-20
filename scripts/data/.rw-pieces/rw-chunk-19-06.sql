INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04cf5e33-eef5-487d-aae3-ab873bc7ea4f', 'The student wants to describe the contents of the Voyager records. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Voyager Golden Records
- In 1977 NASA launched the two Voyager spacecraft toward the outer solar system.
- Each carried a gold-plated phonograph record meant for any intelligent life that might find it.
- The records contain sounds and images selected to represent life and culture on Earth.
- They include greetings spoken in 55 languages and music from many cultures.
- The records were designed to last over a billion years in space.', NULL, '[{"id":"A","text":"In 1977 NASA launched the two Voyager spacecraft toward the outer solar system.","is_correct":false,"explanation":"Off-goal: it describes the launch, not the records'' contents."},{"id":"B","text":"The records were designed to last over a billion years in space.","is_correct":false,"explanation":"True but off-goal: it addresses durability, not what the records contain."},{"id":"C","text":"The records contain sounds and images of Earth, including greetings in 55 languages and music from many cultures.","is_correct":true,"explanation":"Correct: it lists the specific contents—sounds, images, greetings, and music—as the goal requires."},{"id":"D","text":"Each record was gold-plated and meant for any intelligent life that might find it.","is_correct":false,"explanation":"True but off-goal: it describes the records'' material and purpose, not their contents."}]'::jsonb, 'C', 'Step 1 — Locate the contents
The notes say the records {{yellow:contain sounds and images selected to represent life and culture on Earth}} and {{yellow:greetings spoken in 55 languages and music from many cultures}}.
Step 2 — Match the goal
Choice C combines both note lines to describe exactly what the records hold, satisfying the goal.
Distractor analysis:
- A: Describes the launch, not contents.
- B: Concerns durability, not contents.
- D: Describes material and purpose, not contents.', 'The goal is the records'' contents, so look for the choice listing what is actually on them.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;