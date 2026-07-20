BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f69a1a2c-a238-4321-82b1-a26a19ab8762', 'Which integer value of $x$ satisfies $6x + 6 > 236$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 236 but stay at most 252 to trigger an alert.', 'passage', '[{"id":"A","text":"$36$","is_correct":false,"explanation":"Choice A ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$37$","is_correct":false,"explanation":"Choice B ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$39$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 38.33$. **Step 2:** Smallest integer: 39."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 236$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 230$.
**Step 2:** $x > 38.33$.
**Step 3:** Among choices, $39$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $39$

**Distractor analysis:**
- **A** ($36$): Choice A ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($37$): Choice B ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($38$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('078828e3-01c9-469d-be1e-ae623ec905b0', 'Which integer value of $x$ satisfies $3x + 7 > 123$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 123 but stay at most 139 to trigger an alert.', 'passage', '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Choice A ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$38$","is_correct":false,"explanation":"Choice B ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$40$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 38.67$. **Step 2:** Smallest integer: 40."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 123$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 116$.
**Step 2:** $x > 38.67$.
**Step 3:** Among choices, $40$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $40$

**Distractor analysis:**
- **A** ($37$): Choice A ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($38$): Choice B ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($39$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a702a3c-e8cd-4795-b24e-4a509e7fb77f', 'Which integer value of $x$ satisfies $4x + 8 > 168$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 168 but stay at most 184 to trigger an alert.', 'passage', '[{"id":"SPR","text":"41","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 168$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 160$.
**Step 2:** $x > 40.00$.
**Step 3:** Among choices, $41$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 41', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d019c771-3a84-40dd-bd92-882a2a45594a', 'Which integer value of $x$ satisfies $5x + 9 > 215$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 215 but stay at most 231 to trigger an alert.', 'passage', '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Choice A ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$40$","is_correct":false,"explanation":"Choice B ($40$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$42$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 41.20$. **Step 2:** Smallest integer: 42."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 215$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 206$.
**Step 2:** $x > 41.20$.
**Step 3:** Among choices, $42$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $42$

**Distractor analysis:**
- **A** ($39$): Choice A ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($40$): Choice B ($40$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($41$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eeacf90f-dac8-4ba4-a420-12eeb8529867', 'Which integer value of $x$ satisfies $6x + 10 > 264$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 264 but stay at most 280 to trigger an alert.', 'passage', '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Too small: $6(40)+10=250$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$43$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 42.33$. **Step 2:** Smallest integer: 43."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 264$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 254$.
**Step 2:** $x > 42.33$.
**Step 3:** Among choices, $43$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $43$

**Distractor analysis:**
- **A** ($40$): Too small: $6(40)+10=250$.
- **B** ($41$): Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($42$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d826ddba-3c94-459e-895a-4b9fe1195f83', 'Which integer value of $x$ satisfies $3x + 5 > 133$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 133 but stay at most 149 to trigger an alert.', 'passage', '[{"id":"A","text":"$41$","is_correct":false,"explanation":"Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$42$","is_correct":false,"explanation":"Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$44$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 42.67$. **Step 2:** Smallest integer: 44."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 133$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 128$.
**Step 2:** $x > 42.67$.
**Step 3:** Among choices, $44$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $44$

**Distractor analysis:**
- **A** ($41$): Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($42$): Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($43$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2e64a771-5440-401f-955a-07a763427180', 'Which integer value of $x$ satisfies $4x + 6 > 182$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 182 but stay at most 198 to trigger an alert.', 'passage', '[{"id":"SPR","text":"45","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 182$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 176$.
**Step 2:** $x > 44.00$.
**Step 3:** Among choices, $45$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 45', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('94658c7d-47f9-4c69-a050-2eceb5efd1f3', 'Which integer value of $x$ satisfies $5x + 7 > 233$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 233 but stay at most 249 to trigger an alert.', 'passage', '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Choice A ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$44$","is_correct":false,"explanation":"Choice B ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$46$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 45.20$. **Step 2:** Smallest integer: 46."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 233$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 226$.
**Step 2:** $x > 45.20$.
**Step 3:** Among choices, $46$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $46$

**Distractor analysis:**
- **A** ($43$): Choice A ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($44$): Choice B ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($45$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d80ff8c-9ecc-471e-8eb7-71e4ab66079a', 'Which integer value of $x$ satisfies $6x + 8 > 286$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 286 but stay at most 302 to trigger an alert.', 'passage', '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Choice A ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$45$","is_correct":false,"explanation":"Choice B ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$47$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 46.33$. **Step 2:** Smallest integer: 47."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 286$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 278$.
**Step 2:** $x > 46.33$.
**Step 3:** Among choices, $47$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $47$

**Distractor analysis:**
- **A** ($44$): Choice A ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($45$): Choice B ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($46$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('434b63d0-86ed-4821-8e40-e063d2c322b5', 'Which integer value of $x$ satisfies $3x + 9 > 149$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 149 but stay at most 165 to trigger an alert.', 'passage', '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Choice A ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$46$","is_correct":false,"explanation":"Choice B ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$48$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 46.67$. **Step 2:** Smallest integer: 48."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 149$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 140$.
**Step 2:** $x > 46.67$.
**Step 3:** Among choices, $48$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $48$

**Distractor analysis:**
- **A** ($45$): Choice A ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($46$): Choice B ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($47$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ceab8aee-9ac6-4105-a612-8f964a6a8df5', 'Which integer value of $x$ satisfies $4x + 10 > 202$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 202 but stay at most 218 to trigger an alert.', 'passage', '[{"id":"SPR","text":"49","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 202$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 192$.
**Step 2:** $x > 48.00$.
**Step 3:** Among choices, $49$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 49', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d1e5bcee-4b86-4106-8943-9faa0ff018a5', 'Which integer value of $x$ satisfies $5x + 5 > 251$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 251 but stay at most 267 to trigger an alert.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48$","is_correct":false,"explanation":"Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$50$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 49.20$. **Step 2:** Smallest integer: 50."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 251$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 246$.
**Step 2:** $x > 49.20$.
**Step 3:** Among choices, $50$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $50$

**Distractor analysis:**
- **A** ($47$): Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48$): Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($49$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
