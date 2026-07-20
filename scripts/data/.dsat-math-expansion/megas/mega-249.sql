BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5258cf34-d59f-427b-a0ff-e32d8470176e', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $200.', 'passage', '[{"id":"A","text":"$200$","is_correct":false,"explanation":"Choice A ($200$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$240$","is_correct":true,"explanation":"Correct (B). **Step 1:** 200×1.20=240."},{"id":"C","text":"$250$","is_correct":false,"explanation":"Choice C ($250$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$40$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $200 	imes (1 + 20/100) = 240$

**Step 3 — Answer B.** $240$

**Distractor analysis:**
- **A** ($200$): Choice A ($200$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($250$): Choice C ($250$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($40$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8071d73a-2af8-4c60-8a9b-ed6826931dd5', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $210.', 'passage', '[{"id":"A","text":"$210$","is_correct":false,"explanation":"Choice A ($210$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$252$","is_correct":true,"explanation":"Correct (B). **Step 1:** 210×1.20=252."},{"id":"C","text":"$262$","is_correct":false,"explanation":"Choice C ($262$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$42$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $210 	imes (1 + 20/100) = 252$

**Step 3 — Answer B.** $252$

**Distractor analysis:**
- **A** ($210$): Choice A ($210$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($262$): Choice C ($262$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($42$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1e31dca0-a4c0-45ce-98d8-7ccdd6aecb4f', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $220.', 'passage', '[{"id":"A","text":"$220$","is_correct":false,"explanation":"Choice A ($220$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$264$","is_correct":true,"explanation":"Correct (B). **Step 1:** 220×1.20=264."},{"id":"C","text":"$274$","is_correct":false,"explanation":"Choice C ($274$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$44$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $220 	imes (1 + 20/100) = 264$

**Step 3 — Answer B.** $264$

**Distractor analysis:**
- **A** ($220$): Choice A ($220$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($274$): Choice C ($274$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($44$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fafb3811-f8a2-447f-ab5c-d45690f48560', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $230.', 'passage', '[{"id":"SPR","text":"276","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $230 	imes (1 + 20/100) = 276$

**Step 3 — Answer SPR.** 276', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a517fc0-406b-4e94-a518-92af225654fd', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $240.', 'passage', '[{"id":"A","text":"$240$","is_correct":false,"explanation":"Choice A ($240$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$288$","is_correct":true,"explanation":"Correct (B). **Step 1:** 240×1.20=288."},{"id":"C","text":"$298$","is_correct":false,"explanation":"Choice C ($298$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$48$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $240 	imes (1 + 20/100) = 288$

**Step 3 — Answer B.** $288$

**Distractor analysis:**
- **A** ($240$): Choice A ($240$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($298$): Choice C ($298$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($48$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('07989620-af42-4209-8843-436d6347776b', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $250.', 'passage', '[{"id":"A","text":"$250$","is_correct":false,"explanation":"Choice A ($250$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$300$","is_correct":true,"explanation":"Correct (B). **Step 1:** 250×1.20=300."},{"id":"C","text":"$310$","is_correct":false,"explanation":"Choice C ($310$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$50$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $250 	imes (1 + 20/100) = 300$

**Step 3 — Answer B.** $300$

**Distractor analysis:**
- **A** ($250$): Choice A ($250$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($310$): Choice C ($310$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($50$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ee48543b-a4f1-4a08-8674-92f97136912e', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $260.', 'passage', '[{"id":"A","text":"$260$","is_correct":false,"explanation":"Choice A ($260$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$312$","is_correct":true,"explanation":"Correct (B). **Step 1:** 260×1.20=312."},{"id":"C","text":"$322$","is_correct":false,"explanation":"Choice C ($322$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$52$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $260 	imes (1 + 20/100) = 312$

**Step 3 — Answer B.** $312$

**Distractor analysis:**
- **A** ($260$): Choice A ($260$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($322$): Choice C ($322$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($52$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7860e93b-b3ea-4233-8476-95972af8c9d5', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $270.', 'passage', '[{"id":"SPR","text":"324","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $270 	imes (1 + 20/100) = 324$

**Step 3 — Answer SPR.** 324', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dafc7506-3835-46f5-8634-91cab9221bf9', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $280.', 'passage', '[{"id":"A","text":"$280$","is_correct":false,"explanation":"Choice A ($280$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$336$","is_correct":true,"explanation":"Correct (B). **Step 1:** 280×1.20=336."},{"id":"C","text":"$346$","is_correct":false,"explanation":"Choice C ($346$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$56$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $280 	imes (1 + 20/100) = 336$

**Step 3 — Answer B.** $336$

**Distractor analysis:**
- **A** ($280$): Choice A ($280$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($346$): Choice C ($346$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($56$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c004461f-c5d1-41a8-b13b-a807edfbe709', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $290.', 'passage', '[{"id":"A","text":"$290$","is_correct":false,"explanation":"Choice A ($290$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$348$","is_correct":true,"explanation":"Correct (B). **Step 1:** 290×1.20=348."},{"id":"C","text":"$358$","is_correct":false,"explanation":"Choice C ($358$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$58$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $290 	imes (1 + 20/100) = 348$

**Step 3 — Answer B.** $348$

**Distractor analysis:**
- **A** ($290$): Choice A ($290$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($358$): Choice C ($358$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($58$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('19ac26b2-2c24-4500-a1c6-0b96655fee10', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $300.', 'passage', '[{"id":"A","text":"$300$","is_correct":false,"explanation":"Choice A ($300$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$360$","is_correct":true,"explanation":"Correct (B). **Step 1:** 300×1.20=360."},{"id":"C","text":"$370$","is_correct":false,"explanation":"Choice C ($370$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$60$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $300 	imes (1 + 20/100) = 360$

**Step 3 — Answer B.** $360$

**Distractor analysis:**
- **A** ($300$): Choice A ($300$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($370$): Choice C ($370$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($60$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('47873a68-311e-4b07-bcac-4cb99aea0b2a', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $310.', 'passage', '[{"id":"SPR","text":"372","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $310 	imes (1 + 20/100) = 372$

**Step 3 — Answer SPR.** 372', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
