BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ea444a7d-9c9e-4658-b61e-415df10cc0a8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). Semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7bcfd312-465e-4a9a-a164-f530bc430bc0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:clauses,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- C: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8861ac10-7a7e-40a8-a9a4-dd7d28fb8560', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- B: [Run-on Conjunction] A colon implies explanation or list.
- C: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('122e21c3-b7d9-4058-a2ac-4c68654bc006', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:explanatory}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: ;.

Distractor analysis:
- B: [Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('669d63b3-c5a7-44f1-8d23-e32367d8c4be', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- B: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('78fafd9b-ea45-44d0-b02b-65f4a4b2cc79', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- B: [Run-on Conjunction] A colon implies explanation or list.
- C: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('78d4b226-c7fa-4be8-ad9e-c6f611e61a15', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). Semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a0ad2994-a601-4ed2-8cac-0fc1edce32fa', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:explanatory}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- B: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('85fd7e8c-3b1f-404b-b892-4f1ab99a381a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). A semicolon links two related independent clauses."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- B: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f85d9a1-dcc9-4c59-bf38-2463748f9310', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9c2dd6bf-8e0a-4641-a2be-854fc6a4dc6f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:anticipate}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Mixing comma and dash is unmatched.
- C: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c7ad8df-fc32-41ef-b8c8-006d05fecc8f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). A semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- C: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6b5e0c40-d0e7-474f-a652-dfb12cc2f046', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8269531f-a4ff-4128-b4a5-19ef8404b63d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:clauses,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Mixing comma and dash is unmatched.
- C: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('32ab2c8c-cc5a-4395-b98f-b11195553a1d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: ;.

Distractor analysis:
- B: [Comma Splice] A comma alone is a splice.
- C: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a3922aaa-32e3-405a-bfdc-b57221004887', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). Semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:explanatory}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- C: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0430af60-1fdd-42c5-b179-06ed8f6cb9f9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Mixing comma and dash is unmatched.
- C: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('05f74f47-399e-4641-bf8e-a039b47ce0fe', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: ;.

Distractor analysis:
- B: [Comma Splice] A comma alone is a splice.
- C: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f6af6fd-6473-4ed9-beb8-838c94275506', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: ;.

Distractor analysis:
- B: [Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('89118d85-af3e-40dd-86b9-7f7417aecb02', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:explanatory}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- B: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b0ca3233-51e3-401c-bc11-6039952fc4d2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). A semicolon links two related independent clauses."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- B: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('317e7ea5-a9f0-4910-8d63-775da557b4e2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('df18c506-153a-4445-80a4-2379559bf7ec', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:anticipate}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- B: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c7b86d4b-6e7a-40d3-8014-23fd7745ae07', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). A semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- C: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1c0a27ad-2f3e-4cea-9427-1bf004a0d684', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6ba71f12-98b9-4af7-8156-dd38a8dbbdc7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:clauses,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- C: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2e88bb42-2c80-4aee-bc0f-3c2c611e90b8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- B: [Run-on Conjunction] A colon implies explanation or list.
- C: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af92f2f4-b51a-449a-8a91-1bd0989fbb60', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:explanatory}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('726ce0e3-8cce-4361-b09e-417b37b15a18', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- C: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('66f05df6-d972-46f8-bac9-a0ffcc1f24f4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- B: [Run-on Conjunction] A colon implies explanation or list.
- C: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('75a4a173-c1a8-4d1b-87a0-eb2147cbceff', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: ;.

Distractor analysis:
- B: [Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a3f9b58-8f09-4e5c-9dff-5bbd545a2b04', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:explanatory}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- C: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d9acce0b-76ce-4f36-a8b5-f11c87d32b98', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). A semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- C: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('035e4817-fed3-4230-8784-64d91322e104', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). Semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('779147b2-75b4-40e2-91ee-33ff60513bfb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:anticipate}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- B: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4622d517-2f67-4d65-8f6d-c1b6fd3739a3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: ;.

Distractor analysis:
- B: [Comma Splice] A comma alone is a splice.
- C: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f3bb94a-198b-46a1-b3e1-c64b69185735', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). Semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- C: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f284604-b00a-407e-b451-19ded01b675d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the nonessential modifier."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:clauses,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- B: [Run-on Conjunction] Dash-comma pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('44ba54b5-8e67-46fa-a14d-b308adaf13f9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: ;.

Distractor analysis:
- B: [Comma Splice] A comma alone is a splice.
- C: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bf5fcce0-e6f9-4a04-8fb5-f783a41555f9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:explanatory}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5ade7e79-6935-4576-a373-7d4cae9ace99', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the nonessential modifier."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- B: [Run-on Conjunction] Dash-comma pairing is unmatched.
- C: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('194dc102-2af2-42c8-9ff0-5e754a44ff5a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). A semicolon links two related independent clauses."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- B: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f3daacb-94b7-4433-9c95-8267c5ff6a80', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). Semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- C: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8b8ef8f7-9dca-44e4-b6c3-f58cdcd62903', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:explanatory}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- C: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2be5fe67-4b99-4c3f-86a3-d7a863568213', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). A semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- C: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('992356a0-8073-419d-9b32-e1f52d79e976', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). Semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Colon implies explanation.
- C: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c405a89-3c13-47e5-a5e2-f81858d3f54c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:anticipate}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing comma and dash is unmatched.
- B: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dbaa9f8d-1d26-4e28-bc5e-c3c7d5eec4cc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- B: [Run-on Conjunction] A colon implies explanation or list.
- C: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d50d76c8-226e-4ebb-93c6-6a13b6700121', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). Semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: ;.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Colon implies explanation.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and''.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8ad964ba-470c-4127-859d-17bfe6d56bb4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:clauses,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: — ... —.

Distractor analysis:
- B: [Comma Splice] Mixing comma and dash is unmatched.
- C: [Run-on Conjunction] Dash-comma pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Parenthesis must close with parenthesis.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
