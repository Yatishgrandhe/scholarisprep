BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1218427-403b-4ddd-964d-59ed30e4c4cb', 'Which integer value of $x$ satisfies $6x + 6 > 380$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 380 but stay at most 396 to trigger an alert.', 'passage', '[{"id":"A","text":"$60$","is_correct":false,"explanation":"Choice A ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$61$","is_correct":false,"explanation":"Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$63$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 62.33$. **Step 2:** Smallest integer: 63."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 380$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 374$.
**Step 2:** $x > 62.33$.
**Step 3:** Among choices, $63$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $63$

**Distractor analysis:**
- **A** ($60$): Choice A ($60$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($61$): Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17d87ffa-7f0d-4dd1-8c10-f90bae3891d0', 'Which integer value of $x$ satisfies $3x + 7 > 195$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 195 but stay at most 211 to trigger an alert.', 'passage', '[{"id":"A","text":"$61$","is_correct":false,"explanation":"Choice A ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$62$","is_correct":false,"explanation":"Choice B ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$63$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$64$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 62.67$. **Step 2:** Smallest integer: 64."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 195$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 188$.
**Step 2:** $x > 62.67$.
**Step 3:** Among choices, $64$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $64$

**Distractor analysis:**
- **A** ($61$): Choice A ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($62$): Choice B ($62$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($63$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bcab366a-9e72-4f67-b1ef-7c1136dd0d54', 'Which integer value of $x$ satisfies $4x + 8 > 264$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 264 but stay at most 280 to trigger an alert.', 'passage', '[{"id":"SPR","text":"65","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 264$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 256$.
**Step 2:** $x > 64.00$.
**Step 3:** Among choices, $65$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 65', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f8d5138c-f4cd-47af-82e9-d1f3e699ccf7', 'Which integer value of $x$ satisfies $5x + 9 > 335$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 335 but stay at most 351 to trigger an alert.', 'passage', '[{"id":"A","text":"$63$","is_correct":false,"explanation":"Choice A ($63$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64$","is_correct":false,"explanation":"Choice B ($64$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$65$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$66$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 65.20$. **Step 2:** Smallest integer: 66."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 335$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 326$.
**Step 2:** $x > 65.20$.
**Step 3:** Among choices, $66$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $66$

**Distractor analysis:**
- **A** ($63$): Choice A ($63$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64$): Choice B ($64$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($65$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3975187f-d1e5-488d-9d5c-168658114389', 'Which integer value of $x$ satisfies $6x + 10 > 408$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 408 but stay at most 424 to trigger an alert.', 'passage', '[{"id":"A","text":"$64$","is_correct":false,"explanation":"Too small: $6(64)+10=394$."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Choice B ($65$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$67$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 66.33$. **Step 2:** Smallest integer: 67."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 408$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 398$.
**Step 2:** $x > 66.33$.
**Step 3:** Among choices, $67$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $67$

**Distractor analysis:**
- **A** ($64$): Too small: $6(64)+10=394$.
- **B** ($65$): Choice B ($65$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($66$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cc7dec1f-d8f2-43cd-a820-291989db3c94', 'Which integer value of $x$ satisfies $3x + 5 > 25$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 25 but stay at most 41 to trigger an alert.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$6$","is_correct":false,"explanation":"Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$8$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 6.67$. **Step 2:** Smallest integer: 8."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 25$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 20$.
**Step 2:** $x > 6.67$.
**Step 3:** Among choices, $8$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $8$

**Distractor analysis:**
- **A** ($5$): Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($6$): Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($7$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3927127d-2a39-4acd-993b-84727cee143f', 'Which integer value of $x$ satisfies $4x + 6 > 38$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 38 but stay at most 54 to trigger an alert.', 'passage', '[{"id":"SPR","text":"9","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 38$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 32$.
**Step 2:** $x > 8.00$.
**Step 3:** Among choices, $9$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 9', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a4ab0a2a-cf56-4315-8b0b-133efc09d5c8', 'Which integer value of $x$ satisfies $5x + 7 > 53$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 53 but stay at most 69 to trigger an alert.', 'passage', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$8$","is_correct":false,"explanation":"Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$10$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 9.20$. **Step 2:** Smallest integer: 10."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 53$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 46$.
**Step 2:** $x > 9.20$.
**Step 3:** Among choices, $10$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $10$

**Distractor analysis:**
- **A** ($7$): Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($8$): Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($9$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f345337-fab3-4ae8-be29-c24efea0b211', 'Which integer value of $x$ satisfies $6x + 8 > 70$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 70 but stay at most 86 to trigger an alert.', 'passage', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Choice A ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$9$","is_correct":false,"explanation":"Choice B ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$11$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 10.33$. **Step 2:** Smallest integer: 11."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 70$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 62$.
**Step 2:** $x > 10.33$.
**Step 3:** Among choices, $11$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $11$

**Distractor analysis:**
- **A** ($8$): Choice A ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($9$): Choice B ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($10$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20c1c090-9255-4afd-9f48-40679c4ccd62', 'Which integer value of $x$ satisfies $3x + 9 > 41$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 41 but stay at most 57 to trigger an alert.', 'passage', '[{"id":"A","text":"$9$","is_correct":false,"explanation":"Choice A ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$10$","is_correct":false,"explanation":"Choice B ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$12$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 10.67$. **Step 2:** Smallest integer: 12."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 41$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 32$.
**Step 2:** $x > 10.67$.
**Step 3:** Among choices, $12$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $12$

**Distractor analysis:**
- **A** ($9$): Choice A ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($10$): Choice B ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($11$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7095735e-1da6-42fa-9aee-7c19166ad7a6', 'Which integer value of $x$ satisfies $4x + 10 > 58$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 58 but stay at most 74 to trigger an alert.', 'passage', '[{"id":"SPR","text":"13","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 58$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 48$.
**Step 2:** $x > 12.00$.
**Step 3:** Among choices, $13$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 13', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f987a3be-620e-40cf-83a7-51d8e09e6ca2', 'Which integer value of $x$ satisfies $5x + 5 > 71$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 71 but stay at most 87 to trigger an alert.', 'passage', '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Choice A ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$14$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 13.20$. **Step 2:** Smallest integer: 14."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 71$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 66$.
**Step 2:** $x > 13.20$.
**Step 3:** Among choices, $14$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $14$

**Distractor analysis:**
- **A** ($11$): Choice A ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($13$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
