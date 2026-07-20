BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a84e3d44-2f44-4aa8-b80f-aad04c401258', 'Which integer value of $x$ satisfies $6x + 6 > 80$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 80 but stay at most 96 to trigger an alert.', 'passage', '[{"id":"A","text":"$10$","is_correct":false,"explanation":"Choice A ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$13$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 12.33$. **Step 2:** Smallest integer: 13."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 80$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 74$.
**Step 2:** $x > 12.33$.
**Step 3:** Among choices, $13$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $13$

**Distractor analysis:**
- **A** ($10$): Choice A ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($11$): Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($12$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8b7f5b28-f2fa-49be-8b20-bbedb6f639f9', 'Which integer value of $x$ satisfies $3x + 7 > 45$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 45 but stay at most 61 to trigger an alert.', 'passage', '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Choice A ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$14$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 12.67$. **Step 2:** Smallest integer: 14."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 45$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 38$.
**Step 2:** $x > 12.67$.
**Step 3:** Among choices, $14$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $14$

**Distractor analysis:**
- **A** ($11$): Choice A ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($13$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f231ece1-c593-4ac0-9f30-cbedcd034a27', 'Which integer value of $x$ satisfies $4x + 8 > 64$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 64 but stay at most 80 to trigger an alert.', 'passage', '[{"id":"SPR","text":"15","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 64$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 56$.
**Step 2:** $x > 14.00$.
**Step 3:** Among choices, $15$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 15', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3f50d31a-cb62-4152-8cff-8c78dd667925', 'Which integer value of $x$ satisfies $5x + 9 > 85$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 85 but stay at most 101 to trigger an alert.', 'passage', '[{"id":"A","text":"$13$","is_correct":false,"explanation":"Choice A ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$16$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 15.20$. **Step 2:** Smallest integer: 16."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 85$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 76$.
**Step 2:** $x > 15.20$.
**Step 3:** Among choices, $16$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $16$

**Distractor analysis:**
- **A** ($13$): Choice A ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($15$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('71931bf6-852d-4275-9c7f-214334928890', 'Which integer value of $x$ satisfies $6x + 10 > 108$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 108 but stay at most 124 to trigger an alert.', 'passage', '[{"id":"A","text":"$14$","is_correct":false,"explanation":"Choice A ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$16$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$17$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 16.33$. **Step 2:** Smallest integer: 17."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 108$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 98$.
**Step 2:** $x > 16.33$.
**Step 3:** Among choices, $17$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $17$

**Distractor analysis:**
- **A** ($14$): Choice A ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($16$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6bcfc300-f3f6-4ad3-9aad-ee1844491e91', 'Which integer value of $x$ satisfies $3x + 5 > 55$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 55 but stay at most 71 to trigger an alert.', 'passage', '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Choice A ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$18$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 16.67$. **Step 2:** Smallest integer: 18."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 55$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 50$.
**Step 2:** $x > 16.67$.
**Step 3:** Among choices, $18$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $18$

**Distractor analysis:**
- **A** ($15$): Choice A ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($17$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a8de6916-cc20-4467-8e7b-fe1111c19df7', 'Which integer value of $x$ satisfies $4x + 6 > 78$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 78 but stay at most 94 to trigger an alert.', 'passage', '[{"id":"SPR","text":"19","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 78$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 72$.
**Step 2:** $x > 18.00$.
**Step 3:** Among choices, $19$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 19', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7ad745b2-9718-4931-9f6f-070c9ca26189', 'Which integer value of $x$ satisfies $5x + 7 > 103$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 103 but stay at most 119 to trigger an alert.', 'passage', '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Choice A ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$18$","is_correct":false,"explanation":"Choice B ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$20$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 19.20$. **Step 2:** Smallest integer: 20."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 103$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 96$.
**Step 2:** $x > 19.20$.
**Step 3:** Among choices, $20$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $20$

**Distractor analysis:**
- **A** ($17$): Choice A ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($18$): Choice B ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($19$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5ac40014-c814-48f3-8583-6b7e44604750', 'Which integer value of $x$ satisfies $6x + 8 > 130$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 130 but stay at most 146 to trigger an alert.', 'passage', '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Choice A ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$19$","is_correct":false,"explanation":"Choice B ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$21$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 20.33$. **Step 2:** Smallest integer: 21."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 130$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 122$.
**Step 2:** $x > 20.33$.
**Step 3:** Among choices, $21$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $21$

**Distractor analysis:**
- **A** ($18$): Choice A ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($19$): Choice B ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($20$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a4b3964f-b2fe-49eb-912b-ffe59280c3d2', 'Which integer value of $x$ satisfies $3x + 9 > 71$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 71 but stay at most 87 to trigger an alert.', 'passage', '[{"id":"A","text":"$19$","is_correct":false,"explanation":"Choice A ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$20$","is_correct":false,"explanation":"Choice B ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$22$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 20.67$. **Step 2:** Smallest integer: 22."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 71$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 62$.
**Step 2:** $x > 20.67$.
**Step 3:** Among choices, $22$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $22$

**Distractor analysis:**
- **A** ($19$): Choice A ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($20$): Choice B ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($21$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('48351435-6674-42d0-abcd-c71f47702e02', 'Which integer value of $x$ satisfies $4x + 10 > 98$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 98 but stay at most 114 to trigger an alert.', 'passage', '[{"id":"SPR","text":"23","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 98$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 88$.
**Step 2:** $x > 22.00$.
**Step 3:** Among choices, $23$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 23', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8c1b5e75-9dbe-4552-ba0c-f65703f0f5c3', 'Which integer value of $x$ satisfies $5x + 5 > 121$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 121 but stay at most 137 to trigger an alert.', 'passage', '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$22$","is_correct":false,"explanation":"Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$24$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 23.20$. **Step 2:** Smallest integer: 24."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 121$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 116$.
**Step 2:** $x > 23.20$.
**Step 3:** Among choices, $24$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $24$

**Distractor analysis:**
- **A** ($21$): Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($22$): Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($23$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
