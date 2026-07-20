BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b74c6bc5-c2e2-40c1-bfbc-05af62f1ea15', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $560.', 'passage', '[{"id":"A","text":"$560$","is_correct":false,"explanation":"Choice A ($560$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$672$","is_correct":true,"explanation":"Correct (B). **Step 1:** 560×1.20=672."},{"id":"C","text":"$682$","is_correct":false,"explanation":"Choice C ($682$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$112$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $560 	imes (1 + 20/100) = 672$

**Step 3 — Answer B.** $672$

**Distractor analysis:**
- **A** ($560$): Choice A ($560$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($682$): Choice C ($682$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($112$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72063229-2196-4100-87a0-2620d0b24217', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $570.', 'passage', '[{"id":"A","text":"$570$","is_correct":false,"explanation":"Choice A ($570$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$684$","is_correct":true,"explanation":"Correct (B). **Step 1:** 570×1.20=684."},{"id":"C","text":"$694$","is_correct":false,"explanation":"Choice C ($694$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$114$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $570 	imes (1 + 20/100) = 684$

**Step 3 — Answer B.** $684$

**Distractor analysis:**
- **A** ($570$): Choice A ($570$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($694$): Choice C ($694$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($114$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1b028691-c0e6-4ccf-b548-74112bbfc044', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $80.', 'passage', '[{"id":"A","text":"$80$","is_correct":false,"explanation":"Choice A ($80$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$96$","is_correct":true,"explanation":"Correct (B). **Step 1:** 80×1.20=96."},{"id":"C","text":"$106$","is_correct":false,"explanation":"Choice C ($106$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$16$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $80 	imes (1 + 20/100) = 96$

**Step 3 — Answer B.** $96$

**Distractor analysis:**
- **A** ($80$): Choice A ($80$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($106$): Choice C ($106$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3ca46287-ec18-449f-a274-34ef557e29f6', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $90.', 'passage', '[{"id":"SPR","text":"108","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $90 	imes (1 + 20/100) = 108$

**Step 3 — Answer SPR.** 108', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a69a0b12-dfba-445a-a536-029f93540316', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $100.', 'passage', '[{"id":"A","text":"$100$","is_correct":false,"explanation":"Choice A ($100$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$120$","is_correct":true,"explanation":"Correct (B). **Step 1:** 100×1.20=120."},{"id":"C","text":"$130$","is_correct":false,"explanation":"Choice C ($130$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$20$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $100 	imes (1 + 20/100) = 120$

**Step 3 — Answer B.** $120$

**Distractor analysis:**
- **A** ($100$): Choice A ($100$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($130$): Choice C ($130$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($20$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c70492a5-eca6-4e20-b87c-f6424d4af139', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $110.', 'passage', '[{"id":"A","text":"$110$","is_correct":false,"explanation":"Choice A ($110$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$132$","is_correct":true,"explanation":"Correct (B). **Step 1:** 110×1.20=132."},{"id":"C","text":"$142$","is_correct":false,"explanation":"Choice C ($142$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$22$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $110 	imes (1 + 20/100) = 132$

**Step 3 — Answer B.** $132$

**Distractor analysis:**
- **A** ($110$): Choice A ($110$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($142$): Choice C ($142$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($22$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e5e6bac1-463f-4f48-b5eb-83594f388f31', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $120.', 'passage', '[{"id":"A","text":"$120$","is_correct":false,"explanation":"Choice A ($120$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$144$","is_correct":true,"explanation":"Correct (B). **Step 1:** 120×1.20=144."},{"id":"C","text":"$154$","is_correct":false,"explanation":"Choice C ($154$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $120 	imes (1 + 20/100) = 144$

**Step 3 — Answer B.** $144$

**Distractor analysis:**
- **A** ($120$): Choice A ($120$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($154$): Choice C ($154$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a52b7d42-137c-4fd4-8345-504e77d657a3', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $130.', 'passage', '[{"id":"SPR","text":"156","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $130 	imes (1 + 20/100) = 156$

**Step 3 — Answer SPR.** 156', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36abb098-ad10-4fa6-87c3-6b41a34a15f3', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $140.', 'passage', '[{"id":"A","text":"$140$","is_correct":false,"explanation":"Choice A ($140$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$168$","is_correct":true,"explanation":"Correct (B). **Step 1:** 140×1.20=168."},{"id":"C","text":"$178$","is_correct":false,"explanation":"Choice C ($178$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$28$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $140 	imes (1 + 20/100) = 168$

**Step 3 — Answer B.** $168$

**Distractor analysis:**
- **A** ($140$): Choice A ($140$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($178$): Choice C ($178$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($28$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20fbc442-d476-4806-a7fe-6d87e2935c02', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $150.', 'passage', '[{"id":"A","text":"$150$","is_correct":false,"explanation":"Choice A ($150$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$180$","is_correct":true,"explanation":"Correct (B). **Step 1:** 150×1.20=180."},{"id":"C","text":"$190$","is_correct":false,"explanation":"Choice C ($190$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$30$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $150 	imes (1 + 20/100) = 180$

**Step 3 — Answer B.** $180$

**Distractor analysis:**
- **A** ($150$): Choice A ($150$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($190$): Choice C ($190$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($30$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fc558b30-a2b9-4956-8dae-f6341a98d05b', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $160.', 'passage', '[{"id":"A","text":"$160$","is_correct":false,"explanation":"Choice A ($160$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$192$","is_correct":true,"explanation":"Correct (B). **Step 1:** 160×1.20=192."},{"id":"C","text":"$202$","is_correct":false,"explanation":"Choice C ($202$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$32$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $160 	imes (1 + 20/100) = 192$

**Step 3 — Answer B.** $192$

**Distractor analysis:**
- **A** ($160$): Choice A ($160$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($202$): Choice C ($202$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($32$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e58f1d53-1b5d-469f-94bb-fa7017c57b70', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $170.', 'passage', '[{"id":"SPR","text":"204","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $170 	imes (1 + 20/100) = 204$

**Step 3 — Answer SPR.** 204', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
