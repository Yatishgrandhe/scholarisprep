BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('264d4bcd-5fc2-4e5e-89d1-7b87789b7938', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). Comma plus ''and'' joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('5a648721-b0ca-437b-9972-e67d9fbe78a9', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). Colon introduces a list after a complete clause."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('1667220a-3406-4537-b2a3-ab0a41b98473', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('7de54146-5b38-4581-bd4a-c57ba33bf977', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('462ac778-ac05-497c-965c-588e98b49e85', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). Comma plus ''and'' joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('2ec3c1a8-7bdd-4171-9b04-4d30551dbfe0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('c52ed506-c830-4c7e-98a7-48dc4f9472a6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). A comma plus ''and'' correctly joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('b6bfa5dc-c060-41a3-bf37-9ddc3080d010', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). A colon follows a complete clause to introduce a list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('22884f21-a022-4194-bec0-7a671a8bdba3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). Comma plus ''and'' joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('04ee77c7-0bc2-433f-9488-40bea547a201', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). Colon introduces a list after a complete clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('712bc079-75a4-40dd-b072-1040b72c886f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). A comma plus ''and'' correctly joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('798f789c-3a75-41fe-a71a-fa847b34fccb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('ec779679-3378-457a-bdc0-6908ff299701', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). Comma plus ''and'' joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('97fc6a58-d8a0-4289-a908-dbd005a47e64', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). Colon introduces a list after a complete clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('e9e41aef-58b0-4dc7-aaa8-560df99d575f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('762958fb-b60f-479a-b660-5dc7aa0b5208', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). A colon follows a complete clause to introduce a list."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('f33700f3-ace6-4a50-bccf-8fc0d60e2444', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). Comma plus ''and'' joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('72dcd991-bcbd-4290-af08-f1a3a28d3625', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). Colon introduces a list after a complete clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('66b2b6bf-9a31-484d-8a97-e9d3bd8cb11b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('53d38b1c-a907-40f4-9cb8-032f1bca6fee', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('a1a063e5-4855-4dfd-8c91-39508d4ba7f5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). Comma plus ''and'' joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('428bd61a-ff03-43ff-a789-279dcd4eb7d6', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). Colon introduces a list after a complete clause."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('6cb2b7a1-272e-448b-a25e-1ef772383db0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). A comma plus ''and'' correctly joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('24a326f8-53dc-43cd-bd88-240355836ae3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). A colon follows a complete clause to introduce a list."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('4f340d1e-9dac-4121-a3c8-82c7c92f3bbb', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). Comma plus ''and'' joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('e9ec9a9e-ae9b-4501-a146-1d00174f4dbd', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('5fa7053f-5732-4217-9aa3-5e8bab6c8af0', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('94e1fa96-34f3-405c-83ad-a5e26c3ba73f', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). A colon follows a complete clause to introduce a list."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('7dad47c7-4c51-4c56-b894-d4d1f148e4df', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('ec6d62f2-3a0f-4cff-baa8-25edc4aca6d5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). Colon introduces a list after a complete clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('83d7955a-0e58-4c4c-b82e-2a441cbc1e51', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest archive reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). A comma plus ''and'' correctly joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('409699cc-95f0-482c-b317-aaf5766cfc76', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('21ed892d-7f24-492e-b008-00bd199429b2', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice B ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). Comma plus ''and'' joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('1d465dd8-d44a-4968-b220-d836e5ffc51c', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). Colon introduces a list after a complete clause."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('58698fc8-b64d-4b84-8c54-a8e92e87395a', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest observatory reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). A comma plus ''and'' correctly joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('deff2150-384e-48ad-82d1-6e732e17d44e', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). A colon follows a complete clause to introduce a list."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('c9d2dfc7-89a8-44a2-afef-80f68608c514', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). Comma plus ''and'' joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('8b96626b-77ab-436b-b19b-b473ae6a16fc', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). Colon introduces a list after a complete clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('4836aaf5-4733-495e-8214-f1767f4c6bcf', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":", and","is_correct":true,"explanation":"Correct (C). A comma plus ''and'' correctly joins two independent clauses."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('2d271a1c-78f2-4a84-ae0d-c0d83ba9ad61', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ basil, cumin, and coriander.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('edcb1bb6-b370-4112-918a-c8313aa57544', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). Comma plus ''and'' joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('da9d0eb1-ce2f-41af-b112-51fc04f6aca3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":":","is_correct":true,"explanation":"Correct (A). Colon introduces a list after a complete clause."},{"id":"B","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('a7c26b1a-7534-4b50-90d2-c32b1a5997b1', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest museum reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). A comma plus ''and'' correctly joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('9cfefee0-a4f9-4f1b-b8ad-82b42165ed7b', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ ginger, lemongrass, and galangal.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). A colon follows a complete clause to introduce a list."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('e396d0db-5ffa-411c-8252-3d3d407fa5c3', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest theater reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored stage.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] Choice A (,…) contradicts or extends beyond the textual evidence."},{"id":"B","text":", and","is_correct":true,"explanation":"Correct (B). Comma plus ''and'' joins two independent clauses."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
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
VALUES ('e6cde534-08f5-4c33-b509-9f57f87ad818', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."},{"id":"D","text":":","is_correct":true,"explanation":"Correct (D). Colon introduces a list after a complete clause."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('7bbf76b3-a04c-4d26-99a1-2586e0568fb8', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows. The city''s oldest library reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.', 'passage', '[{"id":"A","text":",","is_correct":false,"explanation":"[Comma Splice] A comma alone creates a comma splice between independent clauses."},{"id":"B","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] No punctuation produces a run-on sentence."},{"id":"C","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without a preceding comma is nonstandard for clauses of this length."},{"id":"D","text":", and","is_correct":true,"explanation":"Correct (D). A comma plus ''and'' correctly joins two independent clauses."}]'::jsonb, 'D', 'Step 1 — Locate clause boundaries
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
VALUES ('9439c506-4684-40e4-ade7-c38d50888859', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice. The recipe calls for three uncommon ingredients ______ saffron, tamarind, and smoked paprika.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] A semicolon requires a second independent clause."},{"id":"B","text":",","is_correct":false,"explanation":"[Run-on Conjunction] A comma is too weak to introduce the list."},{"id":"C","text":":","is_correct":true,"explanation":"Correct (C). A colon follows a complete clause to introduce a list."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] Omitting punctuation fuses the list to the clause."}]'::jsonb, 'C', 'Step 1 — Locate clause boundaries
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
VALUES ('b520e815-ee49-405c-81bd-bb50e9c9e5a5', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below. The city''s oldest station reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored platform.', 'passage', '[{"id":"A","text":", and","is_correct":true,"explanation":"Correct (A). Comma plus ''and'' joins two independent clauses."},{"id":"B","text":",","is_correct":false,"explanation":"[Comma Splice] Choice B (,…) contradicts or extends beyond the textual evidence."},{"id":"C","text":"(no punctuation)","is_correct":false,"explanation":"[Run-on Conjunction] Choice C ((no punctuation)…) contradicts or extends beyond the textual evidence."},{"id":"D","text":" and","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] ''and'' without comma is nonstandard."}]'::jsonb, 'A', 'Step 1 — Locate clause boundaries
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
VALUES ('9f41796c-f24b-46cc-91de-a86455163571', 'Which choice completes the text so that it conforms to the conventions of Standard English?', 'Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship. The recipe calls for three uncommon ingredients ______ oregano, thyme, and rosemary.', 'passage', '[{"id":"A","text":";","is_correct":false,"explanation":"[Comma Splice] Semicolon needs a second clause."},{"id":"B","text":":","is_correct":true,"explanation":"Correct (B). Colon introduces a list after a complete clause."},{"id":"C","text":",","is_correct":false,"explanation":"[Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence."},{"id":"D","text":"(no punctuation)","is_correct":false,"explanation":"[Fragmented Semicolon/Colon] No punctuation fuses the list."}]'::jsonb, 'B', 'Step 1 — Locate clause boundaries
Focus on {{yellow:sentence}} in the passage. The boundaries item asks you to locate clause boundaries before comparing choices.

Step 2 — Apply punctuation rules
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the correct boundary
Choice B is correct: :.

Distractor analysis:
- A: [Comma Splice] Semicolon needs a second clause.
- C: [Run-on Conjunction] Choice C (,…) contradicts or extends beyond the textual evidence.
- D: [Fragmented Semicolon/Colon] No punctuation fuses the list.', NULL, 'Standard English Conventions', 'Boundaries', 'reading_writing', 'conventions', 'BOU', NULL, 'easy', false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"rw_subtype":"boundaries","rw_format":"grammar_blank","generator":"regenerate-english-fresh.mjs","regen_seed_offset":100000,"explanation_v2":true}'::jsonb, now(), now());
COMMIT;
