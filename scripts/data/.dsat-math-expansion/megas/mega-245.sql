BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0093624-5fc4-4eaf-a91e-f9e7d8501baf', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $220.', 'passage', '[{"id":"A","text":"$220$","is_correct":false,"explanation":"Choice A ($220$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$264$","is_correct":true,"explanation":"Correct (B). **Step 1:** 220×1.20=264."},{"id":"C","text":"$274$","is_correct":false,"explanation":"Choice C ($274$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$44$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $220 	imes (1 + 20/100) = 264$

**Step 3 — Answer B.** $264$

**Distractor analysis:**
- **A** ($220$): Choice A ($220$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($274$): Choice C ($274$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($44$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('51cf735d-7441-44ff-9035-a2b214c6de01', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $230.', 'passage', '[{"id":"A","text":"$230$","is_correct":false,"explanation":"Choice A ($230$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$276$","is_correct":true,"explanation":"Correct (B). **Step 1:** 230×1.20=276."},{"id":"C","text":"$286$","is_correct":false,"explanation":"Choice C ($286$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$46$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $230 	imes (1 + 20/100) = 276$

**Step 3 — Answer B.** $276$

**Distractor analysis:**
- **A** ($230$): Choice A ($230$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($286$): Choice C ($286$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($46$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4264f16b-5be0-446e-b0a6-bafbb8e77f57', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $240.', 'passage', '[{"id":"A","text":"$240$","is_correct":false,"explanation":"Choice A ($240$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$288$","is_correct":true,"explanation":"Correct (B). **Step 1:** 240×1.20=288."},{"id":"C","text":"$298$","is_correct":false,"explanation":"Choice C ($298$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$48$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $240 	imes (1 + 20/100) = 288$

**Step 3 — Answer B.** $288$

**Distractor analysis:**
- **A** ($240$): Choice A ($240$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($298$): Choice C ($298$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($48$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cea5ad42-92b3-4311-bac6-1ddad3c8dea2', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $250.', 'passage', '[{"id":"SPR","text":"300","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $250 	imes (1 + 20/100) = 300$

**Step 3 — Answer SPR.** 300', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('94c18d5e-be24-4747-a554-916186782a1c', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $260.', 'passage', '[{"id":"A","text":"$260$","is_correct":false,"explanation":"Choice A ($260$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$312$","is_correct":true,"explanation":"Correct (B). **Step 1:** 260×1.20=312."},{"id":"C","text":"$322$","is_correct":false,"explanation":"Choice C ($322$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$52$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $260 	imes (1 + 20/100) = 312$

**Step 3 — Answer B.** $312$

**Distractor analysis:**
- **A** ($260$): Choice A ($260$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($322$): Choice C ($322$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($52$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('68323afc-7a51-4529-a29f-7c3f0f9f7827', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $270.', 'passage', '[{"id":"A","text":"$270$","is_correct":false,"explanation":"Choice A ($270$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$324$","is_correct":true,"explanation":"Correct (B). **Step 1:** 270×1.20=324."},{"id":"C","text":"$334$","is_correct":false,"explanation":"Choice C ($334$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$54$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $270 	imes (1 + 20/100) = 324$

**Step 3 — Answer B.** $324$

**Distractor analysis:**
- **A** ($270$): Choice A ($270$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($334$): Choice C ($334$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($54$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b8171948-3656-44d0-9eeb-b38524caa487', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $280.', 'passage', '[{"id":"A","text":"$280$","is_correct":false,"explanation":"Choice A ($280$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$336$","is_correct":true,"explanation":"Correct (B). **Step 1:** 280×1.20=336."},{"id":"C","text":"$346$","is_correct":false,"explanation":"Choice C ($346$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$56$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $280 	imes (1 + 20/100) = 336$

**Step 3 — Answer B.** $336$

**Distractor analysis:**
- **A** ($280$): Choice A ($280$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($346$): Choice C ($346$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($56$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a4bc132e-63d4-4ccf-8ea9-579745f652fe', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $290.', 'passage', '[{"id":"SPR","text":"348","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $290 	imes (1 + 20/100) = 348$

**Step 3 — Answer SPR.** 348', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c7b36420-4a2b-44c9-98cc-4d4e7593565d', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $300.', 'passage', '[{"id":"A","text":"$300$","is_correct":false,"explanation":"Choice A ($300$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$360$","is_correct":true,"explanation":"Correct (B). **Step 1:** 300×1.20=360."},{"id":"C","text":"$370$","is_correct":false,"explanation":"Choice C ($370$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$60$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $300 	imes (1 + 20/100) = 360$

**Step 3 — Answer B.** $360$

**Distractor analysis:**
- **A** ($300$): Choice A ($300$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($370$): Choice C ($370$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($60$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('920b7118-1ce2-4e9b-b2ff-a7f1ca37aac7', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $310.', 'passage', '[{"id":"A","text":"$310$","is_correct":false,"explanation":"Choice A ($310$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$372$","is_correct":true,"explanation":"Correct (B). **Step 1:** 310×1.20=372."},{"id":"C","text":"$382$","is_correct":false,"explanation":"Choice C ($382$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$62$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $310 	imes (1 + 20/100) = 372$

**Step 3 — Answer B.** $372$

**Distractor analysis:**
- **A** ($310$): Choice A ($310$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($382$): Choice C ($382$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($62$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d3035a54-1411-44cb-b206-180f476600af', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $320.', 'passage', '[{"id":"A","text":"$320$","is_correct":false,"explanation":"Choice A ($320$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$384$","is_correct":true,"explanation":"Correct (B). **Step 1:** 320×1.20=384."},{"id":"C","text":"$394$","is_correct":false,"explanation":"Choice C ($394$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$64$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $320 	imes (1 + 20/100) = 384$

**Step 3 — Answer B.** $384$

**Distractor analysis:**
- **A** ($320$): Choice A ($320$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($394$): Choice C ($394$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($64$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87822bf3-5803-4ef8-9038-b73c86bbb54e', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $330.', 'passage', '[{"id":"SPR","text":"396","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $330 	imes (1 + 20/100) = 396$

**Step 3 — Answer SPR.** 396', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
