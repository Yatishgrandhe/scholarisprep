INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1ebf3c31-959d-49dd-9910-2c5b0a84b711', 'The student wants to emphasize how few of Dickinson''s poems were published during her life. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Poet Emily Dickinson
- Emily Dickinson lived in Amherst, Massachusetts, in the 1800s.
- She wrote nearly 1,800 poems during her lifetime.
- Fewer than a dozen of her poems were published while she was alive.
- Most of her work became famous only after her death.', NULL, '[{"id":"A","text":"Emily Dickinson lived in Amherst, Massachusetts, during the 1800s.","is_correct":false,"explanation":"True but irrelevant: it states where she lived, not how few poems were published."},{"id":"B","text":"Emily Dickinson wrote nearly 1,800 poems during her lifetime.","is_correct":false,"explanation":"True but off-goal: it counts her total output, not the few that were published."},{"id":"C","text":"Although Dickinson wrote nearly 1,800 poems, fewer than a dozen were published while she was alive.","is_correct":true,"explanation":"Correct: it contrasts her large output with the few published, emphasizing how few appeared in her lifetime."},{"id":"D","text":"Most of Dickinson''s work became famous only after her death.","is_correct":false,"explanation":"True but off-goal: it stresses later fame, not the number published during her life."}]'::jsonb, 'C', 'Step 1 — Find the publication clue
The notes say {{yellow:Fewer than a dozen of her poems were published while she was alive}}.
Step 2 — Match the goal
Choice C sets her nearly 1,800 poems against the fewer than a dozen published, emphasizing how few were published during her life.
Distractor analysis:
- A: States her hometown, not publication numbers.
- B: Counts her total poems, not the few published.
- D: Emphasizes posthumous fame, not the few published in life.', 'Find the choice that highlights the very small number published while she lived.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;