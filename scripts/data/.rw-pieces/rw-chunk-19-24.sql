INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ddb0f01d-f21c-4dc0-a143-153138d51a6b', 'The student wants to convey the extraordinary scale of the Arctic tern''s yearly migration. Which choice most effectively uses information from the notes to accomplish this goal?', 'The Migration of the Arctic Tern
- The Arctic tern is a small seabird that breeds in the Arctic.
- Each year it migrates to the Antarctic and back, the longest known migration of any animal.
- Because it follows summer in both hemispheres, the tern sees more daylight than any other animal.
- A single tern may travel more than 40,000 miles in one year.
- Over a lifetime, a tern''s total travel can equal several trips to the moon and back.', NULL, '[{"id":"A","text":"The Arctic tern is a small seabird that breeds in the Arctic.","is_correct":false,"explanation":"This identifies the bird but conveys nothing about the scale of its migration."},{"id":"B","text":"Each year the Arctic tern migrates from the Arctic to the Antarctic and back, traveling more than 40,000 miles in the longest known migration of any animal.","is_correct":true,"explanation":"This combines the distance and the record status to convey the extraordinary scale of the migration."},{"id":"C","text":"Because it follows summer in both hemispheres, the Arctic tern sees more daylight than any other animal.","is_correct":false,"explanation":"This emphasizes daylight exposure rather than the scale of the migration."},{"id":"D","text":"Over a lifetime, an Arctic tern''s total travel can equal several trips to the moon and back.","is_correct":false,"explanation":"This describes lifetime travel rather than the scale of the yearly migration the goal specifies."}]'::jsonb, 'B', 'Step 1 — Find the scale
The notes say a tern may travel more than 40,000 miles in one year, in {{yellow:the longest known migration of any animal}}.
Step 2 — Match the goal
The student wants the scale of the yearly migration, so the correct choice must pair the annual distance with the record status, which choice B does.
Distractor analysis:
- A: Identifies the bird without conveying scale.
- C: Highlights daylight, not migration scale.
- D: Refers to lifetime travel, not the yearly migration specified.', 'Scale of the yearly trip comes from the annual distance plus the ''longest known migration'' claim.', 'Expression of Ideas', 'Rhetorical Synthesis', 'reading_writing', 'expression', 'SYN', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"generator":"scholaris_ai_v1","model":"gemma-4-26b-a4b-it","original":true,"explanation_v2":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;