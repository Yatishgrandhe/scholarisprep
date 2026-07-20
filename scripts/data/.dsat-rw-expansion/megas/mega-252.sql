BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a5020d30-b5f2-4df7-88e4-54cb27e1dd05', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('bfbc6e9a-2257-46cb-83f4-149992e482bd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('a25e94cc-4345-4038-8d63-5150163e444a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('28a75819-6fcb-4be4-92e0-ea8ad4745199', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('357ca1cb-9cdc-422c-97ef-ce1cc73bca27', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('cbb45361-b472-4fe0-86c4-5b5a1da5ec5b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('43e352b7-5057-4c6f-82e5-439e4154463d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('f0ceaab1-62a9-41b3-8c31-73de74e6a4f3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('e429fa30-d2d4-4fb0-809c-5623b8ca25ee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('b0b18d43-31a4-4050-b608-b91787950416', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('ae7b2c23-24f1-45f4-80df-787ba6465021', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('8da61472-4b5e-4c5b-a1b3-778f04201add', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('164d8b3c-1447-4abd-880b-b767592eae0a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('a4559498-96ac-4eb8-a318-868906c34198', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('b49076ca-bc26-426f-8088-804e3d852265', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
