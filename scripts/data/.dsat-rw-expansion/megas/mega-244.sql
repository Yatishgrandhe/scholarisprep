BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('deea7582-9313-47d9-8f87-4f297c9282f5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('f2d2d949-900e-43e9-9be5-cea5e87cf6d2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('61b4bc65-013d-4e52-a1e6-846be95db34a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('27eb4cf8-8896-4a0a-b8d7-d09b13914e3f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('9c11d84a-1510-4635-85e2-1180c1be9249', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('322ebfe1-cd86-40a2-bb60-2de81b4c707e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('e6f790a8-6eac-4dd8-a46e-2b29ba24dea8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('4e535116-2068-4c5b-ae96-6eccd7fdad58', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('e0a03793-573d-4682-8566-995bc3d2ab8f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('05c018e1-a0a9-411f-92e7-8957d27764dc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('c2d87021-2a92-4868-97b5-a80f7554302d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('7314c228-f0a5-4c4d-a88e-889cc66cbb9f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('1419518c-5e87-4f92-bc75-6336c8710304', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
VALUES ('1d31bef4-da1e-4754-9ba5-3d9b9b4e1c22', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
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
VALUES ('26f39df8-90be-405d-a595-de7f3d17f65a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
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
COMMIT;
