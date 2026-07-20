BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('063473b8-342d-4e9c-b03f-bdef777b77cf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored reading room.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone between two independent clauses creates a comma splice."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Running the two independent clauses together with no punctuation is a run-on (fused) sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus the coordinating conjunction ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is incorrect when joining two independent clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] A comma alone between two independent clauses creates a comma splice.
- B: [Run-on Conjunction] Running the two independent clauses together with no punctuation is a run-on (fused) sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is incorrect when joining two independent clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3d0d63b9-446f-488e-bfa7-6b1e878a5488', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon joins two independent clauses, but a list fragment follows, not a clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to formally introduce the list after a complete clause."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation leaves the list awkwardly fused to the clause."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). A colon correctly follows an independent clause to introduce a list."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: :.

Distractor analysis:
- A: [Comma Splice] A semicolon joins two independent clauses, but a list fragment follows, not a clause.
- B: [Run-on Conjunction] A comma is too weak to formally introduce the list after a complete clause.
- C: [Fragmented Semicolon/Colon] Omitting punctuation leaves the list awkwardly fused to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6ae460b7-8ac1-45ee-b31a-f67dd98bec10', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: , and.

Distractor analysis:
- B: [Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3bf2d498-d79e-4fb3-bcba-ecf3a78ebc57', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] Semicolon needs a second clause.
- C: [Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1ecc86b5-e992-47b6-b0fb-d6ea1d34204e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- B: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7f95745-559d-4cad-8b93-d6c495823d64', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). A colon follows a complete clause to introduce a list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: :.

Distractor analysis:
- A: [Comma Splice] A semicolon requires a second independent clause.
- B: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('603fc6ed-a859-452e-9739-500e038574fc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). Comma plus ''and'' joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3a80b5da-3e2d-4912-affe-50f8b49ddf4c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] Semicolon needs a second clause.
- C: [Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('64e746f0-881a-4343-ab1f-f021709382f2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). A comma plus ''and'' correctly joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: , and.

Distractor analysis:
- A: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- B: [Run-on Conjunction] No punctuation produces a run-on sentence.
- C: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('645f276c-e80c-41b6-857a-1547616e4f69', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). A colon follows a complete clause to introduce a list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: :.

Distractor analysis:
- A: [Comma Splice] A semicolon requires a second independent clause.
- B: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('200ac2f0-ba75-4bf6-a4c3-71bab1d22de0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). Comma plus ''and'' joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: , and.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6cd14a2e-3362-4118-8c68-2d5c397b489b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). Colon introduces a list after a complete clause."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: :.

Distractor analysis:
- A: [Comma Splice] Semicolon needs a second clause.
- B: [Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence.
- C: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('473637be-8a74-430a-ae93-b53e995e945b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: , and.

Distractor analysis:
- B: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- C: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3fdc93e1-06c8-4c46-8843-f3694c95ccb3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] A semicolon requires a second independent clause.
- C: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('89946e26-5f2b-40b1-8d19-66ae7957d8ac', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). Comma plus ''and'' joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: , and.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence.
- C: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7d60ebc9-3b27-4cc3-9fe9-b24dc0df758b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] Semicolon needs a second clause.
- C: [Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a6e598d-60a3-4573-9933-72d992b4b8e9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). A comma plus ''and'' correctly joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: , and.

Distractor analysis:
- A: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- C: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2795bf48-16dc-4bad-87e0-ba7958b15b36', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). A colon follows a complete clause to introduce a list."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: :.

Distractor analysis:
- A: [Comma Splice] A semicolon requires a second independent clause.
- B: [Run-on Conjunction] A comma is too weak to introduce the list.
- C: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7c3decb-71cb-4504-91ba-ae855dc134a0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). Comma plus ''and'' joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c3ebbd72-b02d-4e4b-88d7-378da919b9c3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). Colon introduces a list after a complete clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: :.

Distractor analysis:
- A: [Comma Splice] Semicolon needs a second clause.
- C: [Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('01cc5cac-2d0d-4743-a3d7-960c648b94db', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- B: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('86f57d5a-fe4e-4e57-a1c1-acbe9d92c2f8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: :.

Distractor analysis:
- A: [Comma Splice] A semicolon requires a second independent clause.
- C: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('711cc6ef-2f7c-4bf5-9462-e9e4c792b825', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: , and.

Distractor analysis:
- B: [Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3b476534-e444-46aa-b747-011c0040397f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). Colon introduces a list after a complete clause."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: :.

Distractor analysis:
- A: [Comma Splice] Semicolon needs a second clause.
- B: [Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence.
- C: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('33d0729f-6b7f-4b6d-8aa0-2ae37e798278', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). A comma plus ''and'' correctly joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: , and.

Distractor analysis:
- A: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- C: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bc37c19f-af62-40b4-a8bf-2abeb4664986', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] A semicolon requires a second independent clause.
- C: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('578ff42e-ac5d-431e-b91b-347ce2805ae7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). Comma plus ''and'' joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: , and.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence.
- C: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7bd6760d-38e7-4c4b-b047-837b02379e2c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). Colon introduces a list after a complete clause."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: :.

Distractor analysis:
- A: [Comma Splice] Semicolon needs a second clause.
- B: [Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9241d624-92d1-414e-a6b9-616359125963', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- B: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a118aad0-5e50-4545-bf17-f6af8b3fd394', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] A semicolon requires a second independent clause.
- C: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b0a4f6f6-68b3-4163-8b43-62adfc3b673c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). Comma plus ''and'' joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: , and.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence.
- C: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4e67b188-b8a1-4566-a522-44c39cfb21fb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). Colon introduces a list after a complete clause."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: :.

Distractor analysis:
- A: [Comma Splice] Semicolon needs a second clause.
- B: [Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c9e52efb-0f8d-4cb7-90e0-42e931e53717', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: , and.

Distractor analysis:
- B: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- C: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b808f7d5-3cbd-499c-8ece-a1debdee14a1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] A semicolon requires a second independent clause.
- C: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c4b2f126-f7ec-4a82-8f3a-a4bd4fa57179', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). Comma plus ''and'' joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f45dbd6d-231e-4f5a-88f4-e3772aebd620', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). Colon introduces a list after a complete clause."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice D is correct: :.

Distractor analysis:
- A: [Comma Splice] Semicolon needs a second clause.
- B: [Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence.
- C: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c65fe6b8-3d8a-429c-a6e3-6be5019bfee2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: , and.

Distractor analysis:
- B: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- C: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e42243e-17e9-4a26-b872-de3b0d7d6410', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] A semicolon requires a second independent clause.
- C: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('35b50846-6dcb-41b1-a118-b07b9900eac6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: , and.

Distractor analysis:
- B: [Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dba7a762-3f16-4a78-8ae8-2dec6a38e9a7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] Semicolon needs a second clause.
- C: [Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cb6ef936-51bf-40b7-9030-e297164df589', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: , and.

Distractor analysis:
- B: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- C: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('71803766-2140-4b5f-bfb4-357840449cc0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: :.

Distractor analysis:
- A: [Comma Splice] A semicolon requires a second independent clause.
- C: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9cab411b-82b5-4443-a6e3-ec8b840280f2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). Comma plus ''and'' joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- B: [Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('58610346-c83a-4fed-8297-c4bc05a98be0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice A is correct: :.

Distractor analysis:
- B: [Comma Splice] Semicolon needs a second clause.
- C: [Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('48c77e1b-783c-4acc-8fdf-0c07f0eeca28', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- B: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7182b555-d5a9-4f9c-a80d-065ca7caec1d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). A colon follows a complete clause to introduce a list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: :.

Distractor analysis:
- A: [Comma Splice] A semicolon requires a second independent clause.
- B: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('51c5a92d-fca5-4df2-a2a9-2ab3c897ab9c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). Comma plus ''and'' joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: , and.

Distractor analysis:
- A: [Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence.
- C: [Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] ''and'' without comma is nonstandard.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb5d3782-b852-40f2-8c6a-187935bfef5a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). Colon introduces a list after a complete clause."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: :.

Distractor analysis:
- A: [Comma Splice] Semicolon needs a second clause.
- B: [Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b0a56faf-cfe0-4064-a11b-4b7241303cd8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: , and.

Distractor analysis:
- A: [Comma Splice] A comma alone creates a comma splice between independent clauses.
- B: [Run-on Conjunction] No punctuation produces a run-on sentence.
- D: [Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('527e4fb5-0887-43e9-9f97-3b89b479ae08', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:effect,}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: :.

Distractor analysis:
- A: [Comma Splice] A semicolon requires a second independent clause.
- C: [Run-on Conjunction] A comma is too weak to introduce the list.
- D: [Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
