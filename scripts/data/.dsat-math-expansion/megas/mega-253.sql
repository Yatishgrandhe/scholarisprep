BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dd7bbaa8-1dbd-4498-9381-15ada6a54c2d', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $180.', 'passage', '[{"id":"A","text":"$180$","is_correct":false,"explanation":"Choice A ($180$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$216$","is_correct":true,"explanation":"Correct (B). **Step 1:** 180×1.20=216."},{"id":"C","text":"$226$","is_correct":false,"explanation":"Choice C ($226$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$36$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $180 	imes (1 + 20/100) = 216$

**Step 3 — Answer B.** $216$

**Distractor analysis:**
- **A** ($180$): Choice A ($180$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($226$): Choice C ($226$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($36$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eef4d45a-b1dd-49e6-9b51-44d096970e6c', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $190.', 'passage', '[{"id":"A","text":"$190$","is_correct":false,"explanation":"Choice A ($190$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$228$","is_correct":true,"explanation":"Correct (B). **Step 1:** 190×1.20=228."},{"id":"C","text":"$238$","is_correct":false,"explanation":"Choice C ($238$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$38$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $190 	imes (1 + 20/100) = 228$

**Step 3 — Answer B.** $228$

**Distractor analysis:**
- **A** ($190$): Choice A ($190$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($238$): Choice C ($238$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($38$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a5f6b26c-0fb9-4c32-8dfa-572e724a8f98', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $200.', 'passage', '[{"id":"A","text":"$200$","is_correct":false,"explanation":"Choice A ($200$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$240$","is_correct":true,"explanation":"Correct (B). **Step 1:** 200×1.20=240."},{"id":"C","text":"$250$","is_correct":false,"explanation":"Choice C ($250$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$40$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $200 	imes (1 + 20/100) = 240$

**Step 3 — Answer B.** $240$

**Distractor analysis:**
- **A** ($200$): Choice A ($200$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($250$): Choice C ($250$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($40$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cb44baf9-c381-41f3-a9b0-05ec2f238eaf', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $210.', 'passage', '[{"id":"SPR","text":"252","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $210 	imes (1 + 20/100) = 252$

**Step 3 — Answer SPR.** 252', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('513d6f24-6ef5-4c27-a05b-381ee614dcbc', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $220.', 'passage', '[{"id":"A","text":"$220$","is_correct":false,"explanation":"Choice A ($220$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$264$","is_correct":true,"explanation":"Correct (B). **Step 1:** 220×1.20=264."},{"id":"C","text":"$274$","is_correct":false,"explanation":"Choice C ($274$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$44$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $220 	imes (1 + 20/100) = 264$

**Step 3 — Answer B.** $264$

**Distractor analysis:**
- **A** ($220$): Choice A ($220$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($274$): Choice C ($274$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($44$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7afd3dd4-fc08-443d-ad93-07146cb6a174', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $230.', 'passage', '[{"id":"A","text":"$230$","is_correct":false,"explanation":"Choice A ($230$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$276$","is_correct":true,"explanation":"Correct (B). **Step 1:** 230×1.20=276."},{"id":"C","text":"$286$","is_correct":false,"explanation":"Choice C ($286$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$46$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $230 	imes (1 + 20/100) = 276$

**Step 3 — Answer B.** $276$

**Distractor analysis:**
- **A** ($230$): Choice A ($230$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($286$): Choice C ($286$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($46$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('849a5c6e-19e9-4e99-8f15-6211fcf7ac53', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $240.', 'passage', '[{"id":"A","text":"$240$","is_correct":false,"explanation":"Choice A ($240$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$288$","is_correct":true,"explanation":"Correct (B). **Step 1:** 240×1.20=288."},{"id":"C","text":"$298$","is_correct":false,"explanation":"Choice C ($298$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$48$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $240 	imes (1 + 20/100) = 288$

**Step 3 — Answer B.** $288$

**Distractor analysis:**
- **A** ($240$): Choice A ($240$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($298$): Choice C ($298$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($48$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e6db6aa7-98de-4177-b6b9-56adefd97d4b', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $250.', 'passage', '[{"id":"SPR","text":"300","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $250 	imes (1 + 20/100) = 300$

**Step 3 — Answer SPR.** 300', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cd656045-752c-4efb-901a-9ee3f796806f', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $260.', 'passage', '[{"id":"A","text":"$260$","is_correct":false,"explanation":"Choice A ($260$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$312$","is_correct":true,"explanation":"Correct (B). **Step 1:** 260×1.20=312."},{"id":"C","text":"$322$","is_correct":false,"explanation":"Choice C ($322$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$52$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $260 	imes (1 + 20/100) = 312$

**Step 3 — Answer B.** $312$

**Distractor analysis:**
- **A** ($260$): Choice A ($260$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($322$): Choice C ($322$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($52$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cdbc46c4-30ff-4cfd-9fcc-aa652be743ae', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $270.', 'passage', '[{"id":"A","text":"$270$","is_correct":false,"explanation":"Choice A ($270$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$324$","is_correct":true,"explanation":"Correct (B). **Step 1:** 270×1.20=324."},{"id":"C","text":"$334$","is_correct":false,"explanation":"Choice C ($334$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$54$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $270 	imes (1 + 20/100) = 324$

**Step 3 — Answer B.** $324$

**Distractor analysis:**
- **A** ($270$): Choice A ($270$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($334$): Choice C ($334$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($54$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d822aaef-fef1-4cff-8ac7-1310429fca9a', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $280.', 'passage', '[{"id":"A","text":"$280$","is_correct":false,"explanation":"Choice A ($280$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$336$","is_correct":true,"explanation":"Correct (B). **Step 1:** 280×1.20=336."},{"id":"C","text":"$346$","is_correct":false,"explanation":"Choice C ($346$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$56$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $280 	imes (1 + 20/100) = 336$

**Step 3 — Answer B.** $336$

**Distractor analysis:**
- **A** ($280$): Choice A ($280$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($346$): Choice C ($346$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($56$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0221db85-72c5-47a6-a603-4289013167a4', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $290.', 'passage', '[{"id":"SPR","text":"348","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $290 	imes (1 + 20/100) = 348$

**Step 3 — Answer SPR.** 348', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
