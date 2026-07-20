BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('52b98495-db28-4999-979e-90a27d29784e', 'If the original price is $330$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$335$","is_correct":true,"explanation":"Correct (A). **Step 1:** $330×1.35=446$. **Step 2:** $446×0.75=335$."},{"id":"B","text":"$330$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$446$","is_correct":false,"explanation":"Choice C ($446$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$363$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $330$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $330×(1+35/100)=446$.
**Step 2:** Discount on new price: $446×(1-25/100)=335$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $335$

**Distractor analysis:**
- **B** ($330$): Ignores both percent changes.
- **C** ($446$): Choice C ($446$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($363$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e0acf75-742e-4960-807f-9da5f2a79c16', 'If the original price is $345$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$411$","is_correct":true,"explanation":"Correct (A). **Step 1:** $345×1.4=483$. **Step 2:** $483×0.85=411$."},{"id":"B","text":"$345$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$483$","is_correct":false,"explanation":"Choice C ($483$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$431$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $345$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $345×(1+40/100)=483$.
**Step 2:** Discount on new price: $483×(1-15/100)=411$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $411$

**Distractor analysis:**
- **B** ($345$): Ignores both percent changes.
- **C** ($483$): Choice C ($483$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($431$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6e5310a1-3a60-4b65-b7a3-d480fced7709', 'If the original price is $360$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$360$","is_correct":true,"explanation":"Correct (A). **Step 1:** $360×1.25=450$. **Step 2:** $450×0.8=360$."},{"id":"B","text":"$360$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$450$","is_correct":false,"explanation":"Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$378$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $360$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $360×(1+25/100)=450$.
**Step 2:** Discount on new price: $450×(1-20/100)=360$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $360$

**Distractor analysis:**
- **B** ($360$): Ignores both percent changes.
- **C** ($450$): Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($378$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dc2f19fa-5eb9-41c7-add2-81736eb6495a', 'If the original price is $375$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"SPR","text":"366","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $375$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $375×(1+30/100)=488$.
**Step 2:** Discount on new price: $488×(1-25/100)=366$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 366', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a703b1ee-e7fa-4aa8-8d1b-091b1903fb3b', 'If the original price is $390$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$448$","is_correct":true,"explanation":"Correct (A). **Step 1:** $390×1.35=527$. **Step 2:** $527×0.85=448$."},{"id":"B","text":"$390$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$527$","is_correct":false,"explanation":"Choice C ($527$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$468$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $390$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $390×(1+35/100)=527$.
**Step 2:** Discount on new price: $527×(1-15/100)=448$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $448$

**Distractor analysis:**
- **B** ($390$): Ignores both percent changes.
- **C** ($527$): Choice C ($527$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($468$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('594fefb6-3fbc-48f1-899d-27a9ab075430', 'If the original price is $405$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$454$","is_correct":true,"explanation":"Correct (A). **Step 1:** $405×1.4=567$. **Step 2:** $567×0.8=454$."},{"id":"B","text":"$405$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$567$","is_correct":false,"explanation":"Choice C ($567$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$486$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $405$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $405×(1+40/100)=567$.
**Step 2:** Discount on new price: $567×(1-20/100)=454$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $454$

**Distractor analysis:**
- **B** ($405$): Ignores both percent changes.
- **C** ($567$): Choice C ($567$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($486$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('33c77257-1eb1-47aa-aac5-9317392f61ab', 'If the original price is $420$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$394$","is_correct":true,"explanation":"Correct (A). **Step 1:** $420×1.25=525$. **Step 2:** $525×0.75=394$."},{"id":"B","text":"$420$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$525$","is_correct":false,"explanation":"Choice C ($525$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$420$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $420$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $420×(1+25/100)=525$.
**Step 2:** Discount on new price: $525×(1-25/100)=394$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $394$

**Distractor analysis:**
- **B** ($420$): Ignores both percent changes.
- **C** ($525$): Choice C ($525$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($420$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3bc61352-fa1b-44d4-b293-d86334e12da4', 'If the original price is $435$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"SPR","text":"481","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $435$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $435×(1+30/100)=566$.
**Step 2:** Discount on new price: $566×(1-15/100)=481$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 481', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e6a15952-c38e-4b51-858e-bdbcff5b5d3a', 'If the original price is $450$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$486$","is_correct":true,"explanation":"Correct (A). **Step 1:** $450×1.35=608$. **Step 2:** $608×0.8=486$."},{"id":"B","text":"$450$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$608$","is_correct":false,"explanation":"Choice C ($608$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$518$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $450$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $450×(1+35/100)=608$.
**Step 2:** Discount on new price: $608×(1-20/100)=486$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $486$

**Distractor analysis:**
- **B** ($450$): Ignores both percent changes.
- **C** ($608$): Choice C ($608$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($518$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a127bb07-098f-4a50-8928-28244c113be2', 'If the original price is $465$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$488$","is_correct":true,"explanation":"Correct (A). **Step 1:** $465×1.4=651$. **Step 2:** $651×0.75=488$."},{"id":"B","text":"$465$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$651$","is_correct":false,"explanation":"Choice C ($651$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$535$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $465$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $465×(1+40/100)=651$.
**Step 2:** Discount on new price: $651×(1-25/100)=488$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $488$

**Distractor analysis:**
- **B** ($465$): Ignores both percent changes.
- **C** ($651$): Choice C ($651$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($535$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5c8394ec-d32e-421f-a510-af810a805230', 'If the original price is $480$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$510$","is_correct":true,"explanation":"Correct (A). **Step 1:** $480×1.25=600$. **Step 2:** $600×0.85=510$."},{"id":"B","text":"$480$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$600$","is_correct":false,"explanation":"Choice C ($600$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$528$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $480$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $480×(1+25/100)=600$.
**Step 2:** Discount on new price: $600×(1-15/100)=510$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $510$

**Distractor analysis:**
- **B** ($480$): Ignores both percent changes.
- **C** ($600$): Choice C ($600$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($528$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1030ba7-1d32-4d7b-9ecb-4d1936334092', 'If the original price is $495$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"SPR","text":"515","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $495$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $495×(1+30/100)=644$.
**Step 2:** Discount on new price: $644×(1-20/100)=515$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 515', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
