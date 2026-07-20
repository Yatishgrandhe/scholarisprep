BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2294ba0d-4d9d-490f-bcf0-c41b6cffe1a1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a4b967c1-3ff0-4bfb-acf5-cc91dc51dde3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('16ba9d03-fad1-46d2-b7f4-4a375f12bc96', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f255970-7cb1-4b60-9090-6bebcaa019d0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ddcd9cf-d2ac-4d3b-b457-efb327236947', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2fa9cb2e-9d38-433a-a549-7627489a1b65', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f146675-2634-4ac7-87db-0f44c2beab2e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1c3ecd1-bf08-46b6-a60e-dea4bdb93bad', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e436de5e-1b8c-4cc7-a481-5fb36cba4780', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('99a8ea82-df8f-48cd-9436-e10fa528db1d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('912b7203-3594-4533-b5bd-24a78cfdfdc7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e4eb0cf7-e86a-4597-b9ec-43a21951bd73', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1ab2077b-9093-43f1-bf8c-aafa4d2ef2cc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside.

Step 2 — Match the punctuation
Parenthetical asides must be enclosed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) correctly brackets the interruption.

Distractor analysis:
- B: comma paired with dash is unmatched.
- C: dash paired with comma is unmatched.
- D: parenthesis must close with parenthesis.', 'Whatever mark opens the interruption must also close it.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('773bc927-4ab2-41d0-80d3-8295eea24506', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences about the observation and its result.

Step 2 — Choose the join
Two related independent clauses without a conjunction are correctly linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma alone is a splice.
- C: colon signals explanation, not parallel events.
- D: misplaced comma after ''and'' is ungrammatical.', 'Two complete clauses with no ''and'' — which mark links them?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a60729ee-59d0-4654-96c9-ee726bd34c50', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
Both parts stand alone as complete sentences.

Step 2 — Choose the join
Two related independent clauses without a conjunction are linked by a semicolon.

Step 3 — Select the correct boundary
Choice A (;) is correct.

Distractor analysis:
- B: comma splice.
- C: colon signals explanation.
- D: misplaced comma after ''and''.', 'Two complete clauses — which mark links them without ''and''?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
