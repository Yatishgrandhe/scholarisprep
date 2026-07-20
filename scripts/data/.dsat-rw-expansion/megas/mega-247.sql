BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7fa0847a-7dda-4ee9-a14c-e73f19d993ba', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('0a0079fa-2930-43bc-b8c1-9c76b534ebaa', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('aaa7ec28-3901-4fc3-ae5f-ecef8194b168', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('546ab5b3-2c5f-408e-91af-6c5c53bd728c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('83ce423a-ef65-4955-a52a-4ab58bf1906a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('fd016339-0483-4728-83ee-00274988ae00', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('7aa1c464-bad2-4543-8ffd-df7884468bce', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('7d5dd8bc-2bee-426f-aa33-361a0aa4243f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('c81cfcd5-5fbb-422a-bc16-404e838740e7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('34e7f402-8d7b-4dc8-8608-04fbc8d60d90', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('a56f54b4-69b8-4a82-b881-78beda0675b9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('d1f4a121-4ab3-46d7-9161-038f3c9ea2cb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('fffdc83a-d115-4628-8295-73cb08a60d87', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('8d30f330-cbac-4ef6-b0a2-24c3738dd26e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('e2964400-7872-4997-a8a4-c209e0dc41dd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
