BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('960120a1-3239-4d82-9b63-2f023493f4b9', 'If the original price is $510$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$517$","is_correct":true,"explanation":"Correct (A). **Step 1:** $510×1.35=689$. **Step 2:** $689×0.75=517$."},{"id":"B","text":"$510$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$689$","is_correct":false,"explanation":"Choice C ($689$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$561$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $510$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $510×(1+35/100)=689$.
**Step 2:** Discount on new price: $689×(1-25/100)=517$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $517$

**Distractor analysis:**
- **B** ($510$): Ignores both percent changes.
- **C** ($689$): Choice C ($689$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($561$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4e859060-34a0-47ba-8c7b-70f9112e90a0', 'If the original price is $525$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$625$","is_correct":true,"explanation":"Correct (A). **Step 1:** $525×1.4=735$. **Step 2:** $735×0.85=625$."},{"id":"B","text":"$525$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$735$","is_correct":false,"explanation":"Choice C ($735$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$656$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $525$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $525×(1+40/100)=735$.
**Step 2:** Discount on new price: $735×(1-15/100)=625$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $625$

**Distractor analysis:**
- **B** ($525$): Ignores both percent changes.
- **C** ($735$): Choice C ($735$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($656$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e5e1fa44-9709-4c61-834e-c58d81f9259c', 'If the original price is $540$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$540$","is_correct":true,"explanation":"Correct (A). **Step 1:** $540×1.25=675$. **Step 2:** $675×0.8=540$."},{"id":"B","text":"$540$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$675$","is_correct":false,"explanation":"Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$567$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $540$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $540×(1+25/100)=675$.
**Step 2:** Discount on new price: $675×(1-20/100)=540$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $540$

**Distractor analysis:**
- **B** ($540$): Ignores both percent changes.
- **C** ($675$): Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($567$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('30185010-885d-4f8a-945c-f317f63b2c2e', 'If the original price is $555$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"SPR","text":"542","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $555$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $555×(1+30/100)=722$.
**Step 2:** Discount on new price: $722×(1-25/100)=542$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 542', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c323a91e-1618-4cd9-ad43-b13dc86e7dfd', 'If the original price is $570$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$655$","is_correct":true,"explanation":"Correct (A). **Step 1:** $570×1.35=770$. **Step 2:** $770×0.85=655$."},{"id":"B","text":"$570$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$770$","is_correct":false,"explanation":"Choice C ($770$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$684$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $570$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $570×(1+35/100)=770$.
**Step 2:** Discount on new price: $770×(1-15/100)=655$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $655$

**Distractor analysis:**
- **B** ($570$): Ignores both percent changes.
- **C** ($770$): Choice C ($770$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($684$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('249c740e-91c9-49a5-9eaf-5969c498fbc9', 'If the original price is $585$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$655$","is_correct":true,"explanation":"Correct (A). **Step 1:** $585×1.4=819$. **Step 2:** $819×0.8=655$."},{"id":"B","text":"$585$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$819$","is_correct":false,"explanation":"Choice C ($819$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$702$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $585$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $585×(1+40/100)=819$.
**Step 2:** Discount on new price: $819×(1-20/100)=655$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $655$

**Distractor analysis:**
- **B** ($585$): Ignores both percent changes.
- **C** ($819$): Choice C ($819$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($702$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d998527-a9e4-4343-820f-4c5bedca11e7', 'If the original price is $600$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$563$","is_correct":true,"explanation":"Correct (A). **Step 1:** $600×1.25=750$. **Step 2:** $750×0.75=563$."},{"id":"B","text":"$600$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$750$","is_correct":false,"explanation":"Choice C ($750$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$600$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $600$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $600×(1+25/100)=750$.
**Step 2:** Discount on new price: $750×(1-25/100)=563$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $563$

**Distractor analysis:**
- **B** ($600$): Ignores both percent changes.
- **C** ($750$): Choice C ($750$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($600$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b7fe3e52-c6e0-4564-ae20-56947926122b', 'If the original price is $615$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"SPR","text":"680","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $615$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $615×(1+30/100)=800$.
**Step 2:** Discount on new price: $800×(1-15/100)=680$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 680', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('11bfebb0-f1ad-4e9e-bd61-0fdc53b5c135', 'If the original price is $630$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$681$","is_correct":true,"explanation":"Correct (A). **Step 1:** $630×1.35=851$. **Step 2:** $851×0.8=681$."},{"id":"B","text":"$630$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$851$","is_correct":false,"explanation":"Choice C ($851$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$725$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $630$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $630×(1+35/100)=851$.
**Step 2:** Discount on new price: $851×(1-20/100)=681$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $681$

**Distractor analysis:**
- **B** ($630$): Ignores both percent changes.
- **C** ($851$): Choice C ($851$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($725$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0011f2c0-e958-43c1-868f-b837462253ac', 'If the original price is $645$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$677$","is_correct":true,"explanation":"Correct (A). **Step 1:** $645×1.4=903$. **Step 2:** $903×0.75=677$."},{"id":"B","text":"$645$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$903$","is_correct":false,"explanation":"Choice C ($903$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$742$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $645$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $645×(1+40/100)=903$.
**Step 2:** Discount on new price: $903×(1-25/100)=677$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $677$

**Distractor analysis:**
- **B** ($645$): Ignores both percent changes.
- **C** ($903$): Choice C ($903$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($742$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('18741bb7-5e9d-4bfd-a530-0da4945b6cb4', 'If the original price is $660$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$701$","is_correct":true,"explanation":"Correct (A). **Step 1:** $660×1.25=825$. **Step 2:** $825×0.85=701$."},{"id":"B","text":"$660$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$825$","is_correct":false,"explanation":"Choice C ($825$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$726$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $660$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $660×(1+25/100)=825$.
**Step 2:** Discount on new price: $825×(1-15/100)=701$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $701$

**Distractor analysis:**
- **B** ($660$): Ignores both percent changes.
- **C** ($825$): Choice C ($825$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($726$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('152e5556-235e-4108-84fe-54bdbf9430fa', 'If the original price is $675$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"SPR","text":"702","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $675$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $675×(1+30/100)=878$.
**Step 2:** Discount on new price: $878×(1-20/100)=702$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 702', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
