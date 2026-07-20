BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c66cb9b-f431-46ae-a924-937c1f385927', 'Which integer value of $x$ satisfies $6x + 6 > 182$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 182 but stay at most 198 to trigger an alert.', 'passage', '[{"id":"A","text":"$27$","is_correct":false,"explanation":"Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$28$","is_correct":false,"explanation":"Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$30$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 29.33$. **Step 2:** Smallest integer: 30."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 182$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 176$.
**Step 2:** $x > 29.33$.
**Step 3:** Among choices, $30$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $30$

**Distractor analysis:**
- **A** ($27$): Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($28$): Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($29$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7f822803-efb5-442c-83f4-af021fde33a4', 'Which integer value of $x$ satisfies $3x + 7 > 96$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 96 but stay at most 112 to trigger an alert.', 'passage', '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Choice A ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$31$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 29.67$. **Step 2:** Smallest integer: 31."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 96$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 89$.
**Step 2:** $x > 29.67$.
**Step 3:** Among choices, $31$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $31$

**Distractor analysis:**
- **A** ($28$): Choice A ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($29$): Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($30$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('843eb94f-3e32-403d-baf2-d0132ea48dcf', 'Which integer value of $x$ satisfies $4x + 8 > 132$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 132 but stay at most 148 to trigger an alert.', 'passage', '[{"id":"SPR","text":"32","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 132$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 124$.
**Step 2:** $x > 31.00$.
**Step 3:** Among choices, $32$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 32', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9cffdd3d-19c8-4b4a-9f98-f12b56fa0eda', 'Which integer value of $x$ satisfies $5x + 9 > 170$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 170 but stay at most 186 to trigger an alert.', 'passage', '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Choice A ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$31$","is_correct":false,"explanation":"Choice B ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$32$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$33$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 32.20$. **Step 2:** Smallest integer: 33."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 170$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 161$.
**Step 2:** $x > 32.20$.
**Step 3:** Among choices, $33$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $33$

**Distractor analysis:**
- **A** ($30$): Choice A ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($31$): Choice B ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($32$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('05082b95-c6fd-47f6-99a3-51701b2816dc', 'Which integer value of $x$ satisfies $6x + 10 > 210$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 210 but stay at most 226 to trigger an alert.', 'passage', '[{"id":"A","text":"$31$","is_correct":false,"explanation":"Too small: $6(31)+10=196$."},{"id":"B","text":"$32$","is_correct":false,"explanation":"Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$34$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 33.33$. **Step 2:** Smallest integer: 34."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 210$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 200$.
**Step 2:** $x > 33.33$.
**Step 3:** Among choices, $34$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $34$

**Distractor analysis:**
- **A** ($31$): Too small: $6(31)+10=196$.
- **B** ($32$): Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($33$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c31b34fc-4986-4273-b101-22dc6ab75494', 'Which integer value of $x$ satisfies $3x + 5 > 106$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 106 but stay at most 122 to trigger an alert.', 'passage', '[{"id":"A","text":"$32$","is_correct":false,"explanation":"Choice A ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Choice B ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$35$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 33.67$. **Step 2:** Smallest integer: 35."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 106$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 101$.
**Step 2:** $x > 33.67$.
**Step 3:** Among choices, $35$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $35$

**Distractor analysis:**
- **A** ($32$): Choice A ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($33$): Choice B ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($34$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ed6082d5-6734-4257-b2b9-ea7eac461b15', 'Which integer value of $x$ satisfies $4x + 6 > 146$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 146 but stay at most 162 to trigger an alert.', 'passage', '[{"id":"SPR","text":"36","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 146$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 140$.
**Step 2:** $x > 35.00$.
**Step 3:** Among choices, $36$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 36', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2599cdae-bed4-43e7-9b65-48a73024841d', 'Which integer value of $x$ satisfies $5x + 7 > 188$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 188 but stay at most 204 to trigger an alert.', 'passage', '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Choice A ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$35$","is_correct":false,"explanation":"Choice B ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$37$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 36.20$. **Step 2:** Smallest integer: 37."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 188$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 181$.
**Step 2:** $x > 36.20$.
**Step 3:** Among choices, $37$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $37$

**Distractor analysis:**
- **A** ($34$): Choice A ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($35$): Choice B ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($36$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3831ce40-b435-4a87-ab54-b32988e5399f', 'Which integer value of $x$ satisfies $6x + 8 > 232$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 232 but stay at most 248 to trigger an alert.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$36$","is_correct":false,"explanation":"Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$38$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 37.33$. **Step 2:** Smallest integer: 38."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 232$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 224$.
**Step 2:** $x > 37.33$.
**Step 3:** Among choices, $38$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $38$

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($36$): Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($37$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b631786-5fe7-4863-a125-dde5d5a8f9d4', 'Which integer value of $x$ satisfies $3x + 9 > 122$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 122 but stay at most 138 to trigger an alert.', 'passage', '[{"id":"A","text":"$36$","is_correct":false,"explanation":"Choice A ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$37$","is_correct":false,"explanation":"Choice B ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$39$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 37.67$. **Step 2:** Smallest integer: 39."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 122$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 113$.
**Step 2:** $x > 37.67$.
**Step 3:** Among choices, $39$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $39$

**Distractor analysis:**
- **A** ($36$): Choice A ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($37$): Choice B ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($38$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3f5848b7-0900-4772-99f4-efe3cbeb7c36', 'Which integer value of $x$ satisfies $4x + 10 > 166$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 166 but stay at most 182 to trigger an alert.', 'passage', '[{"id":"SPR","text":"40","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 166$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 156$.
**Step 2:** $x > 39.00$.
**Step 3:** Among choices, $40$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 40', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8a39edd-dee6-4924-9ef9-64bc7fadbab2', 'Which integer value of $x$ satisfies $5x + 5 > 206$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 206 but stay at most 222 to trigger an alert.', 'passage', '[{"id":"A","text":"$38$","is_correct":false,"explanation":"Choice A ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$39$","is_correct":false,"explanation":"Choice B ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$40$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$41$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 40.20$. **Step 2:** Smallest integer: 41."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 206$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 201$.
**Step 2:** $x > 40.20$.
**Step 3:** Among choices, $41$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $41$

**Distractor analysis:**
- **A** ($38$): Choice A ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($39$): Choice B ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($40$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
