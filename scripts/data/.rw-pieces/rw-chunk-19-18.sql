INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6d7029ac-c3f8-4521-a6fb-ee27bdd6cf89', 'The student wants to explain how a tardigrade protects its cells while dried out. Which choice most effectively uses information from the notes to accomplish this goal?', 'Tardigrades and Extreme Survival
- Tardigrades, also called water bears, are microscopic animals less than a millimeter long.
- They can survive being completely dried out for years.
- When dehydrated, a tardigrade replaces the water in its cells with a protective sugar.
- This sugar forms a glass-like coating that keeps the cell''s structures from collapsing.
- Once water returns, the tardigrade can become active again within hours.', NULL, '[{"id":"A","text":"Tardigrades, also called water bears, are microscopic animals less than a millimeter long.","is_correct":false,"explanation":"This describes the animal''s size but not how its cells are protected."},{"id":"B","text":"When dehydrated, a tardigrade replaces the water in its cells with a protective sugar that forms a glass-like coating, keeping the cell''s structures from collapsing.","is_correct":true,"explanation":"This combines the sugar replacement and the glass-like coating to explain how the cells are protected, fulfilling the goal."},{"id":"C","text":"Once water returns, a tardigrade can become active again within hours.","is_correct":false,"explanation":"This describes recovery after rehydration, not the protection that occurs while dried out."},{"id":"D","text":"Tardigrades can survive being completely dried out for years, which makes them remarkable animals.","is_correct":false,"explanation":"This states the survival fact and an opinion but does not explain the cell-protection mechanism."}]'::jsonb, 'B', 'Step 1 — Find the mechanism
The notes say the sugar {{yellow:forms a glass-like coating that keeps the cell''s structures from collapsing}}.
Step 2 — Match the goal
The student wants to explain how cells are protected, so the correct choice must link the sugar replacement to the protective coating, which choice B does.
Distractor analysis:
- A: Gives the animal''s size, not the protective mechanism.
- C: Describes recovery, not protection during drying.
- D: States survival ability and an opinion without the mechanism.', 'The goal asks ''how,'' so find the choice describing the sugar and the coating it forms.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;