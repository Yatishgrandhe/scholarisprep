BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5fd1d8ae-34a4-473c-ad2a-30859bf9ddde', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('4c4b106a-dbf0-40e2-aa08-dd6903f3f63a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('70feaa94-7e38-4a89-821e-503c615a2cb3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('9e589c45-0efb-42f4-a21d-ceb66cceaf2e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('f3934cfe-f976-4a9e-abfc-2a07108c43c0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('f4bf9c26-6db7-42f6-953b-8751beaaaf25', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('7790e990-0a44-449d-952a-875a420445f4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('abd3ecf3-d255-4356-b0e2-4ce282cac7e3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('28b888a5-5e28-4f4f-863b-565c9af1be49', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('43f60a89-dd1b-45d9-9581-5e0867ff36c3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('3ce38775-e90f-4351-8f84-92e6c27aa086', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('5c513357-0348-41db-a1b2-5e1dc92f742c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('aacb9752-dbeb-4c6a-97bf-8c3d7f616e73', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('9e5fb853-c0fd-42c3-a527-e7e2a6467be1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate the appositive
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
VALUES ('46a6a491-3822-4c08-bbb8-c96cf83e3363', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
