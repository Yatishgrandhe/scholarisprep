INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('be4a22e0-fc28-443e-8f7b-20cb2e3abe94', 'The student wants to explain how the printing press affected book ownership. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Spread of the Printing Press
- Johannes Gutenberg introduced movable-type printing to Europe around 1440.
- Before the press, books were copied by hand, a slow and costly process.
- Within fifty years, printing presses operated in over 250 European cities.
- The lower cost of printed books allowed more people to own and read them.
- Rising literacy contributed to the rapid spread of new ideas.', NULL, '[{"id":"A","text":"Johannes Gutenberg introduced movable-type printing to Europe around 1440.","is_correct":false,"explanation":"This gives the origin date but says nothing about book ownership."},{"id":"B","text":"Because printed books cost less than hand-copied ones, more people were able to own and read them.","is_correct":true,"explanation":"This connects the lower cost to increased ownership, matching the goal."},{"id":"C","text":"Within fifty years, printing presses operated in over 250 European cities.","is_correct":false,"explanation":"This describes the spread of presses, not the effect on ownership."},{"id":"D","text":"Rising literacy contributed to the rapid spread of new ideas across Europe.","is_correct":false,"explanation":"This addresses literacy and ideas, not book ownership specifically."}]'::jsonb, 'B', 'Step 1 — Find the ownership link
The notes state that {{yellow:The lower cost of printed books allowed more people to own and read them}}.
Step 2 — Match the goal
Choice B contrasts printed and hand-copied cost to explain increased ownership.
Distractor analysis:
- A: Gives origin date, not ownership effects.
- C: Describes spread of presses, not ownership.
- D: Focuses on literacy and ideas, not ownership.', 'The goal is about who could own books, so the answer must mention ownership.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;