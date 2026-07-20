INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('47580cc4-44c3-418b-8d14-d247396b6057', 'The student wants to highlight an environmental benefit of using wind turbines. Which choice most effectively uses information from the notes to accomplish this goal?', 'Wind Power
- Wind turbines turn moving air into electricity.
- They produce no air pollution while running.
- A single large turbine can power hundreds of homes.
- Wind does not blow at a steady speed all the time.
- Many countries are building more wind farms each year.', NULL, '[{"id":"A","text":"Wind turbines turn moving air into electricity.","is_correct":false,"explanation":"This explains how turbines work, not an environmental benefit."},{"id":"B","text":"Wind does not blow at a steady speed all the time.","is_correct":false,"explanation":"This points out a drawback, not an environmental benefit."},{"id":"C","text":"Wind turbines produce no air pollution while running.","is_correct":true,"explanation":"Correct: producing no air pollution is an environmental benefit."},{"id":"D","text":"Many countries are building more wind farms each year.","is_correct":false,"explanation":"This describes a trend, not an environmental benefit of the turbines."}]'::jsonb, 'C', 'Step 1 — Find the environmental benefit
The notes state that turbines {{yellow:produce no air pollution while running}}.
Step 2 — Match the goal
Choice C uses that note to highlight a clear environmental benefit, fulfilling the goal.
Distractor analysis:
- A: Explains the mechanism, not a benefit.
- B: States a drawback, the opposite of a benefit.
- D: Reports a growth trend, not an environmental benefit.', 'Find the note about pollution while the turbine runs.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;