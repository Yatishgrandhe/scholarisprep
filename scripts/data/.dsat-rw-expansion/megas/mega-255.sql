BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1dc2b267-db37-4f4b-b94e-0404f9037af5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('59a8dc42-bf14-456a-891b-39b86807fffd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('26db48e9-3859-4757-90b7-c1086e008dc3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('5a9f5978-6acb-4fb0-b5cb-d43c864fa0e9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('c8204f8d-3b4b-4ad6-b049-12eb4176e1d1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('d48c71e5-1422-4e8e-b029-be94025e7c42', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('0277c006-cc9c-40ce-a46c-5031f414d203', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('9c644a2d-85a0-4dc5-94a8-38527c9210ca', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('2654193c-492c-454b-af26-1fa9719eb8ec', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('77655c11-8487-4eda-9a2f-ae1d930daeae', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('cd3f4275-0346-4621-92fa-da1dd9fe7ddf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('b783525a-c9d1-4297-a652-01e30091ad24', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('87d5d74b-2553-4ac0-99dd-bf07e5fd2f04', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('b0f9d7dd-58cb-4999-8bc5-4aea6f8b370e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('0329b8b1-e915-490d-931e-750008106392', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
