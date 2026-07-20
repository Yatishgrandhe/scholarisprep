BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('02685800-b4fb-4bc7-a962-aaab4dfd0e71', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('55edf726-fe9e-4513-9ebb-3de8172729ff', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('33ec9581-4a2f-444b-b2fc-f7c00e919efb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('8465973e-5aa8-40ba-ad81-c3c4aa94e92b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('85e7e9ab-ce07-475f-8ca8-1d87156d1348', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('a9600d9d-1495-4595-9c33-63a35d83dc3b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('896cb879-ae33-4d13-9327-987f494e612b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('85fb937f-849f-4c2d-9026-aeef0560cfc1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('fef738f6-1564-4d93-a628-782394f0123c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('9784a832-acd4-44c2-8237-f54780c4f262', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('1ff9ee15-01cc-4c0f-b04b-518b6d046238', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('2e3164da-2d67-4881-9ecd-50c2c68fa6b5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('e5e972f6-c0c6-4ef4-b885-8c73032acd0f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('75260705-394a-43dc-9193-6371007df4b5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('488dbded-5c02-4d1c-967f-d66490b1630d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
COMMIT;
