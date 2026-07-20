BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0d1c8232-ddf4-4c37-bff4-6de99783bc01', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $100.', 'passage', '[{"id":"A","text":"$100$","is_correct":false,"explanation":"Choice A ($100$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$120$","is_correct":true,"explanation":"Correct (B). **Step 1:** 100×1.20=120."},{"id":"C","text":"$130$","is_correct":false,"explanation":"Choice C ($130$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$20$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $100 	imes (1 + 20/100) = 120$

**Step 3 — Answer B.** $120$

**Distractor analysis:**
- **A** ($100$): Choice A ($100$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($130$): Choice C ($130$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($20$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9c825f99-4346-4493-aab4-eec75bd16a58', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $110.', 'passage', '[{"id":"A","text":"$110$","is_correct":false,"explanation":"Choice A ($110$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$132$","is_correct":true,"explanation":"Correct (B). **Step 1:** 110×1.20=132."},{"id":"C","text":"$142$","is_correct":false,"explanation":"Choice C ($142$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$22$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $110 	imes (1 + 20/100) = 132$

**Step 3 — Answer B.** $132$

**Distractor analysis:**
- **A** ($110$): Choice A ($110$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($142$): Choice C ($142$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($22$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8562af38-6cba-44c3-b416-efc72e0f8d29', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $120.', 'passage', '[{"id":"A","text":"$120$","is_correct":false,"explanation":"Choice A ($120$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$144$","is_correct":true,"explanation":"Correct (B). **Step 1:** 120×1.20=144."},{"id":"C","text":"$154$","is_correct":false,"explanation":"Choice C ($154$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $120 	imes (1 + 20/100) = 144$

**Step 3 — Answer B.** $144$

**Distractor analysis:**
- **A** ($120$): Choice A ($120$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($154$): Choice C ($154$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a9cc6b72-ae05-4a21-9d8e-afc55c80fb1b', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $130.', 'passage', '[{"id":"SPR","text":"156","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $130 	imes (1 + 20/100) = 156$

**Step 3 — Answer SPR.** 156', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2748fb91-3357-48d5-8408-8750d56771aa', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $140.', 'passage', '[{"id":"A","text":"$140$","is_correct":false,"explanation":"Choice A ($140$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$168$","is_correct":true,"explanation":"Correct (B). **Step 1:** 140×1.20=168."},{"id":"C","text":"$178$","is_correct":false,"explanation":"Choice C ($178$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$28$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $140 	imes (1 + 20/100) = 168$

**Step 3 — Answer B.** $168$

**Distractor analysis:**
- **A** ($140$): Choice A ($140$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($178$): Choice C ($178$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($28$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a6e49df-32dd-4c4d-bec2-f96fcb8778b4', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $150.', 'passage', '[{"id":"A","text":"$150$","is_correct":false,"explanation":"Choice A ($150$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$180$","is_correct":true,"explanation":"Correct (B). **Step 1:** 150×1.20=180."},{"id":"C","text":"$190$","is_correct":false,"explanation":"Choice C ($190$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$30$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $150 	imes (1 + 20/100) = 180$

**Step 3 — Answer B.** $180$

**Distractor analysis:**
- **A** ($150$): Choice A ($150$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($190$): Choice C ($190$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($30$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('46193896-bd15-4854-8b04-dbf833c38b31', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $160.', 'passage', '[{"id":"A","text":"$160$","is_correct":false,"explanation":"Choice A ($160$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$192$","is_correct":true,"explanation":"Correct (B). **Step 1:** 160×1.20=192."},{"id":"C","text":"$202$","is_correct":false,"explanation":"Choice C ($202$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$32$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $160 	imes (1 + 20/100) = 192$

**Step 3 — Answer B.** $192$

**Distractor analysis:**
- **A** ($160$): Choice A ($160$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($202$): Choice C ($202$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($32$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('671b581b-c183-419d-a3f7-445983cfa4d1', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $170.', 'passage', '[{"id":"SPR","text":"204","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $170 	imes (1 + 20/100) = 204$

**Step 3 — Answer SPR.** 204', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('81f73404-9d9f-49b9-8a1f-e8bd956fa1e2', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $180.', 'passage', '[{"id":"A","text":"$180$","is_correct":false,"explanation":"Choice A ($180$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$216$","is_correct":true,"explanation":"Correct (B). **Step 1:** 180×1.20=216."},{"id":"C","text":"$226$","is_correct":false,"explanation":"Choice C ($226$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$36$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $180 	imes (1 + 20/100) = 216$

**Step 3 — Answer B.** $216$

**Distractor analysis:**
- **A** ($180$): Choice A ($180$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($226$): Choice C ($226$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($36$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('444eb0b2-d97c-402d-98e2-a6e50a1cf4c0', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $190.', 'passage', '[{"id":"A","text":"$190$","is_correct":false,"explanation":"Choice A ($190$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$228$","is_correct":true,"explanation":"Correct (B). **Step 1:** 190×1.20=228."},{"id":"C","text":"$238$","is_correct":false,"explanation":"Choice C ($238$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$38$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $190 	imes (1 + 20/100) = 228$

**Step 3 — Answer B.** $228$

**Distractor analysis:**
- **A** ($190$): Choice A ($190$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($238$): Choice C ($238$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($38$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e6c68210-4108-461b-b685-4c1e356eb1d6', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $200.', 'passage', '[{"id":"A","text":"$200$","is_correct":false,"explanation":"Choice A ($200$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$240$","is_correct":true,"explanation":"Correct (B). **Step 1:** 200×1.20=240."},{"id":"C","text":"$250$","is_correct":false,"explanation":"Choice C ($250$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$40$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $200 	imes (1 + 20/100) = 240$

**Step 3 — Answer B.** $240$

**Distractor analysis:**
- **A** ($200$): Choice A ($200$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($250$): Choice C ($250$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($40$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f8a7d22-dcea-458c-979b-d1f876166d60', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $210.', 'passage', '[{"id":"SPR","text":"252","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $210 	imes (1 + 20/100) = 252$

**Step 3 — Answer SPR.** 252', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
