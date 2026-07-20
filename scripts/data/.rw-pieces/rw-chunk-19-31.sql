INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6ccaf5a-3061-41a6-9d39-aa7a0cc5a4e4', 'The student wants to highlight the contrast between Dickinson''s published output during her life and what was found afterward. Which choice most effectively uses information from the notes to accomplish this goal?', 'Emily Dickinson''s Manuscripts
- The poet Emily Dickinson lived in Amherst, Massachusetts, in the nineteenth century.
- She published fewer than a dozen poems during her lifetime.
- After her death, nearly 1,800 poems were found among her papers.
- Many were bound by hand into small booklets called fascicles.
- Editors later altered her unusual punctuation and capitalization for early printings.', NULL, '[{"id":"A","text":"Emily Dickinson lived in Amherst, Massachusetts, during the nineteenth century.","is_correct":false,"explanation":"This gives biographical setting but no contrast in output."},{"id":"B","text":"Although Dickinson published fewer than a dozen poems in her lifetime, nearly 1,800 were found among her papers after her death.","is_correct":true,"explanation":"This directly contrasts the small lifetime output with the large posthumous discovery."},{"id":"C","text":"Editors later altered Dickinson''s unusual punctuation and capitalization for early printings.","is_correct":false,"explanation":"This concerns editorial changes, not the output contrast."},{"id":"D","text":"Many of Dickinson''s poems were bound by hand into small booklets called fascicles.","is_correct":false,"explanation":"This describes the fascicles, not the contrast in output."}]'::jsonb, 'B', 'Step 1 — Find the two quantities
The notes state she {{yellow:published fewer than a dozen poems during her lifetime}} while after her death {{yellow:nearly 1,800 poems were found among her papers}}.
Step 2 — Match the goal
Choice B juxtaposes the small published number with the large found number.
Distractor analysis:
- A: Biographical setting, no contrast.
- C: Editorial alterations, not output.
- D: Describes fascicles, not the contrast.', 'The goal needs both numbers, what she published and what was found, in contrast.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;