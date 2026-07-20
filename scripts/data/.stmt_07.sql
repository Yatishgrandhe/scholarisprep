INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd423d2a-4865-4bb1-88ea-62b73f1528d5', 'As used in the text, the word "tireless" most nearly means', 'The committee praised the volunteer for her ______ efforts. She arrived first each morning, stayed late into the evening, and never complained, even when the work was difficult and the thanks were few.', NULL, '[{"id":"A","text":"careless","is_correct":false,"explanation":"Incorrect: nothing suggests she was sloppy; she was praised."},{"id":"B","text":"unpaid","is_correct":false,"explanation":"Incorrect: she is a volunteer, but the word describes her energy, not her pay."},{"id":"C","text":"persistent","is_correct":true,"explanation":"Correct: she arrived first, stayed late, and never complained, showing untiring effort."},{"id":"D","text":"brief","is_correct":false,"explanation":"Incorrect: she stayed long hours, so her effort was not short."}]'::jsonb, 'C', 'Step 1 — Find the clue
The text says she arrived first each morning, {{yellow:stayed late into the evening, and never complained}}.
Step 2 — Match the word
Working long hours without complaint shows ''persistent'' effort that does not tire.
Distractor analysis:
- A: ''careless'' contradicts the praise she received.
- B: ''unpaid'' is true of a volunteer but does not capture her energy.
- D: ''brief'' contradicts her long hours.', 'She ''stayed late'' and ''never complained.''', 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
