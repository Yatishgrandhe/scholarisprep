BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3fc2b6ba-778a-4f0b-84cc-8c3e2462d80a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('0e805166-e232-49cb-b606-66e46f20f801', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('0dcff1fa-8bb3-40dc-be9b-463cd9095b20', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('7b9f136c-79ed-4eaa-91c9-70ad14071a77', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('b2d3a525-375f-4807-a828-7592b6423d84', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('f71668fa-dd92-4487-b45b-219c762fb2fb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('cff18723-f07f-489f-ab43-e853b5fd4fbc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('f6214b01-1a26-4f10-9c30-8b5f976e0c84', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('27ca578f-a703-4fb4-af18-9fca7aadad1c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('2ec73ece-eabc-478f-bb5e-175d532aee6e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Find the inserted phrase
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
VALUES ('1da12e03-37e4-4226-acbb-eb2b4317bfb6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('3aeac903-4683-4d9e-bf4e-d8b3507ce95e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"Comma splice."},{"id":"C","text":":","is_correct":false,"explanation":"Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Test each side
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
VALUES ('774f184f-2884-412a-9ef4-8549c03a2e54', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('88239aab-3697-4adb-a418-d9b86896fb2f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
The first clause ending at ''ecosystems'' is independent; the second explains how restructuring occurred.

Step 2 — Apply punctuation rules
An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured.

Step 3 — Select the correct boundary
Choice D (ecosystems—) uses the dash to introduce the explanatory second clause.

Distractor analysis:
- A: comma alone creates a splice.
- B: ''while'' after semicolon leaves a fragment.
- C: comma+and treats the clauses as parallel rather than explanatory.', 'The second clause explains how ecosystems were restructured — which mark introduces that explanation?', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dfa85957-a21c-4c0c-bc79-aece79ff5811', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
{{yellow:the one that promised measurable results within a single fiscal year}} renames ''one of the three proposals.''

Step 2 — Wrap it symmetrically
An interrupting appositive must be bracketed by matching marks.

Step 3 — Select the correct boundary
Choice A (— ... —) preserves the main clause while setting off the appositive.

Distractor analysis:
- B: paired colons cannot enclose a mid-clause appositive.
- C: comma and semicolon are unmatched.
- D: dash and comma are unmatched.', 'The bracketed phrase renames the proposal; marks on each side must match.', 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"generate-dsat-rw-expansion.mjs","explanation_v2":true,"original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
