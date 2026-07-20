BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ea82006-4e06-4796-ba35-cd0382c8ba93', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $300.', 'passage', '[{"id":"A","text":"$300$","is_correct":false,"explanation":"Choice A ($300$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$360$","is_correct":true,"explanation":"Correct (B). **Step 1:** 300×1.20=360."},{"id":"C","text":"$370$","is_correct":false,"explanation":"Choice C ($370$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$60$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $300 	imes (1 + 20/100) = 360$

**Step 3 — Answer B.** $360$

**Distractor analysis:**
- **A** ($300$): Choice A ($300$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($370$): Choice C ($370$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($60$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('203001fe-d84a-4786-bc6c-ec520e3d9df7', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $310.', 'passage', '[{"id":"A","text":"$310$","is_correct":false,"explanation":"Choice A ($310$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$372$","is_correct":true,"explanation":"Correct (B). **Step 1:** 310×1.20=372."},{"id":"C","text":"$382$","is_correct":false,"explanation":"Choice C ($382$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$62$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $310 	imes (1 + 20/100) = 372$

**Step 3 — Answer B.** $372$

**Distractor analysis:**
- **A** ($310$): Choice A ($310$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($382$): Choice C ($382$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($62$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e2da241-ad0b-454f-94f0-5d5e6491d72b', 'What is the new price?', 'A 20% markup is applied to an item originally priced at $320.', 'passage', '[{"id":"A","text":"$320$","is_correct":false,"explanation":"Choice A ($320$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$384$","is_correct":true,"explanation":"Correct (B). **Step 1:** 320×1.20=384."},{"id":"C","text":"$394$","is_correct":false,"explanation":"Choice C ($394$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$64$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $320 	imes (1 + 20/100) = 384$

**Step 3 — Answer B.** $384$

**Distractor analysis:**
- **A** ($320$): Choice A ($320$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($394$): Choice C ($394$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($64$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c1a1b66-6a89-4056-b2f6-90e29ee92095', 'What is the new price? Enter your answer as a number.', 'A 20% markup is applied to an item originally priced at $330.', 'passage', '[{"id":"SPR","text":"396","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the new price? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $330 	imes (1 + 20/100) = 396$

**Step 3 — Answer SPR.** 396', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5affd283-21f6-4675-ba2f-0e1cbcaf8c0a', 'If the original price is $210$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$241$","is_correct":true,"explanation":"Correct (A). **Step 1:** $210×1.35=284$. **Step 2:** $284×0.85=241$."},{"id":"B","text":"$210$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$284$","is_correct":false,"explanation":"Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$252$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $210$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $210×(1+35/100)=284$.
**Step 2:** Discount on new price: $284×(1-15/100)=241$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $241$

**Distractor analysis:**
- **B** ($210$): Ignores both percent changes.
- **C** ($284$): Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($252$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0baa9762-c092-48c0-85a7-1c5e6b363c39', 'If the original price is $225$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$252$","is_correct":true,"explanation":"Correct (A). **Step 1:** $225×1.4=315$. **Step 2:** $315×0.8=252$."},{"id":"B","text":"$225$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$315$","is_correct":false,"explanation":"Choice C ($315$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$270$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $225$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $225×(1+40/100)=315$.
**Step 2:** Discount on new price: $315×(1-20/100)=252$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $252$

**Distractor analysis:**
- **B** ($225$): Ignores both percent changes.
- **C** ($315$): Choice C ($315$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($270$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6134b82e-6102-4d51-b368-5122b1724b2d', 'If the original price is $240$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$225$","is_correct":true,"explanation":"Correct (A). **Step 1:** $240×1.25=300$. **Step 2:** $300×0.75=225$."},{"id":"B","text":"$240$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$300$","is_correct":false,"explanation":"Choice C ($300$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$240$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $240$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $240×(1+25/100)=300$.
**Step 2:** Discount on new price: $300×(1-25/100)=225$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $225$

**Distractor analysis:**
- **B** ($240$): Ignores both percent changes.
- **C** ($300$): Choice C ($300$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($240$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d4cfdcc1-cf69-41f3-90e7-0866a19b1d0d', 'If the original price is $255$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"SPR","text":"282","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $255$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $255×(1+30/100)=332$.
**Step 2:** Discount on new price: $332×(1-15/100)=282$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 282', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4219d7a1-2348-4d8a-a328-3697d76462cf', 'If the original price is $270$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$292$","is_correct":true,"explanation":"Correct (A). **Step 1:** $270×1.35=365$. **Step 2:** $365×0.8=292$."},{"id":"B","text":"$270$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$365$","is_correct":false,"explanation":"Choice C ($365$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$311$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $270$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $270×(1+35/100)=365$.
**Step 2:** Discount on new price: $365×(1-20/100)=292$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $292$

**Distractor analysis:**
- **B** ($270$): Ignores both percent changes.
- **C** ($365$): Choice C ($365$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($311$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4de68c20-f896-4fb6-a590-16cad38a8704', 'If the original price is $285$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$299$","is_correct":true,"explanation":"Correct (A). **Step 1:** $285×1.4=399$. **Step 2:** $399×0.75=299$."},{"id":"B","text":"$285$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$399$","is_correct":false,"explanation":"Choice C ($399$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$328$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $285$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $285×(1+40/100)=399$.
**Step 2:** Discount on new price: $399×(1-25/100)=299$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $299$

**Distractor analysis:**
- **B** ($285$): Ignores both percent changes.
- **C** ($399$): Choice C ($399$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($328$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dccb3960-ecfc-43b0-a14d-b69cf0f188e1', 'If the original price is $300$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$319$","is_correct":true,"explanation":"Correct (A). **Step 1:** $300×1.25=375$. **Step 2:** $375×0.85=319$."},{"id":"B","text":"$300$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$375$","is_correct":false,"explanation":"Choice C ($375$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$330$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $300$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $300×(1+25/100)=375$.
**Step 2:** Discount on new price: $375×(1-15/100)=319$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $319$

**Distractor analysis:**
- **B** ($300$): Ignores both percent changes.
- **C** ($375$): Choice C ($375$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($330$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b630bb5d-624b-4e9b-9c6b-f63851ec7aa7', 'If the original price is $315$, what is the final price after both changes? Enter your answer as a number.', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"SPR","text":"328","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the original price is $315$, what is the final price after both changes? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Markup: $315×(1+30/100)=410$.
**Step 2:** Discount on new price: $410×(1-20/100)=328$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer SPR.** 328', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
