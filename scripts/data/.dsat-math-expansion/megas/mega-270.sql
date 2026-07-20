BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6707f54c-d1f2-4224-9916-1a632327e8cb', 'If the original price is $330$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$335$","is_correct":true,"explanation":"Correct (A). **Step 1:** $330×1.35=446$. **Step 2:** $446×0.75=335$."},{"id":"B","text":"$330$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$446$","is_correct":false,"explanation":"Choice C ($446$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$363$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $330$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $330×(1+35/100)=446$.
**Step 2:** Discount on new price: $446×(1-25/100)=335$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $335$

**Distractor analysis:**
- **B** ($330$): Ignores both percent changes.
- **C** ($446$): Choice C ($446$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($363$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b8fc01e-24ca-4f98-b12b-1c52a57e725f', 'If the original price is $345$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$411$","is_correct":true,"explanation":"Correct (A). **Step 1:** $345×1.4=483$. **Step 2:** $483×0.85=411$."},{"id":"B","text":"$345$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$483$","is_correct":false,"explanation":"Choice C ($483$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$431$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $345$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $345×(1+40/100)=483$.
**Step 2:** Discount on new price: $483×(1-15/100)=411$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $411$

**Distractor analysis:**
- **B** ($345$): Ignores both percent changes.
- **C** ($483$): Choice C ($483$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($431$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('02c285fb-a196-47c3-b383-58580c88f236', 'If the original price is $360$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$360$","is_correct":true,"explanation":"Correct (A). **Step 1:** $360×1.25=450$. **Step 2:** $450×0.8=360$."},{"id":"B","text":"$360$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$450$","is_correct":false,"explanation":"Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$378$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $360$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $360×(1+25/100)=450$.
**Step 2:** Discount on new price: $450×(1-20/100)=360$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $360$

**Distractor analysis:**
- **B** ($360$): Ignores both percent changes.
- **C** ($450$): Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($378$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('26f7fba4-b561-42ed-bfd0-4861cb0c55ef', 'If the original price is $375$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$366$","is_correct":true,"explanation":"Correct (A). **Step 1:** $375×1.3=488$. **Step 2:** $488×0.75=366$."},{"id":"B","text":"$375$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$488$","is_correct":false,"explanation":"Choice C ($488$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$394$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $375$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $375×(1+30/100)=488$.
**Step 2:** Discount on new price: $488×(1-25/100)=366$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $366$

**Distractor analysis:**
- **B** ($375$): Ignores both percent changes.
- **C** ($488$): Choice C ($488$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($394$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c568747a-5305-40e7-8c29-8762bbfeb09e', 'If the original price is $390$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$448$","is_correct":true,"explanation":"Correct (A). **Step 1:** $390×1.35=527$. **Step 2:** $527×0.85=448$."},{"id":"B","text":"$390$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$527$","is_correct":false,"explanation":"Choice C ($527$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$468$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $390$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $390×(1+35/100)=527$.
**Step 2:** Discount on new price: $527×(1-15/100)=448$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $448$

**Distractor analysis:**
- **B** ($390$): Ignores both percent changes.
- **C** ($527$): Choice C ($527$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($468$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('15ae140d-8972-4982-a728-1fa1bfd4541d', 'If the original price is $405$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$454$","is_correct":true,"explanation":"Correct (A). **Step 1:** $405×1.4=567$. **Step 2:** $567×0.8=454$."},{"id":"B","text":"$405$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$567$","is_correct":false,"explanation":"Choice C ($567$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$486$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $405$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $405×(1+40/100)=567$.
**Step 2:** Discount on new price: $567×(1-20/100)=454$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $454$

**Distractor analysis:**
- **B** ($405$): Ignores both percent changes.
- **C** ($567$): Choice C ($567$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($486$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6fb29236-7088-4a26-98be-1a0d0dd2f142', 'If the original price is $420$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$394$","is_correct":true,"explanation":"Correct (A). **Step 1:** $420×1.25=525$. **Step 2:** $525×0.75=394$."},{"id":"B","text":"$420$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$525$","is_correct":false,"explanation":"Choice C ($525$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$420$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $420$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $420×(1+25/100)=525$.
**Step 2:** Discount on new price: $525×(1-25/100)=394$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $394$

**Distractor analysis:**
- **B** ($420$): Ignores both percent changes.
- **C** ($525$): Choice C ($525$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($420$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5c94bd05-0b10-4e84-aba7-d24856b78592', 'If the original price is $435$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$481$","is_correct":true,"explanation":"Correct (A). **Step 1:** $435×1.3=566$. **Step 2:** $566×0.85=481$."},{"id":"B","text":"$435$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$566$","is_correct":false,"explanation":"Choice C ($566$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$500$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $435$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $435×(1+30/100)=566$.
**Step 2:** Discount on new price: $566×(1-15/100)=481$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $481$

**Distractor analysis:**
- **B** ($435$): Ignores both percent changes.
- **C** ($566$): Choice C ($566$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($500$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bba04821-9837-4255-9b01-becae2b2a014', 'If the original price is $450$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$486$","is_correct":true,"explanation":"Correct (A). **Step 1:** $450×1.35=608$. **Step 2:** $608×0.8=486$."},{"id":"B","text":"$450$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$608$","is_correct":false,"explanation":"Choice C ($608$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$518$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $450$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $450×(1+35/100)=608$.
**Step 2:** Discount on new price: $608×(1-20/100)=486$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $486$

**Distractor analysis:**
- **B** ($450$): Ignores both percent changes.
- **C** ($608$): Choice C ($608$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($518$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b1e27675-2ebf-4662-9274-ab4c5ebb3b72', 'If the original price is $465$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$488$","is_correct":true,"explanation":"Correct (A). **Step 1:** $465×1.4=651$. **Step 2:** $651×0.75=488$."},{"id":"B","text":"$465$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$651$","is_correct":false,"explanation":"Choice C ($651$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$535$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $465$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $465×(1+40/100)=651$.
**Step 2:** Discount on new price: $651×(1-25/100)=488$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $488$

**Distractor analysis:**
- **B** ($465$): Ignores both percent changes.
- **C** ($651$): Choice C ($651$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($535$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a912878f-035b-4cb5-b827-4608a555fedb', 'If the original price is $480$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$510$","is_correct":true,"explanation":"Correct (A). **Step 1:** $480×1.25=600$. **Step 2:** $600×0.85=510$."},{"id":"B","text":"$480$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$600$","is_correct":false,"explanation":"Choice C ($600$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$528$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $480$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $480×(1+25/100)=600$.
**Step 2:** Discount on new price: $600×(1-15/100)=510$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $510$

**Distractor analysis:**
- **B** ($480$): Ignores both percent changes.
- **C** ($600$): Choice C ($600$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($528$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0fd726a-1351-497a-8cc2-a0b4d5984de7', 'What is the missing score $x$?', 'Five test scores: 7, 11, 15, 19, and one score $x$ is unknown. The mean is 11.2.

| Student | Score |
| --- | --- |
| S1 | 12 |
| S2 | 15 |
| S3 | 18 |
| S4 | 21 |', 'table', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=11.2×5=56$. **Step 2:** $x=4$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=11.2×5=56$.
**Step 2:** Known sum $=52$.
**Step 3:** $x=56-52=4$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($1$): Pulls the mean down too far.
- **C** ($7$): Too high for the given mean.
- **D** ($11$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
