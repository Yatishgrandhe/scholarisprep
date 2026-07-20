BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('45765a2b-5cf0-47c3-bf2d-40499bd90a8a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('18df581a-6823-4545-b4ec-52481997e823', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('a5c0074e-581d-4f40-b522-2b02dae2701d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). Comma plus ''and'' joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('215c2f7a-c350-4e88-ba3a-48aa4a56bc3d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). Colon introduces a list after a complete clause."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('c93c2360-da33-4397-849a-c8a02552a61e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('182f5d37-57cf-464f-9aad-30f030a4adbd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('e00b143e-86d0-477d-8ee3-9259c731a5c7', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). Comma plus ''and'' joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('e98fd561-c6a3-4830-954c-d51fee2bd212', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). Colon introduces a list after a complete clause."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('d21d3ceb-be7b-470d-9845-8ea04549e15a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('9bd2a1dd-813e-4fb3-b81f-d4b6e4635d81', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('0370ea6d-0452-4cea-b77f-ffbc0ac29bab', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('c7ecfcc5-77f2-461c-8fc0-b94367339141', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). Colon introduces a list after a complete clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('ff47b7a1-4396-4f59-8869-36ce34ebd03b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). A comma plus ''and'' correctly joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('a2a85ff7-8578-40af-a626-4f0a558de85a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). A colon follows a complete clause to introduce a list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('6130422e-33b6-4bd7-ac09-e72665df7270', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('5d653f82-b4ab-42ce-a729-c6246546f7a6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). Colon introduces a list after a complete clause."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('2ddc6662-50d8-4f58-9cf3-143e7a358e40', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('3ed8efc7-419c-4352-ba87-030798f04a4d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('55583e80-e580-4a55-85c8-903c574d7b3c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). Comma plus ''and'' joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('4e7b2596-65ef-417a-801e-7b050f1be791', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). Colon introduces a list after a complete clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('27c8751c-bbd6-4010-81e7-3d779b1c4903', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). A comma plus ''and'' correctly joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('522ae9f9-bfd1-4dba-8e4b-6dbea9803e76', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('147c472d-102d-4dc9-82f6-1d176f49ab4e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). Comma plus ''and'' joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('6e01959a-8649-4dcf-9b59-a2d6b463d19a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). Colon introduces a list after a complete clause."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('73332a47-64a0-4f92-82b1-5fc038db6b16', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('a8c113e2-ad4e-41e4-b268-4586697dc5fd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). A colon follows a complete clause to introduce a list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('83e8e471-65d3-4d44-96f8-d3acdb11b645', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing a comma with an em dash leaves the parenthetical punctuation unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Opening with an em dash but closing with a comma is unmatched and incorrect."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). A matched pair of em dashes correctly sets off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] An opening parenthesis must close with a parenthesis, not a comma."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:deciding}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: — ... —.

Distractor analysis:
- A: [Comma Splice] Mixing a comma with an em dash leaves the parenthetical punctuation unmatched.
- B: [Run-on Conjunction] Opening with an em dash but closing with a comma is unmatched and incorrect.
- D: [Fragmented Semicolon/Colon] An opening parenthesis must close with a parenthesis, not a comma.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8c7ad559-5332-402f-81c0-bb84b6b6ae1f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The telescope captured the faint galaxy after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone between two independent clauses is a comma splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies the second clause explains or lists, but here the clauses are simply related events."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). A semicolon correctly links two closely related independent clauses."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' produces an ungrammatical join."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:balanced}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone between two independent clauses is a comma splice.
- B: [Run-on Conjunction] A colon implies the second clause explains or lists, but here the clauses are simply related events.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' produces an ungrammatical join.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ca4999e3-14ed-4fa6-8207-5bf63a181b31', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('6e9d8f5b-27bb-4ac5-8b3e-4b77ec9ff13f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('05c7d219-58bf-4145-83f9-c865ede8129a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('a41915d4-db95-44a8-8c88-ac65e4f9598a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":";","is_correct":true,"explanation":"Correct (A). A semicolon links two related independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('0ea8886e-9d82-4fce-9d2f-de3acf4c780b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). Semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('a3f07c76-94db-4bb3-835b-062f36259c71', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('5723ba02-7427-4335-8a17-793dfb4e8045', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). A semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('68c37e3b-e0c4-4589-b428-56baf69d1927', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). Semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('2feb20f8-82f5-4692-bd2c-d187b704e99d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the nonessential modifier."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:anticipate}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('532bddc0-59cd-41f8-80f5-ec933f2edd2a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":";","is_correct":true,"explanation":"Correct (B). A semicolon links two related independent clauses."},{"id":"C","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('f9948229-7df4-4661-85db-9cce37c4144d', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('92664e81-eb28-4394-8b44-bf6d3be49b80', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"— ... —","is_correct":true,"explanation":"Correct (C). Matched em dashes set off the nonessential modifier."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('f24b91b9-9027-4858-b0c1-e8a7db475ea5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The telescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). A semicolon links two related independent clauses."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:instructs}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('b5aa377d-e5a2-4498-8c27-fbae9e9c57f8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('a22ec33f-6d9a-40e8-be9f-7585a807d669', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the nonessential modifier."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('dde619af-8338-4094-867a-175ca6451e72', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The radiotelescope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). A semicolon links two related independent clauses."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('6d302855-232e-4c25-903a-62abd51e6fb2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). Semicolon links two related independent clauses."},{"id":"D","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('85bafeef-e1b3-4d7a-b29f-fdd49aaf4b48', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"C","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."},{"id":"D","text":"— ... —","is_correct":true,"explanation":"Correct (D). Matched em dashes set off the nonessential modifier."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:explanatory}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('df25845f-49c1-46a2-9b0d-672b50b28d97', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The spectrometer captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). A semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
Focus on {{yellow:relationship}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

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
VALUES ('05340238-43da-4807-829e-b9e5b47f4230', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The chemist synthesized the compound after repeated trials ______ the spectral analysis confirmed a structure no one had predicted.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] Colon implies explanation."},{"id":"C","text":" and,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and''."},{"id":"D","text":";","is_correct":true,"explanation":"Correct (D). Semicolon links two related independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('3ea092e0-6cbf-44fb-a9d1-fba81fe89a40', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. Marie Tharp''s painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.', 'passage', '[{"id":"A","text":", ... —","is_correct":false,"explanation":"[Comma Splice] Mixing comma and dash is unmatched."},{"id":"B","text":"— ... —","is_correct":true,"explanation":"Correct (B). Matched em dashes set off the nonessential modifier."},{"id":"C","text":"— ... ,","is_correct":false,"explanation":"[Run-on Conjunction] Dash-comma pairing is unmatched."},{"id":"D","text":"( ... ,","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Parenthesis must close with parenthesis."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('1c5b3bf2-cd48-47e7-8ee7-5e18c34c17c8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The microscope captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone is a splice."},{"id":"B","text":":","is_correct":false,"explanation":"[Run-on Conjunction] A colon implies explanation or list."},{"id":"C","text":";","is_correct":true,"explanation":"Correct (C). A semicolon links two related independent clauses."},{"id":"D","text":" and, ","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
Focus on {{yellow:trailed}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On medium items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice C is correct: ;.

Distractor analysis:
- A: [Comma Splice] A comma alone is a splice.
- B: [Run-on Conjunction] A colon implies explanation or list.
- D: [Fragmented Semicolon/Colon] Misplaced punctuation around ''and'' is ungrammatical.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'medium', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
