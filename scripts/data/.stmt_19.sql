INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1713661e-563c-4521-93ac-ad5235c6137d', 'Which choice completes the text with the most logical and precise word or phrase?', 'Glaciers act like slow-moving rivers of ice. As they creep downhill over thousands of years, they carry rocks and grind against the land beneath them. This grinding can ______ deep valleys into solid mountain rock. Some of the world''s most dramatic landscapes, including wide U-shaped valleys, were shaped entirely by the steady pressure of moving ice.', NULL, '[{"id":"A","text":"carve","is_correct":true,"explanation":"Correct: grinding that shapes deep valleys into rock is carving them."},{"id":"B","text":"fill","is_correct":false,"explanation":"Reverse: the ice cuts valleys out, not fills them in."},{"id":"C","text":"paint","is_correct":false,"explanation":"No evidence: nothing involves coloring or painting the rock."},{"id":"D","text":"warm","is_correct":false,"explanation":"No evidence: temperature is not the cause discussed; grinding pressure is."}]'::jsonb, 'A', 'Step 1 — Find the clue
The text says glaciers {{yellow:grind against the land beneath them}} and shaped wide U-shaped valleys.
Step 2 — Match the word
Grinding that shapes deep valleys into solid rock is carving them, so ''carve'' fits precisely.
Distractor analysis:
- B: ''Fill'' reverses the clue; the ice cuts valleys out, not in.
- C: ''Paint'' is unsupported and unrelated to grinding rock.
- D: ''Warm'' has no support; the cause is grinding pressure, not heat.', 'Grinding that forms deep valleys in rock does what to the rock?', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
