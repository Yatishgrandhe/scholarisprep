INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72379895-4481-4c96-9900-81ae1c09c8e7', 'The student wants to emphasize how the destruction of Nineveh paradoxically helped preserve the tablets. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Library of Ashurbanipal
- Ashurbanipal was a king of Assyria in the seventh century BCE.
- He assembled a vast collection of clay tablets in his capital, Nineveh.
- The tablets were inscribed with cuneiform writing.
- The collection included literary, scientific, and administrative texts.
- Many tablets survived because a fire that destroyed Nineveh baked the clay hard.', NULL, '[{"id":"A","text":"Ashurbanipal, a seventh-century BCE king of Assyria, collected tablets inscribed with cuneiform writing.","is_correct":false,"explanation":"This focuses on the king and the writing system, not the preservation paradox."},{"id":"B","text":"The collection included literary, scientific, and administrative texts gathered at Nineveh.","is_correct":false,"explanation":"This describes the contents but says nothing about destruction aiding preservation."},{"id":"C","text":"Although a fire destroyed Nineveh, that same fire baked the clay tablets hard, allowing many of them to survive.","is_correct":true,"explanation":"This pairs the destruction with the preservation, capturing the paradox the goal requires."},{"id":"D","text":"The fire that destroyed Nineveh ended Ashurbanipal''s collection of clay tablets forever.","is_correct":false,"explanation":"This contradicts the notes, which say many tablets survived because of the fire."}]'::jsonb, 'C', 'Step 1 — Find the paradox
The notes state that {{yellow:a fire that destroyed Nineveh baked the clay hard}}, which is why many tablets survived.
Step 2 — Match the goal
Choice C explicitly links the destruction to the survival, conveying the paradox.
Distractor analysis:
- A: Discusses the king and cuneiform, not preservation.
- B: Lists contents without the paradox.
- D: Reverses the notes by claiming the fire ended the collection.', 'The goal needs both the destruction and the survival joined together.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;