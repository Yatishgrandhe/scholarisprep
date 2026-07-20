BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fc65ddac-d421-4a2a-9634-08970c2f50d3', 'If the original price is $150$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$152$","is_correct":true,"explanation":"Correct (A). **Step 1:** $150×1.35=203$. **Step 2:** $203×0.75=152$."},{"id":"B","text":"$150$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$203$","is_correct":false,"explanation":"Choice C ($203$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$165$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $150$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $150×(1+35/100)=203$.
**Step 2:** Discount on new price: $203×(1-25/100)=152$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $152$

**Distractor analysis:**
- **B** ($150$): Ignores both percent changes.
- **C** ($203$): Choice C ($203$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($165$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59dcd76c-2fb4-4d45-a743-4e96efd645e6', 'If the original price is $165$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$196$","is_correct":true,"explanation":"Correct (A). **Step 1:** $165×1.4=231$. **Step 2:** $231×0.85=196$."},{"id":"B","text":"$165$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$231$","is_correct":false,"explanation":"Choice C ($231$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$206$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $165$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $165×(1+40/100)=231$.
**Step 2:** Discount on new price: $231×(1-15/100)=196$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $196$

**Distractor analysis:**
- **B** ($165$): Ignores both percent changes.
- **C** ($231$): Choice C ($231$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($206$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b6704e0e-4550-4484-8f53-4319efda5b28', 'If the original price is $180$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$180$","is_correct":true,"explanation":"Correct (A). **Step 1:** $180×1.25=225$. **Step 2:** $225×0.8=180$."},{"id":"B","text":"$180$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$225$","is_correct":false,"explanation":"Choice C ($225$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$189$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $180$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $180×(1+25/100)=225$.
**Step 2:** Discount on new price: $225×(1-20/100)=180$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $180$

**Distractor analysis:**
- **B** ($180$): Ignores both percent changes.
- **C** ($225$): Choice C ($225$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($189$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e9f5a930-66fe-48ee-8a60-dc4383123d0d', 'If the original price is $195$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$191$","is_correct":true,"explanation":"Correct (A). **Step 1:** $195×1.3=254$. **Step 2:** $254×0.75=191$."},{"id":"B","text":"$195$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$254$","is_correct":false,"explanation":"Choice C ($254$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$205$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $195$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $195×(1+30/100)=254$.
**Step 2:** Discount on new price: $254×(1-25/100)=191$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $191$

**Distractor analysis:**
- **B** ($195$): Ignores both percent changes.
- **C** ($254$): Choice C ($254$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($205$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('815fe1cf-d778-4890-b97d-faa7bcd4cc49', 'If the original price is $210$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$241$","is_correct":true,"explanation":"Correct (A). **Step 1:** $210×1.35=284$. **Step 2:** $284×0.85=241$."},{"id":"B","text":"$210$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$284$","is_correct":false,"explanation":"Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$252$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $210$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $210×(1+35/100)=284$.
**Step 2:** Discount on new price: $284×(1-15/100)=241$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $241$

**Distractor analysis:**
- **B** ($210$): Ignores both percent changes.
- **C** ($284$): Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($252$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1f419284-60ff-4b98-abc9-19f1a69dca27', 'If the original price is $225$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$252$","is_correct":true,"explanation":"Correct (A). **Step 1:** $225×1.4=315$. **Step 2:** $315×0.8=252$."},{"id":"B","text":"$225$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$315$","is_correct":false,"explanation":"Choice C ($315$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$270$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $225$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $225×(1+40/100)=315$.
**Step 2:** Discount on new price: $315×(1-20/100)=252$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $252$

**Distractor analysis:**
- **B** ($225$): Ignores both percent changes.
- **C** ($315$): Choice C ($315$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($270$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b698e8b2-f592-4fd3-9dc2-a155990badc9', 'If the original price is $240$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$225$","is_correct":true,"explanation":"Correct (A). **Step 1:** $240×1.25=300$. **Step 2:** $300×0.75=225$."},{"id":"B","text":"$240$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$300$","is_correct":false,"explanation":"Choice C ($300$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$240$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $240$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $240×(1+25/100)=300$.
**Step 2:** Discount on new price: $300×(1-25/100)=225$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $225$

**Distractor analysis:**
- **B** ($240$): Ignores both percent changes.
- **C** ($300$): Choice C ($300$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($240$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b02e410-dced-4d0e-94da-4aeadcba8725', 'If the original price is $255$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$282$","is_correct":true,"explanation":"Correct (A). **Step 1:** $255×1.3=332$. **Step 2:** $332×0.85=282$."},{"id":"B","text":"$255$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$332$","is_correct":false,"explanation":"Choice C ($332$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$293$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $255$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $255×(1+30/100)=332$.
**Step 2:** Discount on new price: $332×(1-15/100)=282$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $282$

**Distractor analysis:**
- **B** ($255$): Ignores both percent changes.
- **C** ($332$): Choice C ($332$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($293$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('715caed2-c3c8-4551-a4fd-25b86adf6312', 'If the original price is $270$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$292$","is_correct":true,"explanation":"Correct (A). **Step 1:** $270×1.35=365$. **Step 2:** $365×0.8=292$."},{"id":"B","text":"$270$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$365$","is_correct":false,"explanation":"Choice C ($365$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$311$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $270$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $270×(1+35/100)=365$.
**Step 2:** Discount on new price: $365×(1-20/100)=292$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $292$

**Distractor analysis:**
- **B** ($270$): Ignores both percent changes.
- **C** ($365$): Choice C ($365$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($311$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a51ec053-ab9c-4b4e-8d6f-191783b287c1', 'If the original price is $285$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$299$","is_correct":true,"explanation":"Correct (A). **Step 1:** $285×1.4=399$. **Step 2:** $399×0.75=299$."},{"id":"B","text":"$285$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$399$","is_correct":false,"explanation":"Choice C ($399$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$328$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $285$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $285×(1+40/100)=399$.
**Step 2:** Discount on new price: $399×(1-25/100)=299$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $299$

**Distractor analysis:**
- **B** ($285$): Ignores both percent changes.
- **C** ($399$): Choice C ($399$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($328$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9d536689-6e4e-4bad-9946-2651f193758d', 'If the original price is $300$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$319$","is_correct":true,"explanation":"Correct (A). **Step 1:** $300×1.25=375$. **Step 2:** $375×0.85=319$."},{"id":"B","text":"$300$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$375$","is_correct":false,"explanation":"Choice C ($375$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$330$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $300$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $300×(1+25/100)=375$.
**Step 2:** Discount on new price: $375×(1-15/100)=319$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $319$

**Distractor analysis:**
- **B** ($300$): Ignores both percent changes.
- **C** ($375$): Choice C ($375$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($330$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb1b2f4d-e06d-431e-a38c-f84d89904c3f', 'If the original price is $315$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$328$","is_correct":true,"explanation":"Correct (A). **Step 1:** $315×1.3=410$. **Step 2:** $410×0.8=328$."},{"id":"B","text":"$315$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$410$","is_correct":false,"explanation":"Choice C ($410$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$347$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $315$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $315×(1+30/100)=410$.
**Step 2:** Discount on new price: $410×(1-20/100)=328$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $328$

**Distractor analysis:**
- **B** ($315$): Ignores both percent changes.
- **C** ($410$): Choice C ($410$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($347$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
