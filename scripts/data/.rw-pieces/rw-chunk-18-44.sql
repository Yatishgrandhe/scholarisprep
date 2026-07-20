INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('834de0a9-2a21-4f7a-81ae-961b24e5f602', 'The student wants to clarify what the Underground Railroad actually was. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Underground Railroad
- The Underground Railroad was a network that helped enslaved people escape to freedom.
- It was not a real railroad but a series of secret routes and safe houses.
- Harriet Tubman led many people north along these routes.
- Helpers along the way were called conductors.', NULL, '[{"id":"A","text":"It was not a real railroad but a series of secret routes and safe houses.","is_correct":true,"explanation":"This clarifies its true nature as routes and safe houses, not a railroad."},{"id":"B","text":"Harriet Tubman led many people north along these routes.","is_correct":false,"explanation":"This names a leader, not what the network actually was."},{"id":"C","text":"Helpers along the way were called conductors.","is_correct":false,"explanation":"This defines a term, not the network itself."},{"id":"D","text":"The Underground Railroad helped enslaved people escape to freedom.","is_correct":false,"explanation":"This states the purpose but does not clarify it was not a real railroad."}]'::jsonb, 'A', 'Step 1 — Find the clarifying note
The goal is to clarify what it actually was, and the notes state {{yellow:It was not a real railroad but a series of secret routes and safe houses}}.
Step 2 — Match the goal
Choice A corrects the literal meaning, clarifying the true nature of the network.
Distractor analysis:
- B: Names Tubman as a leader, not what the network was.
- C: Defines the term ''conductors,'' not the network itself.
- D: States the purpose but never clarifies it was not a literal railroad.', 'Look for the note that says it was not a real railroad.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;