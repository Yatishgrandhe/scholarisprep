BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('13bcd96e-ef01-4567-af92-bde2f78f0337', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('8dbea56f-68d7-4aec-9270-1500732a5712', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('0b5d38ea-4b5c-4fae-84ad-38ede53fe9d2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the nonessential modifier."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('83211454-fabd-4ff5-b42f-f99eeb4007af', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). A semicolon links two related independent clauses."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('7f186e4d-ad8b-4b31-a03e-b3f5fa415cac', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). Semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('1d617f86-51cb-482b-a72b-e853a5b24d78', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('784ede70-918e-499f-9403-c78836b5c960', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('90de5509-cd18-4b86-84f8-7bed2ba25d78', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). Semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('711d0fcc-6d0f-466d-a76b-ca53c3725047', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:anticipate}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('ad92adc9-0e3b-45f1-8f67-b1151d17bc8d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('945d209e-1e6f-4911-8922-74bf68453601', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('7b888f57-4e4a-4c26-bfda-4ae31b3c0d12', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:clauses,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('1cda11cc-aef3-49e6-b08d-f4a93dbc8b4d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('c8c52f4c-b4ed-4899-b5e8-cee651fcd909', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). Semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('d74a7f07-5889-4511-924d-af86d4dc27a0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the nonessential modifier."},{"id":"B","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('9c7b2b50-fa4e-45c3-880d-7900f848e638', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('36be658c-9962-45f6-bf5f-4fe5cd434765', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). Semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('172dfd99-ad23-46eb-a6c1-b2d00f0e4b10', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('e3109d59-eb19-4934-9c61-28381bc4e5ac', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). A semicolon links two related independent clauses."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('af6333be-6815-4347-87c2-4bd03be17396', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('d7905916-62fc-42b3-9242-cbd56e1c1896', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('6987018c-86b3-41df-9257-82e8b666587b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('b1eb1fb1-794f-4a50-8c47-db44dcc371f4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). Semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('266df387-5394-4133-8ca6-df5ca8f2f987', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the nonessential modifier."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('28de95b4-1632-4b3f-97dd-9f78b0fec8b3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('61d6b5df-1869-4e29-ac32-fdcfa9470409', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). Semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('6f73db82-e38e-4c9a-ba5a-33f53b43fab7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('c69b75c9-82dd-43c9-a097-35be7d36c13f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('05f29cf7-9de0-4235-9beb-a8aa2f80b610', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('2cfae161-e1c4-4c03-aa74-318add5508c9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('00fbae4e-4831-40a4-943b-14925c4afb19', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). A semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('b3f75836-4b52-4310-85bd-392cb9635fc8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap an interrupting appositive in the middle of a clause."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] A comma opening and a semicolon closing are unmatched and break the clause."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] An em dash opening with a comma closing leaves the interruption unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive renaming ''one of the three proposals'' while preserving the main clause."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap an interrupting appositive in the middle of a clause.
- B: [Run-on Conjunction] A comma opening and a semicolon closing are unmatched and break the clause.
- C: [Fragmented Semicolon/Colon] An em dash opening with a comma closing leaves the interruption unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3a7cf856-ba5c-4362-b0d2-f83310e2db42', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. Pollinator populations are shaped by a single overriding factor ______ the availability of diverse flowering plants across the entire growing season.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause, but a noun phrase follows."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to mark the formal specification the sentence sets up."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). A colon after a complete clause correctly introduces the noun phrase that specifies the ''single overriding factor.''"},{"id":"D","text":" — namely,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Adding ''namely'' after the dash is redundant with the colon''s function and creates a wordy, nonstandard construction here."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: :.

Distractor analysis:
- A: [Comma Splice] A semicolon requires a second independent clause, but a noun phrase follows.
- B: [Run-on Conjunction] A comma is too weak to mark the formal specification the sentence sets up.
- D: [Fragmented Semicolon/Colon] Adding ''namely'' after the dash is redundant with the colon''s function and creates a wordy, nonstandard construction here.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9283013e-83bf-4f53-ac08-796e3d15e31a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the appositive."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('91065f0d-d08f-434d-89c4-0dacc3a3cfdc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the appositive."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('a670f2ef-bb8d-40a0-9607-cfb2f65f95ef', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems—","is_correct":true,"explanation":"Correct (A). Em dash introduces explanatory elaboration of the restructuring."},{"id":"B","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"C","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"D","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('575e04e7-ee23-4d33-b5b5-95bed20f7ef6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('548680ea-7b85-456e-a1c9-d8b5b88d5788', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('f3b7fc7d-5909-4425-bb54-146445022e0b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('559edc35-0142-4016-a98a-6adb3272f892', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Correct (D). Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('c50a7b60-45e8-4ad8-b6d3-564af98c0e6f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the appositive."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('b448e5e8-9671-4f40-b620-6cd715f7af91', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('ef29cf1d-50c9-4f68-95b0-7a773538d78b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the appositive."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('d606d9f6-4b87-4818-b35d-4ebbb76fd4da', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."},{"id":"D","text":"ecosystems—","is_correct":true,"explanation":"Correct (D). Em dash introduces explanatory elaboration of the restructuring."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('3bff408b-b975-425e-9ed9-7e38d8e3973b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the appositive."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('663a7ad4-9ecf-4e48-b894-b2ffb83328c6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('3afae547-2c7a-4b8a-bc9d-dc6207248e7b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('d3224ce9-9611-4380-8c5a-8210efa9eba4', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.', 'passage', '[{"id":"A","text":"ecosystems,","is_correct":false,"explanation":"[Comma Splice] Comma splice between independent clauses."},{"id":"B","text":"ecosystems; while","is_correct":false,"explanation":"[Run-on Conjunction] ''while'' after semicolon creates a fragment."},{"id":"C","text":"ecosystems—","is_correct":true,"explanation":"Correct (C). Em dash introduces explanatory elaboration of the restructuring."},{"id":"D","text":"ecosystems, and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Treats clauses as parallel actions rather than explanation."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('e729274c-b590-4d86-b4ec-26ac25c797d7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":"— ... —","is_correct":true,"explanation":"Correct (A). Matched em dashes set off the appositive."},{"id":"B","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"C","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('23e29dbc-dd61-41fa-bda9-d46172ab6254', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.', 'passage', '[{"id":"A","text":": ... :","is_correct":false,"explanation":"[Comma Splice] Colons cannot wrap a mid-clause appositive."},{"id":"B","text":", ... ;","is_correct":false,"explanation":"[Run-on Conjunction] Comma-semicolon pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the appositive."},{"id":"D","text":"— ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Dash-comma pairing is unmatched."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On hard items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Colons cannot wrap a mid-clause appositive.
- B: [Run-on Conjunction] Comma-semicolon pairing is unmatched.
- D: [Fragmented Semicolon/Colon] Dash-comma pairing is unmatched.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'hard', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
