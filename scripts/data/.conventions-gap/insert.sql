BEGIN;
DELETE FROM public.questions WHERE exam_type = 'SAT' AND section = 'reading_writing' AND is_platform_question = true AND skill_id IN ('BOU','FSS');
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd6153bc-e9a9-48c8-995c-13cfcbaffe5f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses creates a comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''
Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard for clauses of this length.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a0ed610-2b6e-4431-9e4f-3ef12fd0a4cf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon correctly follows an independent clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon joins two independent clauses, but a list fragment follows, not a clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to formally introduce the list after a complete clause."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation leaves the list awkwardly fused to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank, {{yellow:The recipe calls for three uncommon ingredients}}, form a complete independent clause.
Step 2 — Introduce the list
A colon after a complete clause properly introduces a list, so '':'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a semicolon needs a second independent clause, not a list.
- C: a comma is too weak to introduce the list here.
- D: no punctuation fuses the list to the clause.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('66db8798-6e6d-4535-bff3-e9c09a978991', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"A matched pair of em dashes correctly sets off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing a comma with an em dash leaves the parenthetical punctuation unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Opening with an em dash but closing with a comma is unmatched and incorrect."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"An opening parenthesis must close with a parenthesis, not a comma."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
The phrase {{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside interrupting the main sentence.
Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks, so an em dash on each side is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a comma paired with a dash is unmatched.
- C: a dash paired with a comma is unmatched.
- D: a parenthesis must be closed by a parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d78326f9-f001-41ea-9cf0-d1e7aeb68a6b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint galaxy after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon correctly links two closely related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone between two independent clauses is a comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies the second clause explains or lists, but here the clauses are simply related events."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' produces an ungrammatical join."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone: {{yellow:The telescope captured the faint galaxy after hours of exposure}} and ''the resulting image revealed structures.''
Step 2 — Choose the join
Two related independent clauses with no conjunction are correctly linked by a semicolon.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a comma alone is a splice.
- C: a colon signals explanation or a list, not two parallel events.
- D: the misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which single mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d043170-dcfb-40c8-a2a6-6cef3f059511', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive renaming ''one of the three proposals'' while preserving the main clause."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap an interrupting appositive in the middle of a clause."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"A comma opening and a semicolon closing are unmatched and break the clause."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"An em dash opening with a comma closing leaves the interruption unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
The phrase {{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals'' and interrupts the verb phrase ''approved ... and rejected.''
Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks, so an em dash on both sides keeps ''approved ... and rejected the rest'' intact.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: a comma and a semicolon are unmatched and sever the clause.
- D: a dash and a comma are unmatched.', 'The bracketed phrase renames the proposal; the marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('83129bc0-079a-4d7c-98e6-538ec4c7c8d9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Pollinator populations are shaped by a single overriding factor ______ the availability of diverse flowering plants across the entire growing season.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon after a complete clause correctly introduces the noun phrase that specifies the ''single overriding factor.''"},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause, but a noun phrase follows."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to mark the formal specification the sentence sets up."},{"id":"D","text":" — namely,","is_correct":false,"explanation":"Adding ''namely'' after the dash is redundant with the colon''s function and creates a wordy, nonstandard construction here."}]'::jsonb, 'A', 'Step 1 — Read the setup
The clause {{yellow:Pollinator populations are shaped by a single overriding factor}} is complete and promises a specification.
Step 2 — Deliver the specification
A colon after a complete clause introduces the phrase that identifies that factor, so '':'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: a semicolon needs a full clause after it.
- C: a comma is too weak for this formal pointing-forward.
- D: ''— namely,'' is redundant and nonstandard for a simple specification.', 'A complete clause promises one factor, then names it — which mark points forward to it?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('32431ba8-d083-4c36-97aa-a0c3f77b4d48', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the station reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a6a9eb42-e64a-49ef-b78a-b9ccb85e800c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3f2a5000-b08a-43fc-9126-b26624bf5ab3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest observatory reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59195ebe-71ed-4e67-874e-c7def1561467', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff6e66ec-ddbd-4fbf-b3d0-57dce99f9834', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the theater reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3da0f97d-87b3-40b5-8bc4-0b36b784b034', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c86a80d8-68b8-4927-8c21-746515498e21', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest theater reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('74bcf295-f87a-4173-90f0-2ce8561b595b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3c1e568c-475e-4036-9ed8-8535a4d4df65', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the station reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('34c0ad3d-e311-401e-ad66-d96ecc23e05c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a9c1f979-fe3e-4363-84f1-99ab30d62cda', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest museum reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a62ce81f-6217-415c-aa3e-fe3ff547d006', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2bd7aa5d-1746-4f5c-a147-82f11d292834', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the theater reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('011c2426-5f50-4c9b-8892-bd581eec8d71', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('259ef172-309b-4edb-b4f1-af3dac117d2c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('effb2023-874e-4dc3-93be-3e11bb8d5f1c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b0457bd4-6bac-47a2-94e5-c57129434ee9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the station reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0776283e-23d9-4c1c-b2a8-8d72228cf06b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8ef66615-6939-4356-8187-1c20c32edbbf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest archive reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7f37a080-62f8-4009-bc8f-c32041c2cdfc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21d84e10-7e94-4cfd-945e-72be9db9ae23', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the theater reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f684646-ab60-4f35-8981-f3297c440faa', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cb802c42-1a8f-42e1-9755-40b8d655ee30', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest observatory reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aaa4effd-256e-4210-bc54-6bd1ced66f1c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f514967c-a115-4747-8fe9-b24fb243ae10', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the station reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb88c56e-610d-4ccd-a6af-c34bb4fbbff9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba80e6cb-e4a9-4a4a-9257-233613727345', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest theater reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e085377-b83c-48d4-bf51-5477406689ad', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('09261088-7450-4628-aed8-1464df8f0170', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the theater reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59a0fd15-4de4-41d0-8a69-ed48c72373aa', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e288afb0-1a09-454b-bc02-c2149fe32df6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest museum reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('06082aa1-579c-4fc7-864b-c6fa01e83ae9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3c1c83d5-8b88-485c-8c94-06b252668b23', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the station reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a83d31b-6b47-4491-adc8-80b6478405c1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7d0bd0a8-ae0d-4753-985f-a98de447deab', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest library reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a200549c-b11d-43f1-a560-659780395734', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b26cb09-4e07-4951-843e-9d9fb9f66d10', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the theater reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e73e46d6-d31c-4615-aa6a-d6a2a3b496f9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('79391a83-1ac9-4bf3-bf15-3cc58561a081', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest archive reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5db51ca3-9ff1-413a-871b-1a21722b1c1a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce366d0b-4848-4049-a433-2084f7fd2f7a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":"","is_correct":false,"explanation":"Run-on."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent clauses about the station reopening and visitor response.

Step 2 — Join them correctly
Two independent clauses require a comma plus a coordinating conjunction.

Step 3 — Select the correct boundary
Choice A (, and) is correct.

Distractor analysis:
- B: comma splice.
- C: run-on.
- D: ''and'' without comma is nonstandard.', 'Both halves could stand alone as sentences.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1efdfed3-7082-4907-9512-5d13d1ce70d3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"Comma too weak."},{"id":"D","text":"","is_correct":false,"explanation":"No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
The words before the blank form a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) is correct.

Distractor analysis:
- B: semicolon needs a second clause.
- C: comma too weak.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aa10bbfb-26d9-4fe9-9fb1-7f1b8526d4f7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"","is_correct":false,"explanation":"No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Identify the two clauses
Both sides are independent: {{yellow:The city''s oldest observatory reopened last spring}} and ''thousands of visitors lined up.''

Step 2 — Join them correctly
Two independent clauses are joined with a comma plus a coordinating conjunction, so '', and'' is correct.

Step 3 — Select the correct boundary
Choice A (, and) satisfies Standard English conventions for joining two complete sentences.

Distractor analysis:
- B: a lone comma makes a comma splice.
- C: no punctuation makes a run-on.
- D: ''and'' without the comma is nonstandard here.', 'Both halves could stand alone as sentences — how do you join two complete sentences?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0859b599-63b7-4648-9965-dd9128f35fd3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"A comma is too weak to introduce the list."},{"id":"D","text":"","is_correct":false,"explanation":"Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Check what precedes the blank
{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause.

Step 2 — Introduce the list
A colon after a complete clause properly introduces a list.

Step 3 — Select the correct boundary
Choice A (:) correctly introduces the ingredient list.

Distractor analysis:
- B: a semicolon needs a second clause, not a list.
- C: a comma is too weak here.
- D: no punctuation fuses the list.', 'What punctuation introduces a list after a complete sentence?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b168ee6-0dc2-4191-9bd9-d1848b0f728d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b1073775-1c8b-4732-a9c0-d745b35b95b5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dadeb4f1-d2b9-4748-bef4-70e7f2c6bfc3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ac920053-93ac-44e6-82e7-cdc43ea0107e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8adb46d9-526d-4a42-9053-a8c8c28d5e2a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59dc4bee-9e6c-4f6b-9bd9-b1ade4fed015', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b30493d9-174f-480c-bdf9-041b9d54acf6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ed5ef204-0b6f-4cb9-bd87-bbdafb0205fc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('52fa5ad4-9f29-4d3f-ade9-0d6e60762a75', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6846a3c7-0ed3-425a-89ce-78c03c0ef12a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f3df74fa-2ff6-41d1-9efb-737bc4391096', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('13f1b916-f9de-4013-8df5-76e45284fa85', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c8972b2-fc22-4f9a-8b12-8472fa069b53', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('acc1d1a9-0809-46a2-8433-9dcb0b1decec', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a76c455f-8a3a-4903-b63c-3fd36aa3887f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4799e144-3612-483d-b9dd-36577512574e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d0246ada-1928-452a-946e-71045b85879f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3bccdb80-4330-4cb9-8d90-3b421101f23c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5c878815-5445-4d7b-b9a2-089d95bc9e6c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a4b4b15-876b-4e19-88d8-9df44907eefa', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2905bc0f-e0f3-4557-8271-9f58822bdd8f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('603274e6-a5bb-40a8-8160-fb75bc3cbdcc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a2041737-9033-45d9-9311-e1afb98b0d0b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('837101fd-3e89-4fef-af60-78383d3cc56e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ffd76bcc-0b8a-48f5-958b-3eac1b15a208', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('304e9b4e-9b73-4ded-ad4e-dff4136ee0f9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ae8b3d11-96f7-4559-bcb9-2d90840231e2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('43350063-da5b-496e-b42b-d553a7a463b4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('490f3490-a994-48a9-a26d-2b6cb92724be', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('918589ba-9a90-498d-a033-06281fbf0acc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c4a86ed6-6fa4-407c-b04d-965f1227d529', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e09b3c8e-cc35-43f1-8d2d-1f13a47882d4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('342fa7bb-7a99-40bb-ae04-6d04764ae925', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5cbfb54c-8d41-4f8c-a957-3d1da9949502', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c138a36-6be4-4654-ab4a-5f8c6c347712', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ef660779-0395-4f28-9d32-f5780ffd6b1f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('82601f29-62d3-450b-819a-8bf9a85468fb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4034d295-11a8-4df7-b0fd-62a6bcbc337f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('52446ae7-d2a1-4b3c-8262-1c040d5a827c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('69f74f0e-ef9d-4691-a448-e9f45f618df1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('377b151f-c6e5-4232-9762-4cba9b7149b6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e2874310-f0a6-41d0-a909-d947108f51a9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('31c45cd4-40de-4f05-8a86-a2953046441e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('42526c54-7f13-4758-8f84-d94666b26e48', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('73da5ae3-ab0c-4fdb-a5c5-b1a86ea16c9a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('92b6bc36-7363-4303-ba88-4c307b9d610c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eae766db-7b8c-4842-b1a9-4fcd68e7962c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b6298cc5-ce55-4e57-b800-2a035d0d6e1b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('864446b3-3508-4361-9009-633ac7ad6954', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e9dd8fab-06cf-4e79-841f-50e98d5f7d20', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('938dc888-fb3b-4d0d-afc0-195bc96455e3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fa4a821d-6d63-4180-94f9-2f0a4095949f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('457af7f9-7883-43e5-ba15-2b7b2246fa43', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('74cb5ee9-117b-486d-816b-f2e8643d1ff7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9adc2a08-0e79-4693-92a7-b65a11c5183f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a0f8029-899f-4284-8ee0-1e127f647a23', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bdaad535-5329-441b-93c9-28d56f7da518', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('76c0727d-bf54-4a85-bb84-8e5c06494eec', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4faf5158-5156-4647-a02c-ab83a80b9aba', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('13c5b7c5-8ebc-4332-aeb1-dd6b00dc1ccd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('228cbd4b-bc0b-4de4-9b6c-132491ac0af5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b47bb1dd-ddc0-407d-9c31-403a6950a8e5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('363615f8-bb64-4e14-bbed-c1c10b138f1d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8127677a-489b-4b6e-83b5-cf3b0f484515', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce4991d6-03be-46eb-953c-291f8f0fc03e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a55d8d3b-7a98-4045-b07b-19702e8fe863', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('38da86b2-8ed3-47a0-81ac-bc5b4fe9487f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a8e84416-b9f9-4231-b7bc-66953b459766', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1338f3f7-0c72-40a6-b818-7dd516b70130', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f60d1fd3-2564-41e7-a9eb-851f714a09c6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af8b6b7b-a7b0-4308-8ec6-eca7c724e290', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"The singular subject ''collection'' takes the singular verb ''is.''"},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' but the true subject is the singular ''collection.''"},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is both plural and past tense, conflicting with the singular subject and the present ''now.''"},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural and does not agree with the singular subject ''collection.''"}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''of rare coins'' is a prepositional phrase, and ''collection'' is singular.
Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' which also fits the present-tense cue ''now.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past tense.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — what is the actual subject, and is it singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7bd6620c-3eb4-4923-99da-5cee579e8363', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"''its'' is the singular possessive agreeing with the singular antecedent ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is'' and cannot show possession."},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural and does not agree with the singular ''a hummingbird.''"},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is a subject/object pronoun, not the possessive needed before ''wings.''"}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.
Step 2 — Choose the possessive
The singular possessive ''its'' correctly modifies ''wings.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular animal + possession of its wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c492f536-b5fc-4ed3-910b-f5e705faa3cb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"The past perfect ''had studied'' shows the study was completed before the past ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"''studies'' is present tense and clashes with the past-tense narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"''will study'' is future tense, inconsistent with the past context."},{"id":"D","text":"is studying","is_correct":false,"explanation":"''is studying'' is present progressive and breaks the past timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.
Step 2 — Show the earlier action
The team''s studying happened before that past moment, so the past perfect ''had studied'' is required.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''studies'' is present tense.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another past action — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c91b2bc7-d9bb-4ed4-ae16-8967d9a87fdc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"''invite'' is the base form, parallel with ''inform'' and ''challenge'' in the series."},{"id":"B","text":"inviting","is_correct":false,"explanation":"''inviting'' is a participle that breaks the parallel base-verb structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"''invites'' adds an -s that does not match the base-form verbs in the list."},{"id":"D","text":"to invite","is_correct":false,"explanation":"''to invite'' is an infinitive that disrupts the parallel series of verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform its audience, challenge their assumptions}}, and a third action.
Step 2 — Keep it parallel
The first two verbs are base forms after ''should,'' so the third must also be the base form ''invite.''

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b944e71-36d7-475d-a70f-39c0e809db46', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"In ''neither...nor,'' the verb agrees with the nearer subject ''technicians,'' which is plural, so ''were'' is correct."},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with a singular subject, but the nearer subject ''technicians'' is plural."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular and present tense, conflicting with the plural nearer subject and the past context."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular and does not agree with the plural nearer subject."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the subject closer to it.
Step 2 — Check the nearer subject
The nearer subject, ''technicians,'' is plural, so the plural verb ''were'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular and present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5afca694-78ed-486e-9ebe-344af251bf96', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Having been buried under volcanic ash for two millennia, archaeologists were astonished that the frescoes ______ their vivid color.', 'passage', '[{"id":"A","text":"had retained","is_correct":true,"explanation":"The frescoes, not the archaeologists, retained color; the past perfect fits the action completed before the astonishment."},{"id":"B","text":"have retained","is_correct":false,"explanation":"''have retained'' is present perfect and clashes with the past-tense ''were astonished.''"},{"id":"C","text":"retaining","is_correct":false,"explanation":"''retaining'' is a participle and cannot serve as the clause''s main verb."},{"id":"D","text":"retains","is_correct":false,"explanation":"''retains'' is singular present tense and does not fit the plural subject or past timeline."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The relevant subject is ''the frescoes,'' and the discovery is past: archaeologists {{yellow:were astonished}}.
Step 2 — Use the right tense
The color was kept before that past astonishment, so the plural past perfect ''had retained'' is correct.

Step 3 — Confirm the answer
The correct choice satisfies Standard English conventions as analyzed above.

Distractor analysis:
- B: ''have retained'' is present perfect.
- C: ''retaining'' is a participle, not a finite verb.
- D: ''retains'' is singular present.', 'The frescoes kept their color before the archaeologists were astonished — which tense and number fit?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('24a74547-28ee-402d-9e58-03f3bfac9d57', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14c358da-5850-4f0e-a8ae-19ad141aca93', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ddaef9be-cbdb-41a6-95e6-1ac23aa71b5a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a7051c51-5d35-4807-a9b8-3d4d1a8cbc8a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0ad89a94-8557-48a7-aea9-46a0994e6885', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6588b645-6364-4bbf-b367-377806bf46a3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d568bb34-1a1b-429e-ab52-8165f785e9f6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe5203aa-3d32-416e-a253-a62805a448a4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2af11558-558b-4d6a-ad7c-563ef9299741', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('600edb0c-ec7e-4c2a-ab0d-98dae000eb8c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d70f3599-2f05-4a37-ad13-c17e528781f0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b861aaa6-2972-40cd-99ee-5614426df923', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3db7235c-d3b9-4548-a5b8-c6ba8fe19c45', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1bfa9c8f-9d10-4599-9150-52432852a493', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d622e442-7761-4846-9ca6-ff043b4eb857', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The bundle of manuscripts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f665e1b0-5b22-497e-bd9d-b927f5381a3e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('576b0567-0a6f-4e3b-9668-c986f45affef', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b7230ee-84b8-4319-8237-79256d4e203a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fbd36c4f-fcab-4ae5-8048-91fa3a9e2023', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b39fbd75-8017-4aec-92e1-8c78af93a3be', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c504ab32-8b07-4038-8bd5-148507e663c2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('03b8f9b1-c8b7-4af6-8f9e-13179ca6774e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7b95f488-820d-4e28-ab0d-b69ab8fb0d6b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7f89e300-76a5-4c4b-bce7-a5883ac065ee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c8e17d5f-3702-4fa7-9e22-8f55c6b4fd7f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62394d73-02ba-4eea-8dc6-8163e796d748', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('67542297-b2f1-4111-b763-8bb15a781df0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c905d4eb-ec20-43f2-b5cb-dc0dc0786833', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c63e7cfa-ed2c-4d3f-a2bb-30da943fb46a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('949df5ab-1174-4f7a-8667-b2ff9b51d1de', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The bundle of manuscripts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1362c485-6dfb-4960-807c-dfa6258335be', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1b483175-504a-4238-96de-120a6428188b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('239289f5-32f1-4620-9724-07b70ca701f4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb7677ee-77ee-46e1-8e08-b154b0c09fee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('314ff92e-c09b-4f14-ba46-8c5f202f10b8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('73173d7d-9367-4ec9-8cb8-192c0288ca18', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb4af7d6-cedf-4960-8de6-1ec298764f82', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f283fa5-39a6-423a-8aeb-4186756969a3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96e08704-9b68-4c0f-890c-5602b764451f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('948251cd-ad4a-44d9-aa13-a65db536330d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('29da09d2-116f-4a97-bc48-a3c5717c346e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d0502b2f-5307-4896-a1c3-5c0e6c23cbe9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d1f03c42-ccfb-4f69-8e52-1c2fdcd562ab', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The collection of rare coins that the museum acquired last year ______ now on display in the east wing.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Singular ''collection'' takes ''is''."},{"id":"B","text":"are","is_correct":false,"explanation":"''are'' agrees with ''coins,'' not the subject."},{"id":"C","text":"were","is_correct":false,"explanation":"''were'' is plural and past."},{"id":"D","text":"have been","is_correct":false,"explanation":"''have been'' is plural."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The collection of rare coins}}; ''collection'' is singular.

Step 2 — Match the verb
A singular subject takes the singular verb ''is,'' fitting the present cue ''now.''

Step 3 — Select the grammatical option
Choice A (is) agrees with the singular subject.

Distractor analysis:
- B: ''are'' wrongly agrees with ''coins.''
- C: ''were'' is plural and past.
- D: ''have been'' is plural.', 'Ignore ''of rare coins'' — is the subject singular or plural?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3148ff8-b267-4866-9bbd-6d688304a649', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.', 'passage', '[{"id":"A","text":"its","is_correct":true,"explanation":"Singular possessive for ''a hummingbird.''"},{"id":"B","text":"it''s","is_correct":false,"explanation":"''it''s'' means ''it is.''"},{"id":"C","text":"their","is_correct":false,"explanation":"''their'' is plural."},{"id":"D","text":"it","is_correct":false,"explanation":"''it'' is not possessive."}]'::jsonb, 'A', 'Step 1 — Identify the antecedent
The pronoun refers to {{yellow:a hummingbird}}, which is singular.

Step 2 — Choose the possessive
The singular possessive ''its'' modifies ''wings.''

Step 3 — Select the grammatical option
Choice A (its) is the correct possessive.

Distractor analysis:
- B: ''it''s'' is the contraction ''it is.''
- C: ''their'' is plural.
- D: ''it'' is not possessive.', 'Singular bird + possession of wings — which form shows ownership?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2e821bb8-0ef4-47c3-a44c-ec6838a4c577', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ab3af853-2ebd-47f0-8482-4fb153d36ec5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('689072f3-4b3b-4691-8f79-edd2c9e1d0df', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('74b15bbc-cd49-4e23-b0da-37dbacf0a02a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6290e3a8-3ad7-4940-8e01-84b3f034d4d3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('24fbf7a8-f842-4272-b5c3-32ce92fca9fc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('80de1dd0-62ea-4973-ada5-8f60cb3fdc30', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('013337cf-1a62-4281-9c06-f8181a6e7044', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2573376b-4ea6-427f-a605-0d9cbb8c9d27', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('abc7958f-1b3d-4a56-a456-e69fcadbd77a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8dc3edb3-e45e-40aa-af96-9f76b8add014', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b421037-8059-4b30-8f22-a77019aabc77', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2fff115c-b99a-4863-ad7e-7d538d28ffbb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The bundle of manuscripts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('01df31e9-842b-4ee0-a274-d83f522c7085', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ca4f0ce-1f48-4e98-95f5-942db2b82961', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04a39357-4840-4f7f-8cf6-ff93b3b0a21e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20408651-b210-4a83-8b21-9be4cc9198d7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0fc7329c-83d0-4a5d-a91d-3bb8c5298e3e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4dfc937c-d1a2-4ac5-9346-82e7da430537', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6a06741d-3168-439a-8f22-fdb20da30b2d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cad3d7ff-6a77-4aae-956c-ba7ef330e2c7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c688f508-3f1c-40c2-950d-87fa03787b8f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21683a20-7c46-427f-9d77-1bf431e1cdb6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9da3ac76-f9cf-4882-bcf0-41267858884a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b19a1a4f-9c66-431a-a905-8dd7b7ac0716', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f89a2d8-a181-49ee-8901-47e25c7aa514', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ed3607db-de55-4dc8-bca5-2771edb65c5a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fece340a-970b-4756-845c-1eca6f2c9d43', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The bundle of manuscripts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a938f606-cf76-4b67-9196-e8f35959f7d6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3d55b741-832f-4f38-a5fa-a4b8cc8815bb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0a3d6849-486e-4a7a-958d-39a57299c5ce', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87c87b46-9570-47c1-b288-789aa163e33b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f1aeb502-e953-4a63-bd1e-1a260bd9f1b7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c83cec4c-4246-4a0c-8726-5594a24ff7f4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62043d9d-dd64-4e3d-842f-27be9406c00f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('92d2b877-bfef-4080-a1cd-f24b5df3e58a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e43858f-e736-4371-b64c-7bc45b206627', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eee8e6e1-edee-4611-8a33-5bb3d6da03d9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fa7eff64-a183-4e6c-aeae-828627833871', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('84ce069b-4291-469c-b189-8326758f0f05', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3aa0aad1-688e-49a2-9fcb-5bce776981db', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.', 'passage', '[{"id":"A","text":"had studied","is_correct":true,"explanation":"Past perfect shows action before ''were published.''"},{"id":"B","text":"studies","is_correct":false,"explanation":"Present tense clashes with past narrative."},{"id":"C","text":"will study","is_correct":false,"explanation":"Future tense is inconsistent."},{"id":"D","text":"is studying","is_correct":false,"explanation":"Present progressive breaks the timeline."}]'::jsonb, 'A', 'Step 1 — Establish the timeline
The anchor event is past: {{yellow:By the time the survey results were published}}.

Step 2 — Show the earlier action
Studying happened before that past moment, requiring past perfect.

Step 3 — Select the grammatical option
Choice A (had studied) is correct.

Distractor analysis:
- B: ''studies'' is present.
- C: ''will study'' is future.
- D: ''is studying'' is present progressive.', 'One past action finished before another — which tense shows ''earlier than the past''?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87a7613e-6c2e-4a7a-a3df-e18458b42390', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.', 'passage', '[{"id":"A","text":"invite","is_correct":true,"explanation":"Base form parallel with ''inform'' and ''challenge.''"},{"id":"B","text":"inviting","is_correct":false,"explanation":"Participle breaks parallel structure."},{"id":"C","text":"invites","is_correct":false,"explanation":"Conjugated -s form breaks parallel series."},{"id":"D","text":"to invite","is_correct":false,"explanation":"Infinitive disrupts the parallel verbs."}]'::jsonb, 'A', 'Step 1 — Spot the series
The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action.

Step 2 — Keep it parallel
After ''should,'' all verbs must share the same base form.

Step 3 — Select the grammatical option
Choice A (invite) maintains parallel structure.

Distractor analysis:
- B: ''inviting'' is a participle.
- C: ''invites'' is conjugated.
- D: ''to invite'' is an infinitive.', 'Match the form of the other verbs in the list after ''should.''', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c1aaf19b-bc43-4216-9b46-d82bca810c79', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3d053857-55e1-45af-aed7-ead5d7b37b62', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bfde72a4-9675-4b3b-8de5-6ec7c896579a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aafa0611-1652-4563-8ddf-bcbfd2f16acb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c3c83a2c-7910-4b49-92f9-4f5e96836eef', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c2afa99c-a1da-4601-91f0-6065c841ddc3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('45eacf9c-d20e-49fa-8b4d-a145d33ffcbb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('012a72ba-756b-4446-b4b6-61000db8f045', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('51471a36-826b-4d07-ae74-657a231218c1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f774c43-544c-429a-9c1e-313cc8e86317', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The bundle of manuscripts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7dd7189f-81da-4ee4-a9df-5553bbc78b2d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('10ded2dc-80fb-4b75-be8f-01bca6a1248b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3a83871a-5c9f-496f-8824-dbf4e541ea81', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('93f8c35f-fa7b-43ae-940a-0a17bdeef891', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4cc7a692-5872-49ad-b3a5-566896b960cb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fadd9475-6cdc-4140-bfc5-889c99a24b7e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The number of applicants that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: ''the number'' is singular."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"were","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The number of applicants}}; ''the number'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''are'' does not agree.
- D: ''were'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ddd4ded-6ba1-494e-82a1-48907400783c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1649ef6b-09ca-46ad-8da2-945a898ef145', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('698339f2-2166-494d-96c1-45d07b298d7f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Each of the volunteers that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: ''each'' is singular."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:Each of the volunteers}}; ''each'' is singular.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de025a65-75c5-4d7b-80fa-79075614c0bf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9ee5ed98-65da-4d63-a9a1-fbe9f66f444c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a27128a3-27db-4f73-9af0-51d32f077494', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The panel of experts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"has","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"have","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"had","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"are having","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The panel of experts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (has) is correct.

Distractor analysis:
- B: ''have'' does not agree.
- C: ''had'' does not agree.
- D: ''are having'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0f5ac2cb-0a06-4f83-8576-2bd60fff2ff4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3402bb32-c9ea-4263-aeec-bf2f59c03ac6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6928948-53b2-45f2-afb7-07087132c7f1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The bundle of manuscripts that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"was","is_correct":true,"explanation":"Correct: singular collective subject."},{"id":"B","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:The bundle of manuscripts}}; singular collective subject.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (was) is correct.

Distractor analysis:
- B: ''were'' does not agree.
- C: ''are'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('33ed5ab0-f681-40a8-8d0d-be1bb4a1fb12', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.', 'passage', '[{"id":"A","text":"were","is_correct":true,"explanation":"Verb agrees with nearer plural subject ''technicians.''"},{"id":"B","text":"was","is_correct":false,"explanation":"''was'' would agree with singular subject only."},{"id":"C","text":"is","is_correct":false,"explanation":"''is'' is singular present."},{"id":"D","text":"has been","is_correct":false,"explanation":"''has been'' is singular."}]'::jsonb, 'A', 'Step 1 — Apply the neither/nor rule
With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject.

Step 2 — Check the nearer subject
''Technicians'' is plural, so the plural verb ''were'' is required.

Step 3 — Select the grammatical option
Choice A (were) agrees with the nearer plural subject.

Distractor analysis:
- B: ''was'' agrees with a singular subject, not the nearer plural one.
- C: ''is'' is singular present.
- D: ''has been'' is singular.', 'With ''neither...nor,'' the verb matches the subject nearest to it.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9f78a96a-3f29-47ea-b453-56d653e205ee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.', 'passage', '[{"id":"A","text":"flourished","is_correct":true,"explanation":"Past tense aligns with ''argued,'' ''forced,'' ''went.''"},{"id":"B","text":"flourish","is_correct":false,"explanation":"Present tense breaks historical context."},{"id":"C","text":"flourishing","is_correct":false,"explanation":"Participle cannot be the main finite verb."},{"id":"D","text":"will flourish","is_correct":false,"explanation":"Future tense is inconsistent with the epoch described."}]'::jsonb, 'A', 'Step 1 — Match subject and timeline
The passage establishes a past historical context with {{yellow:argued, forced, went}}.

Step 2 — Use the right tense
Populations that survived did so in the same past epoch, requiring past tense ''flourished.''

Step 3 — Select the grammatical option
Choice A (flourished) maintains tense consistency.

Distractor analysis:
- B: ''flourish'' is present.
- C: ''flourishing'' is not a finite verb.
- D: ''will flourish'' is future.', 'The entire passage describes a past epoch — which verb form fits?', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1c906e80-9e18-4577-822d-195808594979', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'A series of lectures that arrived from the overseas archive ______ scheduled for digitization next month.', 'passage', '[{"id":"A","text":"is","is_correct":true,"explanation":"Correct: ''series'' as subject is singular here."},{"id":"B","text":"are","is_correct":false,"explanation":"Agreement error."},{"id":"C","text":"were","is_correct":false,"explanation":"Agreement error."},{"id":"D","text":"have been","is_correct":false,"explanation":"Agreement error."}]'::jsonb, 'A', 'Step 1 — Find the real subject
The subject is {{yellow:A series of lectures}}; ''series'' as subject is singular here.

Step 2 — Match the verb
The verb must agree with the subject in number and fit the present schedule context.

Step 3 — Select the grammatical option
Choice A (is) is correct.

Distractor analysis:
- B: ''are'' does not agree.
- C: ''were'' does not agree.
- D: ''have been'' does not agree.', 'Identify the true subject, then match the verb.', 'Standard English Conventions', 'Form, Structure, and Sense', 'reading_writing', 'conventions', 'FSS', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"form_structure_sense","rw_format":"grammar_blank","explanation_v2":true,"generator":"generate-conventions-gap.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
