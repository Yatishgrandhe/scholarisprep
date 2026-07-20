BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e961cae-88af-4d0e-867a-ccabed055d4f', 'Which integer value of $x$ satisfies $6x + 6 > 164$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 164 but stay at most 180 to trigger an alert.', 'passage', '[{"id":"A","text":"$24$","is_correct":false,"explanation":"Choice A ($24$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$25$","is_correct":false,"explanation":"Choice B ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$27$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 26.33$. **Step 2:** Smallest integer: 27."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 164$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 158$.
**Step 2:** $x > 26.33$.
**Step 3:** Among choices, $27$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $27$

**Distractor analysis:**
- **A** ($24$): Choice A ($24$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($25$): Choice B ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($26$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ed6f09a6-00bf-4f31-a8d8-f210aaa315cd', 'Which integer value of $x$ satisfies $3x + 7 > 87$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 87 but stay at most 103 to trigger an alert.', 'passage', '[{"id":"A","text":"$25$","is_correct":false,"explanation":"Choice A ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$26$","is_correct":false,"explanation":"Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$28$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 26.67$. **Step 2:** Smallest integer: 28."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 87$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 80$.
**Step 2:** $x > 26.67$.
**Step 3:** Among choices, $28$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $28$

**Distractor analysis:**
- **A** ($25$): Choice A ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($26$): Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($27$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1dd1c081-8866-4e5d-b144-ff024f4f1d40', 'Which integer value of $x$ satisfies $4x + 8 > 120$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 120 but stay at most 136 to trigger an alert.', 'passage', '[{"id":"SPR","text":"29","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 120$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 112$.
**Step 2:** $x > 28.00$.
**Step 3:** Among choices, $29$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 29', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3db1768-8d1b-4729-916c-c762a9098925', 'Which integer value of $x$ satisfies $5x + 9 > 155$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 155 but stay at most 171 to trigger an alert.', 'passage', '[{"id":"A","text":"$27$","is_correct":false,"explanation":"Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$28$","is_correct":false,"explanation":"Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$30$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 29.20$. **Step 2:** Smallest integer: 30."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 155$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 146$.
**Step 2:** $x > 29.20$.
**Step 3:** Among choices, $30$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $30$

**Distractor analysis:**
- **A** ($27$): Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($28$): Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($29$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17ba0cb4-1691-48e7-8cb2-b77e45e51eeb', 'Which integer value of $x$ satisfies $6x + 10 > 192$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 192 but stay at most 208 to trigger an alert.', 'passage', '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Too small: $6(28)+10=178$."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$31$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 30.33$. **Step 2:** Smallest integer: 31."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 192$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 182$.
**Step 2:** $x > 30.33$.
**Step 3:** Among choices, $31$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $31$

**Distractor analysis:**
- **A** ($28$): Too small: $6(28)+10=178$.
- **B** ($29$): Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($30$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8880198d-8ed7-4174-8f36-306dbbb89440', 'Which integer value of $x$ satisfies $3x + 5 > 97$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 97 but stay at most 113 to trigger an alert.', 'passage', '[{"id":"A","text":"$29$","is_correct":false,"explanation":"Choice A ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$30$","is_correct":false,"explanation":"Choice B ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$32$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 30.67$. **Step 2:** Smallest integer: 32."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 97$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 92$.
**Step 2:** $x > 30.67$.
**Step 3:** Among choices, $32$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $32$

**Distractor analysis:**
- **A** ($29$): Choice A ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($30$): Choice B ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($31$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5ddee234-3a6a-4cde-b251-0de7064b4409', 'Which integer value of $x$ satisfies $4x + 6 > 134$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 134 but stay at most 150 to trigger an alert.', 'passage', '[{"id":"SPR","text":"33","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 134$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 128$.
**Step 2:** $x > 32.00$.
**Step 3:** Among choices, $33$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 33', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2c8124f4-5e86-48c8-ab2a-402f2c25f82b', 'Which integer value of $x$ satisfies $5x + 7 > 173$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 173 but stay at most 189 to trigger an alert.', 'passage', '[{"id":"A","text":"$31$","is_correct":false,"explanation":"Choice A ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$32$","is_correct":false,"explanation":"Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$34$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 33.20$. **Step 2:** Smallest integer: 34."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 173$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 166$.
**Step 2:** $x > 33.20$.
**Step 3:** Among choices, $34$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $34$

**Distractor analysis:**
- **A** ($31$): Choice A ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($32$): Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($33$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d88d3b97-44ca-40b3-8477-0973f57f55aa', 'Which integer value of $x$ satisfies $6x + 8 > 214$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 214 but stay at most 230 to trigger an alert.', 'passage', '[{"id":"A","text":"$32$","is_correct":false,"explanation":"Choice A ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Choice B ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$35$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 34.33$. **Step 2:** Smallest integer: 35."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 214$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 206$.
**Step 2:** $x > 34.33$.
**Step 3:** Among choices, $35$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $35$

**Distractor analysis:**
- **A** ($32$): Choice A ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($33$): Choice B ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($34$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('986e4472-9c0e-4177-9f69-b60bd067c642', 'Which integer value of $x$ satisfies $3x + 9 > 113$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 113 but stay at most 129 to trigger an alert.', 'passage', '[{"id":"A","text":"$33$","is_correct":false,"explanation":"Choice A ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$34$","is_correct":false,"explanation":"Choice B ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$36$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 34.67$. **Step 2:** Smallest integer: 36."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 113$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 104$.
**Step 2:** $x > 34.67$.
**Step 3:** Among choices, $36$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $36$

**Distractor analysis:**
- **A** ($33$): Choice A ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($34$): Choice B ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($35$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5bb653c3-ed96-4fa5-875b-54ed4a762a4a', 'Which integer value of $x$ satisfies $4x + 10 > 154$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 154 but stay at most 170 to trigger an alert.', 'passage', '[{"id":"SPR","text":"37","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 154$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 144$.
**Step 2:** $x > 36.00$.
**Step 3:** Among choices, $37$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 37', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ec843291-ddb3-470e-94b8-453dc0e828c2', 'Which integer value of $x$ satisfies $5x + 5 > 191$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 191 but stay at most 207 to trigger an alert.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$36$","is_correct":false,"explanation":"Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$38$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 37.20$. **Step 2:** Smallest integer: 38."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 191$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 186$.
**Step 2:** $x > 37.20$.
**Step 3:** Among choices, $38$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $38$

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($36$): Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($37$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
