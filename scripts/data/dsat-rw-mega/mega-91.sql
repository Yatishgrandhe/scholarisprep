BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2d90814a-6d85-41d4-b532-5d1bca82e79b', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a48cb7f3-e495-4cde-aede-e39544a40e11', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dc611ac9-0cfe-4771-bc9d-f9c8fff6e111', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('484a1045-db18-457d-994c-350c59299afb', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('27def3d1-762d-4a8a-baa8-06b5c803bfc2', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5a2ec906-a7ae-406e-99a5-6b28b32b37aa', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c54486a4-a657-4150-9dd3-7a1894a55e35', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b2bec71-a047-42b1-b08b-d018544a4782', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36747187-84cb-4834-8d7e-4407c4e236c7', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5778bb3b-9bf0-4123-944d-fbfd32df51f0', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cea6a2e3-6c40-4a76-8bad-956769dcf78b', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a971afb0-b174-482a-8cec-5ccf83b6eed0', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('51df6ddd-3227-483b-9195-945cf6a94f5e', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb51bcaa-49d3-43df-8bc2-a37f21ae33a4', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0e92cf84-9070-40ff-822b-aa71417b234e', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c287b2ab-55b5-4e94-be05-02acaa7a9e40', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('839a88c5-7d6e-4ed1-a974-d656e9c33aff', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ce7c11d-4bdd-40b0-8551-3b219c264531', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e49cb6e-0d41-4c56-b715-7aa6c45eafa6', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cfa4e797-c878-48cc-ab20-8146afe600fb', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
