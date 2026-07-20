BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff73a174-548b-4d97-b78d-ebbc612f3b4f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('33f982c6-db17-4d88-8503-fc2154e1204f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('be3215d7-60ca-457b-8756-5c05df468a30', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('55efdd6b-f9db-4590-82a9-e4e502cd3ad7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('42f5e0ba-9afb-4389-aa1b-c44ac8b1dc2c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('af152f21-fcb6-4d38-b79a-0618aa5b2004', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('fc9600f3-837a-4a03-a514-440ef304304a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('bffa093d-49b9-49dc-b035-38a9e74ba75f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('59bcfa10-5ee1-4ffd-96d0-d6f7ca250210', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('6fae309b-3971-4604-88a2-c0681223bc48', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('30dd65ab-6672-4bb9-b3f5-b70460e8afbc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest archive reopened last spring}} and ''thousands of visitors lined up.''

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
VALUES ('f518ea65-e384-4c76-9240-a09cf209b577', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('23a52597-b0cf-46f1-b640-5647ac684cf6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('c54a2a19-2899-4624-b29d-7b32b94aed9f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('a1d3c626-b55e-4cd3-8c5a-eaeb3c3ee58c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest observatory reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
