BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8cee28b3-4910-4ec8-b1a0-0bbcbdb4777f', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6ec36f2f-282a-49f2-b459-28ede5d1333f', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4bee94e7-1db3-4f1d-8d0b-d13cf13c6374', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('98bcf7e1-decc-4fe3-8d94-5268a421ea53', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b7b0298b-b3bb-49e1-a3de-66801926e035', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('964a3c08-38aa-4bcd-8210-87ab410e7827', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b5e5a1b6-e8f7-42c7-9c82-b379e7b42c8f', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('902a9392-6f09-426c-b7c1-daf8913eef75', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6467d8bc-89d6-4c53-84ac-d8c90d710d4d', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7bdd1a6b-5047-4602-980a-d18450c54d9f', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('16e3b82f-bf8b-4316-a463-dfa7485402a9', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2df5f56c-e562-4bea-8d1e-0809e295cc4a', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d23b1fb8-4171-4958-9344-5e7c5ee7d1ff', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('51c5a510-1d92-4e9e-a742-edf3d558fea0', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f422cd3e-9e5f-4f08-b25c-21025d6e62a2', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6da22757-e4da-4962-811d-21bd4feec26e', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4428da1e-3ef4-47cf-a68d-873c29d65a73', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('47ed725c-9249-40f9-8cbd-e662d4fe037d', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9ca5954a-5002-4f28-82e3-3a75462e67fa', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('228dd75d-aac1-4cbd-bdaf-422906436cf2', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
