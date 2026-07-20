BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('081821b9-91c1-42e0-a99d-6614e885e154', 'If the original price is $870$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$881$","is_correct":true,"explanation":"Correct (A). **Step 1:** $870×1.35=1175$. **Step 2:** $1175×0.75=881$."},{"id":"B","text":"$870$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1175$","is_correct":false,"explanation":"Choice C ($1175$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$957$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $870$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $870×(1+35/100)=1175$.
**Step 2:** Discount on new price: $1175×(1-25/100)=881$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $881$

**Distractor analysis:**
- **B** ($870$): Ignores both percent changes.
- **C** ($1175$): Choice C ($1175$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($957$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('efcfa893-2eeb-4936-947b-ff64cc97c9d6', 'If the original price is $885$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$1053$","is_correct":true,"explanation":"Correct (A). **Step 1:** $885×1.4=1239$. **Step 2:** $1239×0.85=1053$."},{"id":"B","text":"$885$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1239$","is_correct":false,"explanation":"Choice C ($1239$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1106$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $885$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $885×(1+40/100)=1239$.
**Step 2:** Discount on new price: $1239×(1-15/100)=1053$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $1053$

**Distractor analysis:**
- **B** ($885$): Ignores both percent changes.
- **C** ($1239$): Choice C ($1239$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1106$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('926395a8-9360-4ac0-a00b-9d3b03f1de7a', 'If the original price is $900$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $900×1.25=1125$. **Step 2:** $1125×0.8=900$."},{"id":"B","text":"$900$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1125$","is_correct":false,"explanation":"Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$945$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $900$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $900×(1+25/100)=1125$.
**Step 2:** Discount on new price: $1125×(1-20/100)=900$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $900$

**Distractor analysis:**
- **B** ($900$): Ignores both percent changes.
- **C** ($1125$): Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($945$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2eff4017-6928-4936-8f59-6f00480a2b29', 'If the original price is $915$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"SPR","text":"893","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $915$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $915×(1+30/100)=1190$.
**Step 2:** Discount on new price: $1190×(1-25/100)=893$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 893', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f92dce27-3c1c-4f35-908e-30173ab1600e', 'If the original price is $930$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$1068$","is_correct":true,"explanation":"Correct (A). **Step 1:** $930×1.35=1256$. **Step 2:** $1256×0.85=1068$."},{"id":"B","text":"$930$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1256$","is_correct":false,"explanation":"Choice C ($1256$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1116$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $930$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $930×(1+35/100)=1256$.
**Step 2:** Discount on new price: $1256×(1-15/100)=1068$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $1068$

**Distractor analysis:**
- **B** ($930$): Ignores both percent changes.
- **C** ($1256$): Choice C ($1256$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1116$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4969b969-7717-48b7-b818-53ed28d43116', 'If the original price is $945$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$1058$","is_correct":true,"explanation":"Correct (A). **Step 1:** $945×1.4=1323$. **Step 2:** $1323×0.8=1058$."},{"id":"B","text":"$945$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1323$","is_correct":false,"explanation":"Choice C ($1323$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1134$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $945$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $945×(1+40/100)=1323$.
**Step 2:** Discount on new price: $1323×(1-20/100)=1058$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $1058$

**Distractor analysis:**
- **B** ($945$): Ignores both percent changes.
- **C** ($1323$): Choice C ($1323$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1134$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('702dfada-db02-4385-b870-253495928b34', 'If the original price is $960$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $960×1.25=1200$. **Step 2:** $1200×0.75=900$."},{"id":"B","text":"$960$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1200$","is_correct":false,"explanation":"Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$960$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $960$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $960×(1+25/100)=1200$.
**Step 2:** Discount on new price: $1200×(1-25/100)=900$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $900$

**Distractor analysis:**
- **B** ($960$): Ignores both percent changes.
- **C** ($1200$): Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($960$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6bc3ceff-ca17-4a66-93c9-6ed2fbf4a32c', 'If the original price is $975$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"SPR","text":"1078","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $975$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $975×(1+30/100)=1268$.
**Step 2:** Discount on new price: $1268×(1-15/100)=1078$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 1078', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fada6d1c-c235-401d-8e67-5fe751a58481', 'If the original price is $990$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$1070$","is_correct":true,"explanation":"Correct (A). **Step 1:** $990×1.35=1337$. **Step 2:** $1337×0.8=1070$."},{"id":"B","text":"$990$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1337$","is_correct":false,"explanation":"Choice C ($1337$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1139$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $990$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $990×(1+35/100)=1337$.
**Step 2:** Discount on new price: $1337×(1-20/100)=1070$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $1070$

**Distractor analysis:**
- **B** ($990$): Ignores both percent changes.
- **C** ($1337$): Choice C ($1337$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1139$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e2e697df-8044-4eb8-91a3-9556a59e91d6', 'If the original price is $1005$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$1055$","is_correct":true,"explanation":"Correct (A). **Step 1:** $1005×1.4=1407$. **Step 2:** $1407×0.75=1055$."},{"id":"B","text":"$1005$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1407$","is_correct":false,"explanation":"Choice C ($1407$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1156$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $1005$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $1005×(1+40/100)=1407$.
**Step 2:** Discount on new price: $1407×(1-25/100)=1055$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $1055$

**Distractor analysis:**
- **B** ($1005$): Ignores both percent changes.
- **C** ($1407$): Choice C ($1407$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1156$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c71e7b63-5236-4ecc-8d98-0513ebac437a', 'If the original price is $120$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$128$","is_correct":true,"explanation":"Correct (A). **Step 1:** $120×1.25=150$. **Step 2:** $150×0.85=128$."},{"id":"B","text":"$120$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$150$","is_correct":false,"explanation":"Choice C ($150$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$132$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $120$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $120×(1+25/100)=150$.
**Step 2:** Discount on new price: $150×(1-15/100)=128$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $128$

**Distractor analysis:**
- **B** ($120$): Ignores both percent changes.
- **C** ($150$): Choice C ($150$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($132$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e0ab33b3-3d70-4eea-a24c-a8d840b1e03c', 'If the original price is $135$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$141$","is_correct":true,"explanation":"Correct (A). **Step 1:** $135×1.3=176$. **Step 2:** $176×0.8=141$."},{"id":"B","text":"$135$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$176$","is_correct":false,"explanation":"Choice C ($176$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$149$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $135$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $135×(1+30/100)=176$.
**Step 2:** Discount on new price: $176×(1-20/100)=141$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $141$

**Distractor analysis:**
- **B** ($135$): Ignores both percent changes.
- **C** ($176$): Choice C ($176$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($149$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
