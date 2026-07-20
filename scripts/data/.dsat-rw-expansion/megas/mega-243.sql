BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eb2c3772-6c9d-4f02-8450-3048b0b95ee4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6701e60a-2250-40ff-96a4-e9991c5c2142', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the station reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cd9c90be-a03c-4eaf-9304-a29420f62f88', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('229a9039-cb71-4d1a-ad44-336ccc7ba2d2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest theater reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('905a4889-dfe4-4172-99db-41f441472101', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('abb30d95-d452-4385-9b01-6ac2ed943c57', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the theater reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e5b807e-d9a1-4110-9da5-6b74e90400ba', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a6394039-1891-4ab2-b0be-a9c05419500d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest museum reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72afebdb-31aa-4ec8-9e5b-146a69e38568', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('987ade1f-63b8-436a-bdbe-fb887d362309', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the station reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b76ac12-4be6-4b55-8ef7-adbb86068f6f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b204a10a-2dbb-4220-a47d-bd9503e210d8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1372e061-9135-49d5-8915-8591e12f03e3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dbd0c6b3-13c0-4aaf-817d-0acc0e6e71de', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the theater reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('50e6e782-417e-432a-9155-9c1f7c3d0827', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
