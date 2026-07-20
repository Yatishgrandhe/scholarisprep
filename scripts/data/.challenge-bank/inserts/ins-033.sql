BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('919f3259-4c6e-4fbb-8cfd-c83c86fc5327', 'If the original price is $360$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$360$","is_correct":true,"explanation":"Correct (A). **Step 1:** $360×1.25=450$. **Step 2:** $450×0.8=360$."},{"id":"B","text":"$360$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$450$","is_correct":false,"explanation":"Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$378$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $360$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $360×(1+25/100)=450$.
**Step 2:** Discount on new price: $450×(1-20/100)=360$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $360$

**Distractor analysis:**
- **B** ($360$): Ignores both percent changes.
- **C** ($450$): Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($378$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2b3b1f35-0e4b-4c24-803e-97713ffb7dcd', 'If the original price is $375$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$366$","is_correct":true,"explanation":"Correct (A). **Step 1:** $375×1.3=488$. **Step 2:** $488×0.75=366$."},{"id":"B","text":"$375$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$488$","is_correct":false,"explanation":"Choice C ($488$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$394$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $375$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $375×(1+30/100)=488$.
**Step 2:** Discount on new price: $488×(1-25/100)=366$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $366$

**Distractor analysis:**
- **B** ($375$): Ignores both percent changes.
- **C** ($488$): Choice C ($488$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($394$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5e24f2da-7aba-4c71-874c-5e2bfbfc01b4', 'If the original price is $390$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$448$","is_correct":true,"explanation":"Correct (A). **Step 1:** $390×1.35=527$. **Step 2:** $527×0.85=448$."},{"id":"B","text":"$390$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$527$","is_correct":false,"explanation":"Choice C ($527$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$468$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $390$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $390×(1+35/100)=527$.
**Step 2:** Discount on new price: $527×(1-15/100)=448$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $448$

**Distractor analysis:**
- **B** ($390$): Ignores both percent changes.
- **C** ($527$): Choice C ($527$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($468$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6c4b16ee-7a7d-4505-bec3-4b818acd1a71', 'If the original price is $405$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$454$","is_correct":true,"explanation":"Correct (A). **Step 1:** $405×1.4=567$. **Step 2:** $567×0.8=454$."},{"id":"B","text":"$405$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$567$","is_correct":false,"explanation":"Choice C ($567$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$486$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $405$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $405×(1+40/100)=567$.
**Step 2:** Discount on new price: $567×(1-20/100)=454$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $454$

**Distractor analysis:**
- **B** ($405$): Ignores both percent changes.
- **C** ($567$): Choice C ($567$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($486$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ab682d79-e936-4dde-b8e3-bbed06c791bf', 'If the original price is $420$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$394$","is_correct":true,"explanation":"Correct (A). **Step 1:** $420×1.25=525$. **Step 2:** $525×0.75=394$."},{"id":"B","text":"$420$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$525$","is_correct":false,"explanation":"Choice C ($525$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$420$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $420$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $420×(1+25/100)=525$.
**Step 2:** Discount on new price: $525×(1-25/100)=394$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $394$

**Distractor analysis:**
- **B** ($420$): Ignores both percent changes.
- **C** ($525$): Choice C ($525$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($420$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ff4b4394-5915-4f6d-9aed-128e273cf3f9', 'If the original price is $435$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$481$","is_correct":true,"explanation":"Correct (A). **Step 1:** $435×1.3=566$. **Step 2:** $566×0.85=481$."},{"id":"B","text":"$435$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$566$","is_correct":false,"explanation":"Choice C ($566$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$500$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $435$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $435×(1+30/100)=566$.
**Step 2:** Discount on new price: $566×(1-15/100)=481$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $481$

**Distractor analysis:**
- **B** ($435$): Ignores both percent changes.
- **C** ($566$): Choice C ($566$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($500$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0d7de084-42ec-47c3-95da-1b8d61068f6b', 'If the original price is $450$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$486$","is_correct":true,"explanation":"Correct (A). **Step 1:** $450×1.35=608$. **Step 2:** $608×0.8=486$."},{"id":"B","text":"$450$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$608$","is_correct":false,"explanation":"Choice C ($608$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$518$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $450$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $450×(1+35/100)=608$.
**Step 2:** Discount on new price: $608×(1-20/100)=486$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $486$

**Distractor analysis:**
- **B** ($450$): Ignores both percent changes.
- **C** ($608$): Choice C ($608$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($518$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c57a2ffd-3763-45c8-8382-bc8a60b7e82b', 'If the original price is $465$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$488$","is_correct":true,"explanation":"Correct (A). **Step 1:** $465×1.4=651$. **Step 2:** $651×0.75=488$."},{"id":"B","text":"$465$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$651$","is_correct":false,"explanation":"Choice C ($651$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$535$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $465$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $465×(1+40/100)=651$.
**Step 2:** Discount on new price: $651×(1-25/100)=488$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $488$

**Distractor analysis:**
- **B** ($465$): Ignores both percent changes.
- **C** ($651$): Choice C ($651$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($535$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ff8812cf-23d3-4982-a7a0-48f3da4ec0d1', 'If the original price is $480$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$510$","is_correct":true,"explanation":"Correct (A). **Step 1:** $480×1.25=600$. **Step 2:** $600×0.85=510$."},{"id":"B","text":"$480$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$600$","is_correct":false,"explanation":"Choice C ($600$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$528$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $480$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $480×(1+25/100)=600$.
**Step 2:** Discount on new price: $600×(1-15/100)=510$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $510$

**Distractor analysis:**
- **B** ($480$): Ignores both percent changes.
- **C** ($600$): Choice C ($600$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($528$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c0d63254-79b2-4002-a12d-81aa0d920975', 'If the original price is $495$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$515$","is_correct":true,"explanation":"Correct (A). **Step 1:** $495×1.3=644$. **Step 2:** $644×0.8=515$."},{"id":"B","text":"$495$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$644$","is_correct":false,"explanation":"Choice C ($644$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$545$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $495$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $495×(1+30/100)=644$.
**Step 2:** Discount on new price: $644×(1-20/100)=515$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $515$

**Distractor analysis:**
- **B** ($495$): Ignores both percent changes.
- **C** ($644$): Choice C ($644$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($545$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('69385388-4b7f-453c-a411-c9f122359b1c', 'If the original price is $510$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$517$","is_correct":true,"explanation":"Correct (A). **Step 1:** $510×1.35=689$. **Step 2:** $689×0.75=517$."},{"id":"B","text":"$510$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$689$","is_correct":false,"explanation":"Choice C ($689$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$561$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $510$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $510×(1+35/100)=689$.
**Step 2:** Discount on new price: $689×(1-25/100)=517$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $517$

**Distractor analysis:**
- **B** ($510$): Ignores both percent changes.
- **C** ($689$): Choice C ($689$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($561$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4f1ab11d-6e43-4d8c-bc1f-078d52260af3', 'If the original price is $525$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$625$","is_correct":true,"explanation":"Correct (A). **Step 1:** $525×1.4=735$. **Step 2:** $735×0.85=625$."},{"id":"B","text":"$525$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$735$","is_correct":false,"explanation":"Choice C ($735$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$656$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $525$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $525×(1+40/100)=735$.
**Step 2:** Discount on new price: $735×(1-15/100)=625$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $625$

**Distractor analysis:**
- **B** ($525$): Ignores both percent changes.
- **C** ($735$): Choice C ($735$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($656$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2451adf4-3596-4720-ae68-5e0cd3cb12da', 'If the original price is $540$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$540$","is_correct":true,"explanation":"Correct (A). **Step 1:** $540×1.25=675$. **Step 2:** $675×0.8=540$."},{"id":"B","text":"$540$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$675$","is_correct":false,"explanation":"Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$567$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $540$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $540×(1+25/100)=675$.
**Step 2:** Discount on new price: $675×(1-20/100)=540$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $540$

**Distractor analysis:**
- **B** ($540$): Ignores both percent changes.
- **C** ($675$): Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($567$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8cf26373-9dc3-45c3-8f10-3063d0dc0eaa', 'If the original price is $555$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$542$","is_correct":true,"explanation":"Correct (A). **Step 1:** $555×1.3=722$. **Step 2:** $722×0.75=542$."},{"id":"B","text":"$555$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$722$","is_correct":false,"explanation":"Choice C ($722$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$583$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $555$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $555×(1+30/100)=722$.
**Step 2:** Discount on new price: $722×(1-25/100)=542$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $542$

**Distractor analysis:**
- **B** ($555$): Ignores both percent changes.
- **C** ($722$): Choice C ($722$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($583$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1f2f3dca-4dac-4045-a20f-7bfcfcc9c19a', 'If the original price is $570$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$655$","is_correct":true,"explanation":"Correct (A). **Step 1:** $570×1.35=770$. **Step 2:** $770×0.85=655$."},{"id":"B","text":"$570$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$770$","is_correct":false,"explanation":"Choice C ($770$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$684$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $570$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $570×(1+35/100)=770$.
**Step 2:** Discount on new price: $770×(1-15/100)=655$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $655$

**Distractor analysis:**
- **B** ($570$): Ignores both percent changes.
- **C** ($770$): Choice C ($770$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($684$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9774a2a3-8c04-47c6-ad42-921065ac8397', 'If the original price is $585$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$655$","is_correct":true,"explanation":"Correct (A). **Step 1:** $585×1.4=819$. **Step 2:** $819×0.8=655$."},{"id":"B","text":"$585$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$819$","is_correct":false,"explanation":"Choice C ($819$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$702$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $585$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $585×(1+40/100)=819$.
**Step 2:** Discount on new price: $819×(1-20/100)=655$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $655$

**Distractor analysis:**
- **B** ($585$): Ignores both percent changes.
- **C** ($819$): Choice C ($819$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($702$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7b2a73cb-5292-47e8-87ba-358fac62fa82', 'If the original price is $600$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$563$","is_correct":true,"explanation":"Correct (A). **Step 1:** $600×1.25=750$. **Step 2:** $750×0.75=563$."},{"id":"B","text":"$600$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$750$","is_correct":false,"explanation":"Choice C ($750$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$600$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $600$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $600×(1+25/100)=750$.
**Step 2:** Discount on new price: $750×(1-25/100)=563$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $563$

**Distractor analysis:**
- **B** ($600$): Ignores both percent changes.
- **C** ($750$): Choice C ($750$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($600$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('479c048d-3e9d-4443-afb3-725d5b7258a9', 'If the original price is $615$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$680$","is_correct":true,"explanation":"Correct (A). **Step 1:** $615×1.3=800$. **Step 2:** $800×0.85=680$."},{"id":"B","text":"$615$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$800$","is_correct":false,"explanation":"Choice C ($800$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$707$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $615$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $615×(1+30/100)=800$.
**Step 2:** Discount on new price: $800×(1-15/100)=680$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $680$

**Distractor analysis:**
- **B** ($615$): Ignores both percent changes.
- **C** ($800$): Choice C ($800$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($707$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8100e66f-0507-477a-9ad2-03302c50109f', 'If the original price is $630$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$681$","is_correct":true,"explanation":"Correct (A). **Step 1:** $630×1.35=851$. **Step 2:** $851×0.8=681$."},{"id":"B","text":"$630$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$851$","is_correct":false,"explanation":"Choice C ($851$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$725$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $630$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $630×(1+35/100)=851$.
**Step 2:** Discount on new price: $851×(1-20/100)=681$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $681$

**Distractor analysis:**
- **B** ($630$): Ignores both percent changes.
- **C** ($851$): Choice C ($851$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($725$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('946e7d99-69aa-4940-988b-2035d3dd65ba', 'If the original price is $645$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$677$","is_correct":true,"explanation":"Correct (A). **Step 1:** $645×1.4=903$. **Step 2:** $903×0.75=677$."},{"id":"B","text":"$645$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$903$","is_correct":false,"explanation":"Choice C ($903$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$742$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $645$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $645×(1+40/100)=903$.
**Step 2:** Discount on new price: $903×(1-25/100)=677$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $677$

**Distractor analysis:**
- **B** ($645$): Ignores both percent changes.
- **C** ($903$): Choice C ($903$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($742$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8fcb8a55-f73b-461f-86ea-729d940ca0b0', 'If the original price is $660$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$701$","is_correct":true,"explanation":"Correct (A). **Step 1:** $660×1.25=825$. **Step 2:** $825×0.85=701$."},{"id":"B","text":"$660$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$825$","is_correct":false,"explanation":"Choice C ($825$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$726$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $660$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $660×(1+25/100)=825$.
**Step 2:** Discount on new price: $825×(1-15/100)=701$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $701$

**Distractor analysis:**
- **B** ($660$): Ignores both percent changes.
- **C** ($825$): Choice C ($825$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($726$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d888818d-6175-4335-b049-c65018494022', 'If the original price is $675$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$702$","is_correct":true,"explanation":"Correct (A). **Step 1:** $675×1.3=878$. **Step 2:** $878×0.8=702$."},{"id":"B","text":"$675$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$878$","is_correct":false,"explanation":"Choice C ($878$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$743$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $675$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $675×(1+30/100)=878$.
**Step 2:** Discount on new price: $878×(1-20/100)=702$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $702$

**Distractor analysis:**
- **B** ($675$): Ignores both percent changes.
- **C** ($878$): Choice C ($878$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($743$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('95516456-c18d-4588-9148-70413f6bfd11', 'If the original price is $690$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$699$","is_correct":true,"explanation":"Correct (A). **Step 1:** $690×1.35=932$. **Step 2:** $932×0.75=699$."},{"id":"B","text":"$690$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$932$","is_correct":false,"explanation":"Choice C ($932$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$759$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $690$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $690×(1+35/100)=932$.
**Step 2:** Discount on new price: $932×(1-25/100)=699$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $699$

**Distractor analysis:**
- **B** ($690$): Ignores both percent changes.
- **C** ($932$): Choice C ($932$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($759$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6bea7802-107e-440d-b4c2-ddf91baa18b1', 'If the original price is $705$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$839$","is_correct":true,"explanation":"Correct (A). **Step 1:** $705×1.4=987$. **Step 2:** $987×0.85=839$."},{"id":"B","text":"$705$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$987$","is_correct":false,"explanation":"Choice C ($987$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$881$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $705$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $705×(1+40/100)=987$.
**Step 2:** Discount on new price: $987×(1-15/100)=839$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $839$

**Distractor analysis:**
- **B** ($705$): Ignores both percent changes.
- **C** ($987$): Choice C ($987$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($881$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ccb1eed9-bd9b-4405-846b-4bf96bde8101', 'If the original price is $720$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$720$","is_correct":true,"explanation":"Correct (A). **Step 1:** $720×1.25=900$. **Step 2:** $900×0.8=720$."},{"id":"B","text":"$720$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$900$","is_correct":false,"explanation":"Choice C ($900$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$756$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $720$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $720×(1+25/100)=900$.
**Step 2:** Discount on new price: $900×(1-20/100)=720$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $720$

**Distractor analysis:**
- **B** ($720$): Ignores both percent changes.
- **C** ($900$): Choice C ($900$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($756$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7793407f-062b-443e-8144-349b8fafc539', 'If the original price is $735$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$717$","is_correct":true,"explanation":"Correct (A). **Step 1:** $735×1.3=956$. **Step 2:** $956×0.75=717$."},{"id":"B","text":"$735$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$956$","is_correct":false,"explanation":"Choice C ($956$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$772$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $735$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $735×(1+30/100)=956$.
**Step 2:** Discount on new price: $956×(1-25/100)=717$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $717$

**Distractor analysis:**
- **B** ($735$): Ignores both percent changes.
- **C** ($956$): Choice C ($956$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($772$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('406302eb-dfd3-4729-ab26-39e93ddfc5da', 'If the original price is $750$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$861$","is_correct":true,"explanation":"Correct (A). **Step 1:** $750×1.35=1013$. **Step 2:** $1013×0.85=861$."},{"id":"B","text":"$750$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1013$","is_correct":false,"explanation":"Choice C ($1013$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$900$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $750$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $750×(1+35/100)=1013$.
**Step 2:** Discount on new price: $1013×(1-15/100)=861$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $861$

**Distractor analysis:**
- **B** ($750$): Ignores both percent changes.
- **C** ($1013$): Choice C ($1013$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($900$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f6a81fd4-c88f-409e-810c-d0d33a4b0c4b', 'If the original price is $765$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$857$","is_correct":true,"explanation":"Correct (A). **Step 1:** $765×1.4=1071$. **Step 2:** $1071×0.8=857$."},{"id":"B","text":"$765$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1071$","is_correct":false,"explanation":"Choice C ($1071$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$918$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $765$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $765×(1+40/100)=1071$.
**Step 2:** Discount on new price: $1071×(1-20/100)=857$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $857$

**Distractor analysis:**
- **B** ($765$): Ignores both percent changes.
- **C** ($1071$): Choice C ($1071$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($918$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('166806fc-2908-41c3-9a39-5e1a935e90e5', 'If the original price is $780$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$731$","is_correct":true,"explanation":"Correct (A). **Step 1:** $780×1.25=975$. **Step 2:** $975×0.75=731$."},{"id":"B","text":"$780$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$975$","is_correct":false,"explanation":"Choice C ($975$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$780$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $780$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $780×(1+25/100)=975$.
**Step 2:** Discount on new price: $975×(1-25/100)=731$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $731$

**Distractor analysis:**
- **B** ($780$): Ignores both percent changes.
- **C** ($975$): Choice C ($975$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($780$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ed4696e8-729f-449d-aca9-76a63b0c9b02', 'If the original price is $795$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$879$","is_correct":true,"explanation":"Correct (A). **Step 1:** $795×1.3=1034$. **Step 2:** $1034×0.85=879$."},{"id":"B","text":"$795$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1034$","is_correct":false,"explanation":"Choice C ($1034$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$914$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $795$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $795×(1+30/100)=1034$.
**Step 2:** Discount on new price: $1034×(1-15/100)=879$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $879$

**Distractor analysis:**
- **B** ($795$): Ignores both percent changes.
- **C** ($1034$): Choice C ($1034$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($914$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('53443504-6369-4c6b-8770-aecd3adc0ec7', 'If the original price is $810$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$875$","is_correct":true,"explanation":"Correct (A). **Step 1:** $810×1.35=1094$. **Step 2:** $1094×0.8=875$."},{"id":"B","text":"$810$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1094$","is_correct":false,"explanation":"Choice C ($1094$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$931$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $810$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $810×(1+35/100)=1094$.
**Step 2:** Discount on new price: $1094×(1-20/100)=875$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $875$

**Distractor analysis:**
- **B** ($810$): Ignores both percent changes.
- **C** ($1094$): Choice C ($1094$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($931$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4a077390-1461-421d-b37d-a0050f681e67', 'If the original price is $825$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$866$","is_correct":true,"explanation":"Correct (A). **Step 1:** $825×1.4=1155$. **Step 2:** $1155×0.75=866$."},{"id":"B","text":"$825$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1155$","is_correct":false,"explanation":"Choice C ($1155$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$949$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $825$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $825×(1+40/100)=1155$.
**Step 2:** Discount on new price: $1155×(1-25/100)=866$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $866$

**Distractor analysis:**
- **B** ($825$): Ignores both percent changes.
- **C** ($1155$): Choice C ($1155$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($949$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bc7a2501-ffc7-4b0d-a988-be96ef16fc40', 'What is the missing score $x$?', 'Five test scores: 7, 11, 15, 19, and one score $x$ is unknown. The mean is 11.2.

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
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($1$): Pulls the mean down too far.
- **C** ($7$): Too high for the given mean.
- **D** ($11$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3135f177-741b-4cbc-8aa3-42e93f533353', 'What is the missing score $x$?', 'Five test scores: 8, 12, 16, 20, and one score $x$ is unknown. The mean is 12.2.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=12.2×5=61$. **Step 2:** $x=5$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=12.2×5=61$.
**Step 2:** Known sum $=56$.
**Step 3:** $x=61-56=5$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($2$): Pulls the mean down too far.
- **C** ($8$): Too high for the given mean.
- **D** ($12$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f8525629-efc3-4370-9c8f-698250dfdc3e', 'What is the missing score $x$?', 'Five test scores: 9, 13, 17, 21, and one score $x$ is unknown. The mean is 13.2.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=13.2×5=66$. **Step 2:** $x=6$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=13.2×5=66$.
**Step 2:** Known sum $=60$.
**Step 3:** $x=66-60=6$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($3$): Pulls the mean down too far.
- **C** ($9$): Too high for the given mean.
- **D** ($13$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8987fc04-fa06-40b2-bab6-e1bd61eb1be6', 'What is the missing score $x$?', 'Five test scores: 10, 14, 18, 22, and one score $x$ is unknown. The mean is 14.2.

| Student | Score |
| --- | --- |
| S1 | 15 |
| S2 | 18 |
| S3 | 21 |
| S4 | 24 |', 'table', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=14.2×5=71$. **Step 2:** $x=7$."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=14.2×5=71$.
**Step 2:** Known sum $=64$.
**Step 3:** $x=71-64=7$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($4$): Pulls the mean down too far.
- **C** ($10$): Too high for the given mean.
- **D** ($14$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('15869797-4c3f-4ae5-b43d-041fe7e669ac', 'What is the missing score $x$?', 'Five test scores: 11, 15, 19, 23, and one score $x$ is unknown. The mean is 15.2.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=15.2×5=76$. **Step 2:** $x=8$."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=15.2×5=76$.
**Step 2:** Known sum $=68$.
**Step 3:** $x=76-68=8$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($5$): Pulls the mean down too far.
- **C** ($11$): Too high for the given mean.
- **D** ($15$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1a9c3d70-195e-457d-ba3d-c9adb81963dd', 'What is the missing score $x$?', 'Five test scores: 12, 16, 20, 24, and one score $x$ is unknown. The mean is 16.2.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$9$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=16.2×5=81$. **Step 2:** $x=9$."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=16.2×5=81$.
**Step 2:** Known sum $=72$.
**Step 3:** $x=81-72=9$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $9$

**Distractor analysis:**
- **A** ($6$): Pulls the mean down too far.
- **C** ($12$): Too high for the given mean.
- **D** ($16$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('aa74462c-7d1d-424d-a5d2-9851daba1873', 'What is the missing score $x$?', 'Five test scores: 13, 17, 21, 25, and one score $x$ is unknown. The mean is 17.2.

| Student | Score |
| --- | --- |
| S1 | 18 |
| S2 | 21 |
| S3 | 24 |
| S4 | 27 |', 'table', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$10$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=17.2×5=86$. **Step 2:** $x=10$."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=17.2×5=86$.
**Step 2:** Known sum $=76$.
**Step 3:** $x=86-76=10$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $10$

**Distractor analysis:**
- **A** ($7$): Pulls the mean down too far.
- **C** ($13$): Too high for the given mean.
- **D** ($17$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dcde0095-bd82-4323-b4fc-7119f01c67ff', 'What is the missing score $x$?', 'Five test scores: 14, 18, 22, 26, and one score $x$ is unknown. The mean is 18.2.', 'passage', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$11$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=18.2×5=91$. **Step 2:** $x=11$."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=18.2×5=91$.
**Step 2:** Known sum $=80$.
**Step 3:** $x=91-80=11$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $11$

**Distractor analysis:**
- **A** ($8$): Pulls the mean down too far.
- **C** ($14$): Too high for the given mean.
- **D** ($18$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
