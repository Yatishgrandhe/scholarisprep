BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9ed6b477-a596-43c5-b700-3c4c5cc2b4fa', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('02553672-9a7f-4a85-8eef-6993a31b22bc', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('0d006191-a269-4415-9f67-7cbb45eb2c49', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('34b49534-c449-47e8-bafc-3f9aba3f68f0', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('e688cfbb-0c20-4ccf-9685-0a2a48afbd14', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('d1d06182-638b-47a9-9c4a-dfcd9689b18c', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('c8434f88-ff76-4a2c-a03a-d8ffe5514e19', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('e1bb0f16-75b4-4a14-8591-8916f16649e0', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('fff26634-c91d-4a7e-814c-deffd4e3f55b', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('09b97800-0d30-4219-bf50-bd4c73fce98b', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('e2577fbf-ad45-443b-9117-ae07dcd12aed', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('01eba4df-41e1-4973-bc8e-2da6ff6acd0f', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('a4f04f88-1b2a-4f8d-86dd-0eb67455e8af', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('7ec71c41-00a4-41f9-93cc-1babc3b6645e', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('899e6c29-31e5-4ca7-856f-f379683ae332', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('69798359-bbc6-439a-a0a5-31b3da14044e', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('93975f10-bff5-48e7-8104-d2bf76a36527', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('3b25de8b-a42c-43ab-973a-39a845052481', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('f4fdb3f8-e4bd-4985-bbdc-3a0b46c6cddc', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
VALUES ('db12870b-2b24-4afa-915b-81d274963682', 'Which choice completes the sentence so that it follows the conventions of Standard English?

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
COMMIT;
