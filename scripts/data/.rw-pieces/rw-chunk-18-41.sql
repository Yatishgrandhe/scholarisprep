INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('754725d1-35d5-45bd-89a6-355258875a7d', 'The student wants to explain why Pompeii''s buildings survived so well. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Ancient City of Pompeii
- Pompeii was a Roman city near the volcano Mount Vesuvius.
- In 79 CE the volcano erupted and buried the city in ash.
- The ash preserved buildings and objects for centuries.
- Today visitors can walk through the uncovered streets.', NULL, '[{"id":"A","text":"Pompeii was a Roman city near the volcano Mount Vesuvius.","is_correct":false,"explanation":"This gives location, not why buildings survived."},{"id":"B","text":"In 79 CE the volcano erupted and buried the city in ash.","is_correct":false,"explanation":"This describes the eruption but not the preservation it caused."},{"id":"C","text":"The ash preserved buildings and objects for centuries.","is_correct":true,"explanation":"This directly explains why the buildings survived."},{"id":"D","text":"Today visitors can walk through the uncovered streets.","is_correct":false,"explanation":"This describes present-day tourism, not why buildings survived."}]'::jsonb, 'C', 'Step 1 — Find the preservation note
The goal is why the buildings survived, and the notes state {{yellow:The ash preserved buildings and objects for centuries}}.
Step 2 — Match the goal
Choice C uses that note to explain the cause of the buildings'' survival.
Distractor analysis:
- A: Gives the city''s location, not the reason it survived.
- B: Describes the eruption but stops short of explaining preservation.
- D: Describes modern visits, not why the city survived.', 'Look for the note that says the ash preserved things.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;