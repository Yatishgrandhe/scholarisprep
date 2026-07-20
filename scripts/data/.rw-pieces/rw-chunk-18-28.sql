INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0884d2f-1479-4694-9ec8-d1c35af3a5dd', 'The student wants to explain why fireflies produce light. Which choice most effectively uses information from the notes to accomplish this goal?', 'Bioluminescent Organisms
- Some organisms can produce their own light through a chemical reaction.
- This ability is called bioluminescence.
- Fireflies use light to attract mates.
- Certain deep-sea fish use light to lure prey.', NULL, '[{"id":"A","text":"Fireflies produce light through a chemical reaction inside their bodies.","is_correct":false,"explanation":"True but off-goal: it explains how fireflies make light, not why they do."},{"id":"B","text":"Fireflies use their light to attract mates.","is_correct":true,"explanation":"Correct: it states the reason fireflies produce light, matching the goal."},{"id":"C","text":"Certain deep-sea fish use their light to lure prey.","is_correct":false,"explanation":"True but irrelevant: it concerns deep-sea fish, not fireflies."},{"id":"D","text":"The ability to produce light is called bioluminescence.","is_correct":false,"explanation":"True but off-goal: it defines the term rather than giving the fireflies'' reason."}]'::jsonb, 'B', 'Step 1 — Find the reason clue
The notes say {{yellow:Fireflies use light to attract mates}}.
Step 2 — Match the goal
Choice B reports that fireflies'' light attracts mates, explaining why they produce it.
Distractor analysis:
- A: Explains how (chemical reaction), not why.
- C: Discusses deep-sea fish, not fireflies.
- D: Defines bioluminescence rather than giving the reason.', 'Look for the choice that names what fireflies'' light is for.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;