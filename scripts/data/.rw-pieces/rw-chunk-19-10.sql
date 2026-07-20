INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6b8a8e77-4781-4d25-8233-08190a16d5b6', 'The student wants to explain why Lovelace is considered a pioneer of computing. Which choice most effectively uses information from the notes to accomplish this goal?', 'Ada Lovelace and Early Computing
- Ada Lovelace was a 19th-century English mathematician.
- She studied Charles Babbage''s design for a mechanical computer called the Analytical Engine.
- In her notes, she wrote a sequence of steps the machine could follow to calculate numbers.
- Many historians regard this sequence as the first published computer algorithm.
- She also predicted that such machines could one day manipulate symbols, not just numbers.', NULL, '[{"id":"A","text":"Ada Lovelace was a 19th-century English mathematician who studied Babbage''s Analytical Engine.","is_correct":false,"explanation":"Too narrow: it identifies her interest but not the achievement that made her a pioneer."},{"id":"B","text":"Lovelace wrote what many historians regard as the first published computer algorithm and foresaw that such machines could manipulate symbols, not just numbers.","is_correct":true,"explanation":"Correct: it combines her first algorithm with her forward-looking prediction, explaining her pioneering role."},{"id":"C","text":"Lovelace studied Charles Babbage''s design for a mechanical computer called the Analytical Engine.","is_correct":false,"explanation":"Too narrow: studying a design alone does not establish her as a pioneer."},{"id":"D","text":"Babbage designed a mechanical computer called the Analytical Engine.","is_correct":false,"explanation":"Off-goal: it credits Babbage, not Lovelace, and names no pioneering contribution of hers."}]'::jsonb, 'B', 'Step 1 — Identify her contributions
The notes say her sequence is regarded as {{yellow:the first published computer algorithm}} and that she {{yellow:predicted that such machines could one day manipulate symbols, not just numbers}}.
Step 2 — Match the goal
Choice B unites both achievements to explain why she is seen as a computing pioneer.
Distractor analysis:
- A: Notes her study but not her achievement.
- B is correct.
- C: Only that she studied the design.
- D: Focuses on Babbage, not Lovelace.', 'A pioneer is defined by original contributions, so combine her algorithm with her prediction.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;