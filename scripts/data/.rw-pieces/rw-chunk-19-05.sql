INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe117c69-a417-41b9-8889-51a8e779dbdc', 'The student wants to highlight the main advantage of microfragmentation over natural coral growth. Which choice most effectively uses information from the notes to accomplish this goal?', 'Coral Reef Restoration Using Microfragmentation
- Coral reefs worldwide are declining due to warming oceans and pollution.
- Traditional coral growth in the wild can take decades to rebuild a reef.
- Microfragmentation is a method that cuts corals into tiny pieces to spur rapid regrowth.
- Fragments grown this way can develop up to 25 times faster than corals in the wild.
- Restored fragments are later transplanted onto damaged reefs.', NULL, '[{"id":"A","text":"Coral reefs worldwide are declining due to warming oceans and pollution.","is_correct":false,"explanation":"True but irrelevant: it states the problem, not microfragmentation''s advantage."},{"id":"B","text":"Unlike natural growth that can take decades, microfragmentation lets coral fragments develop up to 25 times faster.","is_correct":true,"explanation":"Correct: it contrasts slow wild growth with the much faster microfragmentation rate, naming the advantage."},{"id":"C","text":"Microfragmentation cuts corals into tiny pieces that are later transplanted onto damaged reefs.","is_correct":false,"explanation":"True but off-goal: it describes the procedure without comparing it to natural growth or noting an advantage."},{"id":"D","text":"Restored fragments are later transplanted onto damaged reefs.","is_correct":false,"explanation":"Too narrow: it describes a final step, not the speed advantage of the method."}]'::jsonb, 'B', 'Step 1 — Find the comparison
The notes say wild growth can {{yellow:take decades to rebuild a reef}} while fragments can {{yellow:develop up to 25 times faster than corals in the wild}}.
Step 2 — Match the goal
Choice B contrasts these two rates, directly presenting the main advantage of microfragmentation.
Distractor analysis:
- A: States the broader problem, not the method''s advantage.
- C: Describes the technique but offers no comparison.
- D: Names only the transplant step.', 'The advantage is about speed, so find the choice that contrasts decades of wild growth with the faster method.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;