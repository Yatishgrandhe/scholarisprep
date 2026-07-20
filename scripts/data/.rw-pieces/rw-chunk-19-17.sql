INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2fa3fdbc-86ab-469f-9b26-70c6ef57599a', 'The student wants to highlight the historical importance of Wheatley''s 1773 collection. Which choice most effectively uses information from the notes to accomplish this goal?', 'Phillis Wheatley, Early American Poet
- Phillis Wheatley was an enslaved woman in colonial Boston.
- In 1773 she published a collection titled Poems on Various Subjects, Religious and Moral.
- The collection was the first book of poetry published by an African American.
- Because some doubted she had written the poems, prominent Boston men signed a statement verifying her authorship.
- Wheatley''s poems often used classical references and formal verse.', NULL, '[{"id":"A","text":"Wheatley''s poems often used classical references and formal verse.","is_correct":false,"explanation":"This describes her poetic style but not the historical importance of the collection."},{"id":"B","text":"Phillis Wheatley was an enslaved woman who lived in colonial Boston.","is_correct":false,"explanation":"This identifies who she was but says nothing about the collection''s importance."},{"id":"C","text":"Because some doubted she had written the poems, prominent Boston men signed a statement verifying her authorship.","is_correct":false,"explanation":"This recounts the authorship controversy rather than the collection''s historical importance."},{"id":"D","text":"Published in 1773, Wheatley''s Poems on Various Subjects, Religious and Moral was the first book of poetry published by an African American.","is_correct":true,"explanation":"This pairs the collection with its status as a historic first, directly conveying its importance."}]'::jsonb, 'D', 'Step 1 — Locate the importance
The notes state the collection was {{yellow:the first book of poetry published by an African American}}.
Step 2 — Match the goal
To highlight historical importance, the correct choice must tie the 1773 collection to that landmark status, which choice D does.
Distractor analysis:
- A: Describes her style, not the collection''s importance.
- B: Identifies her background but not the collection''s significance.
- C: Recounts the authorship dispute rather than the historic milestone.', 'Historical importance here comes from the phrase ''first book of poetry.''', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;