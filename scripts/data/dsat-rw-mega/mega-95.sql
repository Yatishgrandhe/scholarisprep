BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d2156a03-69bd-4f87-83c2-50069c6ae36c', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a67e6f32-c1ba-4331-b073-e7e1f9b6ddc4', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a1e5b976-72bf-436d-8beb-93b3db7b4ff6', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1e2cb3d0-dd25-477b-85de-09487fda16e5', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5427cbb1-ed0b-4dcc-b68e-71c959d9a49c', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c25f6885-964e-4af4-92af-f76c02cc2548', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('246add9a-f9ce-439e-b057-a5b25345c0f7', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6d72efc-9a26-44b5-b486-ccc4e0b18490', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7b2cf5ea-f07d-4b8b-8b11-8e4bc33d2109', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f292efa8-0bdc-4812-8963-51377728e03b', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60b51254-975b-414d-b68c-d60a6be6fa79', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('41df2c30-c11f-4a83-a097-2eef07257f75', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('57140f57-b44b-499f-9bdd-77d56317aa89', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3cb2d27e-4974-446c-af88-0fc34f7e213f', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d66547b3-4e8d-412b-8320-ad18cfc5231f', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af2bd4ac-4327-4ef7-97ee-ccea3dc44546', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('305658ca-5e4e-4fe3-8558-52190bb9bb59', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('303bd3e8-1b62-45c3-8ead-1f5d073f4e18', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"literature","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('98e9d69d-31bd-4775-81ca-8e36a9526777', 'Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the students asked follow up questions ______ continued.', NULL, NULL, '[{"id":"A","text":"…ended, the…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…ended the…","is_correct":false,"explanation":"Incorrect boundary: …ended the… creates a run-on or splice."},{"id":"C","text":"…ended; the…","is_correct":false,"explanation":"Incorrect boundary: …ended; the… creates a run-on or splice."},{"id":"D","text":"…ended: the…","is_correct":false,"explanation":"Incorrect boundary: …ended: the… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

After the lecture ended the

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …ended, the….

Distractor analysis:
- B: Incorrect boundary: …ended the… creates a run-on or splice.
- C: Incorrect boundary: …ended; the… creates a run-on or splice.
- D: Incorrect boundary: …ended: the… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"science","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1f7104d1-8f62-4ea1-a8d6-f69d4588790b', 'Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the proposal it was thorough and well documented ______ continued.', NULL, NULL, '[{"id":"A","text":"…proposal; it…","is_correct":true,"explanation":"Correct (A). Correct boundary punctuation."},{"id":"B","text":"…proposal, it…","is_correct":false,"explanation":"Incorrect boundary: …proposal, it… creates a run-on or splice."},{"id":"C","text":"…proposal it…","is_correct":false,"explanation":"Incorrect boundary: …proposal it… creates a run-on or splice."},{"id":"D","text":"…proposal: it…","is_correct":false,"explanation":"Incorrect boundary: …proposal: it… creates a run-on or splice."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
The stem tests boundaries conventions. Which choice completes the sentence so that it follows the conventions of Standard English?

The committee reviewed the 

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: …proposal; it….

Distractor analysis:
- B: Incorrect boundary: …proposal, it… creates a run-on or splice.
- C: Incorrect boundary: …proposal it… creates a run-on or splice.
- D: Incorrect boundary: …proposal: it… creates a run-on or splice.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"rw_subtype":"boundaries","rw_format":"grammar_blank","dsat_blueprint_v1":true,"dsat_topic":"social_studies","generator":"generate-dsat-rw-bank.mjs","explanation_v2":true,"blueprint_version":"dsat_blueprint_v1","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
