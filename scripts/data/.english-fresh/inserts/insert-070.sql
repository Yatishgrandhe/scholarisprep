BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6523c7a6-73e7-4866-83c2-41c6ff58d1b8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('42ffb387-9591-4006-929d-1b8b221ff340', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems—","is_correct":true,"explanation":"Correct (B). Em dash introduces explanatory elaboration of the restructuring."},{"id":"C","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"D","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- C: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- D: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('396a4684-93a2-4908-a63c-766632f11650', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3919e85-f23d-4279-973e-42f754dde4df', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17533658-d853-4568-b76c-9335ac830939', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the appositive."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d0ffdd5-870a-4622-b82a-00fc75af35d6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems—","is_correct":true,"explanation":"Correct (A). Em dash introduces explanatory elaboration of the restructuring."},{"id":"B","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"C","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"D","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: ecosystems—.

Distractor analysis:
- B: [Comma Splice] Comma splice between independent clauses.
- C: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- D: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a1d14f13-c217-4c85-b79d-8afdfd95b5cb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('701f7d93-b7ed-4ac4-9855-ea7b2e04d385', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('382338b8-933b-4a6c-abb9-5f874ee2cc9f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ece89a82-6989-4739-8cd3-19929370526d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems—","is_correct":true,"explanation":"Correct (C). Em dash introduces explanatory elaboration of the restructuring."},{"id":"D","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- B: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- D: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5cddf50c-5484-4b9f-a762-75b29689f3e0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60e0634e-6ed7-43f7-91b4-74d99a6c5bb0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cf889442-8cc6-4680-b60e-14d21733274b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17360950-d793-4c94-a655-0dfbb4e01984', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Correct (D). Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- B: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- C: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6a4e7e3d-4739-4618-ab1d-7c2febd8cc2d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1cc0b8da-26cd-4bc4-9f48-4af70bdcd06e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f06dc1be-f07b-4a79-98a4-a441124aa887', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4d13a3ed-e3fe-4f35-9679-0703ff8bccb3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Correct (D). Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- B: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- C: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1253e699-0621-49dc-83c3-9710b4d87f62', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90b75331-dd9a-4f02-95a9-d4697d713f63', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0a3e1c40-8de9-44d3-ac95-fdf7177ae76d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2438eb15-5fda-4bf8-9f8f-856377e6a809', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Correct (D). Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- B: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- C: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('67304d7f-5965-4c84-809b-d705b9bb0bf8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the appositive."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe38172c-db18-4dcd-8738-3980de89793f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e96e431a-26fc-44f3-b8f9-3f8473bc2e1f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d935ee54-daf3-497a-a8a7-8c3636c37d98', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Correct (D). Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- B: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- C: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1bf5d93c-13a7-4217-82e3-6eef3865467c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d2937896-993d-40ce-961d-ab2601b3a79a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e4d5af9-8a2c-4489-ac2e-7ede45b197eb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the appositive."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3ba061f9-d183-430e-9213-8e3a02e8d1da', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Correct (D). Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- B: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- C: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('10db9036-f6f0-4a09-bb3c-d26bfba11e15', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('26cf6d3d-c973-4a41-8567-a5512ded015a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7e5667c7-19a9-414e-ae4e-958df982f590', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the appositive."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c8d8c57-69a7-4f3c-a822-6fe2783bdd73', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems—","is_correct":true,"explanation":"Correct (B). Em dash introduces explanatory elaboration of the restructuring."},{"id":"C","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"D","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- C: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- D: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bcba229b-4983-4df1-863c-0c4e8e04a3df', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('997679d2-0171-4f3a-9e6d-71e0cac04e16', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a4e9325c-0c5d-4cf0-803a-18fac1ae95e7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('230be409-829e-4a1f-a4ea-828751a18afe', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Correct (D). Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- B: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- C: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('188606ef-173c-4f74-b085-02a227d43152', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d3172926-6dc4-4c74-a40d-4ac30ea82639', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af9e7b1a-27ae-4a9e-af80-d11f7c6175b5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8aec982-d3a8-4d6e-8b86-dd2da402e118', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems—","is_correct":true,"explanation":"Correct (B). Em dash introduces explanatory elaboration of the restructuring."},{"id":"C","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"D","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- C: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- D: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('157d69ed-a606-448a-bfa3-0a2b647df725', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f574663-78d5-4b1b-9e67-30b621f34448', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('930fe58e-8f56-4e32-a3f7-88308f9380b8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('104773e2-c80b-4d70-b8cc-5309aa9bc34b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Correct (D). Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ecosystems—.

Distractor analysis:
- A: [Comma Splice] Comma splice between independent clauses.
- B: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- C: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f9d437f6-f28a-49e3-ace2-8444a84f3ba4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('37d6cae2-70e6-4634-9ed7-435ff8e39337', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1c70ee5-a9dd-4320-9031-c93e4e9d8848', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- C: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba581e4f-31d0-43d2-8835-6ccd6d47611e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems—","is_correct":true,"explanation":"Correct (A). Em dash introduces explanatory elaboration of the restructuring."},{"id":"B","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"C","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"D","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:example}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: ecosystems—.

Distractor analysis:
- B: [Comma Splice] Comma splice between independent clauses.
- C: [Run-on Conjunction] ''while'' after semicolon creates a fragment.
- D: [Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
