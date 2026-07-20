BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6eec7aed-4007-4740-8651-99fdfe112784', 'If the original price is $510$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$517$","is_correct":true,"explanation":"Correct (A). **Step 1:** $510×1.35=689$. **Step 2:** $689×0.75=517$."},{"id":"B","text":"$510$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$689$","is_correct":false,"explanation":"Choice C ($689$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$561$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $510$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $510×(1+35/100)=689$.
**Step 2:** Discount on new price: $689×(1-25/100)=517$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $517$

**Distractor analysis:**
- **B** ($510$): Ignores both percent changes.
- **C** ($689$): Choice C ($689$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($561$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8fa8eddd-fe8b-4164-a27f-55f49070381a', 'If the original price is $525$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$625$","is_correct":true,"explanation":"Correct (A). **Step 1:** $525×1.4=735$. **Step 2:** $735×0.85=625$."},{"id":"B","text":"$525$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$735$","is_correct":false,"explanation":"Choice C ($735$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$656$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $525$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $525×(1+40/100)=735$.
**Step 2:** Discount on new price: $735×(1-15/100)=625$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $625$

**Distractor analysis:**
- **B** ($525$): Ignores both percent changes.
- **C** ($735$): Choice C ($735$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($656$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a6f5f06e-fa24-4b38-a062-2fc82c659b5a', 'If the original price is $540$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$540$","is_correct":true,"explanation":"Correct (A). **Step 1:** $540×1.25=675$. **Step 2:** $675×0.8=540$."},{"id":"B","text":"$540$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$675$","is_correct":false,"explanation":"Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$567$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $540$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $540×(1+25/100)=675$.
**Step 2:** Discount on new price: $675×(1-20/100)=540$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $540$

**Distractor analysis:**
- **B** ($540$): Ignores both percent changes.
- **C** ($675$): Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($567$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('adfbce58-cbdf-4316-936a-d9f59fbec331', 'If the original price is $555$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"SPR","text":"542","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $555$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $555×(1+30/100)=722$.
**Step 2:** Discount on new price: $722×(1-25/100)=542$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 542', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e308b07-5a88-40bb-b440-94501d1e95dc', 'If the original price is $570$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$655$","is_correct":true,"explanation":"Correct (A). **Step 1:** $570×1.35=770$. **Step 2:** $770×0.85=655$."},{"id":"B","text":"$570$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$770$","is_correct":false,"explanation":"Choice C ($770$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$684$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $570$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $570×(1+35/100)=770$.
**Step 2:** Discount on new price: $770×(1-15/100)=655$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $655$

**Distractor analysis:**
- **B** ($570$): Ignores both percent changes.
- **C** ($770$): Choice C ($770$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($684$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('80a972c1-cb22-4eaf-924f-3f23040938ba', 'If the original price is $585$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$655$","is_correct":true,"explanation":"Correct (A). **Step 1:** $585×1.4=819$. **Step 2:** $819×0.8=655$."},{"id":"B","text":"$585$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$819$","is_correct":false,"explanation":"Choice C ($819$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$702$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $585$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $585×(1+40/100)=819$.
**Step 2:** Discount on new price: $819×(1-20/100)=655$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $655$

**Distractor analysis:**
- **B** ($585$): Ignores both percent changes.
- **C** ($819$): Choice C ($819$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($702$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fa09de7b-1382-481d-93b1-a00eaa60f1ef', 'If the original price is $600$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$563$","is_correct":true,"explanation":"Correct (A). **Step 1:** $600×1.25=750$. **Step 2:** $750×0.75=563$."},{"id":"B","text":"$600$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$750$","is_correct":false,"explanation":"Choice C ($750$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$600$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $600$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $600×(1+25/100)=750$.
**Step 2:** Discount on new price: $750×(1-25/100)=563$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $563$

**Distractor analysis:**
- **B** ($600$): Ignores both percent changes.
- **C** ($750$): Choice C ($750$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($600$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('032e3c98-9f1f-447a-a39a-2151bdee09b6', 'If the original price is $615$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"SPR","text":"680","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $615$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $615×(1+30/100)=800$.
**Step 2:** Discount on new price: $800×(1-15/100)=680$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 680', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4310724d-586a-48e3-80fc-92ba2b231f6d', 'If the original price is $630$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$681$","is_correct":true,"explanation":"Correct (A). **Step 1:** $630×1.35=851$. **Step 2:** $851×0.8=681$."},{"id":"B","text":"$630$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$851$","is_correct":false,"explanation":"Choice C ($851$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$725$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $630$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $630×(1+35/100)=851$.
**Step 2:** Discount on new price: $851×(1-20/100)=681$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $681$

**Distractor analysis:**
- **B** ($630$): Ignores both percent changes.
- **C** ($851$): Choice C ($851$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($725$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a0ce5def-b0c8-4220-8de7-5286a158de68', 'If the original price is $645$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$677$","is_correct":true,"explanation":"Correct (A). **Step 1:** $645×1.4=903$. **Step 2:** $903×0.75=677$."},{"id":"B","text":"$645$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$903$","is_correct":false,"explanation":"Choice C ($903$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$742$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $645$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $645×(1+40/100)=903$.
**Step 2:** Discount on new price: $903×(1-25/100)=677$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $677$

**Distractor analysis:**
- **B** ($645$): Ignores both percent changes.
- **C** ($903$): Choice C ($903$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($742$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0e3aee8b-7dac-48a2-aec6-d02b97aa9fa6', 'If the original price is $660$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$701$","is_correct":true,"explanation":"Correct (A). **Step 1:** $660×1.25=825$. **Step 2:** $825×0.85=701$."},{"id":"B","text":"$660$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$825$","is_correct":false,"explanation":"Choice C ($825$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$726$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $660$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $660×(1+25/100)=825$.
**Step 2:** Discount on new price: $825×(1-15/100)=701$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $701$

**Distractor analysis:**
- **B** ($660$): Ignores both percent changes.
- **C** ($825$): Choice C ($825$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($726$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('547ed3bc-208d-462c-9bfe-7920f5ecfc7c', 'If the original price is $675$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"SPR","text":"702","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $675$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $675×(1+30/100)=878$.
**Step 2:** Discount on new price: $878×(1-20/100)=702$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 702', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
