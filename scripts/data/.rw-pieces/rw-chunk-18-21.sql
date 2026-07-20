INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cee7b017-1753-42bb-b90a-0806e99c8f3d', 'The student wants to specify the direction in which people moved during the Great Migration. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Great Migration
- The Great Migration was the movement of millions of Black Americans within the United States.
- It took place mainly between 1916 and 1970.
- People moved from the rural South to cities in the North and West.
- Many sought better jobs and an escape from harsh laws.
- The movement reshaped the populations of cities like Chicago and Detroit.', NULL, '[{"id":"A","text":"The Great Migration took place mainly between 1916 and 1970.","is_correct":false,"explanation":"This gives the time period, not the direction of movement."},{"id":"B","text":"During the Great Migration, people moved from the rural South to cities in the North and West.","is_correct":true,"explanation":"Correct: it states the direction of movement, from South to North and West."},{"id":"C","text":"Many people sought better jobs and an escape from harsh laws.","is_correct":false,"explanation":"This gives reasons for moving, not the direction."},{"id":"D","text":"The movement reshaped the populations of cities like Chicago and Detroit.","is_correct":false,"explanation":"This describes the effect on cities, not the direction of movement."}]'::jsonb, 'B', 'Step 1 — Find the direction detail
The notes state that {{yellow:People moved from the rural South to cities in the North and West}}.
Step 2 — Match the goal
Choice B uses that note to specify the direction of movement, fulfilling the goal.
Distractor analysis:
- A: Gives dates, not direction.
- C: Gives motives, not direction.
- D: Describes effects on cities, not direction.', 'Look for the note that names where people moved from and to.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;