INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b907b593-773a-42c2-a2ec-7fefa60579ea', 'The student wants to explain a physical feature that helps the cheetah run fast. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Speed of Cheetahs
- The cheetah is the fastest land animal on Earth.
- It can run as fast as 70 miles per hour.
- A cheetah can only keep up its top speed for short bursts.
- Its flexible spine helps it take very long strides.
- Cheetahs use their speed to catch fast-moving prey.', NULL, '[{"id":"A","text":"The cheetah is the fastest land animal on Earth.","is_correct":false,"explanation":"This states its ranking, not a physical feature that aids speed."},{"id":"B","text":"The cheetah''s flexible spine helps it take very long strides.","is_correct":true,"explanation":"Correct: it names a physical feature, the flexible spine, that aids the cheetah''s speed."},{"id":"C","text":"A cheetah can only keep up its top speed for short bursts.","is_correct":false,"explanation":"This describes a limit on its speed, not a feature that helps it run fast."},{"id":"D","text":"Cheetahs use their speed to catch fast-moving prey.","is_correct":false,"explanation":"This explains why they run fast, not a physical feature that enables it."}]'::jsonb, 'B', 'Step 1 — Find the physical feature
The notes state that {{yellow:Its flexible spine helps it take very long strides}}.
Step 2 — Match the goal
Choice B names the flexible spine as the feature aiding the cheetah''s speed, exactly the goal.
Distractor analysis:
- A: States a ranking, not a body feature.
- C: Describes a limitation, not an enabling feature.
- D: Gives a purpose for speed, not a physical feature.', 'Look for the note describing a body part that helps the cheetah move.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;