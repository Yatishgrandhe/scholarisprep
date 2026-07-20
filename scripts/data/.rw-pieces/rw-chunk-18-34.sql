INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c665366-d3e2-46c4-ae52-1f1aa2cd28df', 'The student wants to specify where and when the first modern Olympics took place. Which choice most effectively uses information from the notes to accomplish this goal?', 'The First Modern Olympic Games
- The first modern Olympic Games were held in Athens, Greece, in 1896.
- About 240 athletes competed.
- All of the athletes were men.
- Athletes came from 14 countries.', NULL, '[{"id":"A","text":"About 240 athletes competed in the first modern Olympic Games.","is_correct":false,"explanation":"True but off-goal: it gives the number of athletes, not the place and date."},{"id":"B","text":"The first modern Olympic Games were held in Athens, Greece, in 1896.","is_correct":true,"explanation":"Correct: it names both the location (Athens) and the year (1896), meeting both parts of the goal."},{"id":"C","text":"Athletes at the first modern Olympic Games came from 14 different countries.","is_correct":false,"explanation":"True but off-goal: it states the number of countries, not where and when."},{"id":"D","text":"All of the athletes at the first modern Olympic Games were men.","is_correct":false,"explanation":"True but irrelevant: it describes the athletes, not the place and date."}]'::jsonb, 'B', 'Step 1 — Find the place-and-date clue
The notes say the Games were {{yellow:held in Athens, Greece, in 1896}}.
Step 2 — Match the goal
Choice B supplies both the location and the year, satisfying both parts of the goal.
Distractor analysis:
- A: Gives the athlete count, not the place and date.
- C: Gives the number of countries, not where and when.
- D: Describes the athletes as all men, not the place and date.', 'Find the choice that names both the city and the year.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;