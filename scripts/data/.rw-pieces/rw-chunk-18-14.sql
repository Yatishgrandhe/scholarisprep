INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fba78dfb-84ec-413f-b431-ecaf870897f1', 'The student wants to highlight how many ocean species rely on coral reefs despite the reefs'' small size. Which choice most effectively uses information from the notes to accomplish this goal?', 'Coral Reefs and Ocean Life
- Coral reefs cover less than one percent of the ocean floor.
- They provide a home for about one quarter of all ocean species.
- Reefs are built by tiny animals called coral polyps.
- Warmer water can cause corals to lose their color, an event called bleaching.
- Many groups are working to protect reefs from damage.', NULL, '[{"id":"A","text":"Coral reefs are built by tiny animals called coral polyps.","is_correct":false,"explanation":"This explains what builds reefs, not how many species depend on them relative to their size."},{"id":"B","text":"Many groups are working to protect coral reefs from damage.","is_correct":false,"explanation":"This addresses conservation efforts, not the contrast between size and number of species."},{"id":"C","text":"Although coral reefs cover less than one percent of the ocean floor, they provide a home for about one quarter of all ocean species.","is_correct":true,"explanation":"Correct: it contrasts the small area with the large share of species, exactly the intended emphasis."},{"id":"D","text":"Warmer water can cause corals to lose their color in an event called bleaching.","is_correct":false,"explanation":"This describes bleaching, not the size-versus-species contrast."}]'::jsonb, 'C', 'Step 1 — Find the two contrasting facts
The notes say reefs {{yellow:cover less than one percent of the ocean floor}} yet host about a quarter of ocean species.
Step 2 — Match the goal
Choice C joins the small size with the large number of species, achieving the contrast the goal requires.
Distractor analysis:
- A: Describes coral polyps, not the size-species contrast.
- B: Discusses protection efforts, not species dependence.
- D: Explains bleaching, unrelated to the goal.', 'Find the note that pairs the reefs'' tiny area with a large fraction of species.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;