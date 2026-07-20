INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('29cefbbb-bc03-4f61-93ab-31df86ee0206', 'The student wants to explain how the printing press made books more widely available. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Spread of the Printing Press in Europe
- Around 1440 Johannes Gutenberg developed a printing press using movable metal type.
- Before the press, books in Europe were copied by hand, a slow and costly process.
- A single press could produce hundreds of identical pages in a day.
- The number of books in Europe grew enormously within a few decades.
- Lower prices allowed more people than ever to own books.', NULL, '[{"id":"A","text":"Around 1440 Johannes Gutenberg developed a printing press using movable metal type.","is_correct":false,"explanation":"Too narrow: it credits the invention but does not explain how books became more available."},{"id":"B","text":"By producing hundreds of identical pages a day, the press lowered prices and let more people than ever own books.","is_correct":true,"explanation":"Correct: it links the press''s output to lower prices and broader ownership, explaining wider availability."},{"id":"C","text":"Before the press, books in Europe were copied by hand, a slow and costly process.","is_correct":false,"explanation":"True but off-goal: it describes the old method without explaining how the press increased availability."},{"id":"D","text":"The number of books in Europe grew enormously within a few decades.","is_correct":false,"explanation":"True but incomplete: it states an outcome but not the mechanism that made books available to more people."}]'::jsonb, 'B', 'Step 1 — Find the availability mechanism
The notes say a press could {{yellow:produce hundreds of identical pages in a day}} and that {{yellow:Lower prices allowed more people than ever to own books}}.
Step 2 — Match the goal
Choice B connects the press''s fast output to falling prices and broader ownership, explaining how books became widely available.
Distractor analysis:
- A: Credits the invention only.
- B is correct.
- C: Describes the old hand-copying method.
- D: States growth but not how availability spread to more people.', 'Wider availability means linking faster production to lower prices and more owners.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;