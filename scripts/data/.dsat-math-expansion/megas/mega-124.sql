BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('421289cf-f03b-4ada-aaf0-ae44d41a0c97', 'Which integer value of $x$ satisfies $6x + 6 > 92$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 92 but stay at most 108 to trigger an alert.', 'passage', '[{"id":"A","text":"$12$","is_correct":false,"explanation":"Choice A ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$15$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 14.33$. **Step 2:** Smallest integer: 15."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 92$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 86$.
**Step 2:** $x > 14.33$.
**Step 3:** Among choices, $15$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $15$

**Distractor analysis:**
- **A** ($12$): Choice A ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($14$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ae213e00-9130-4861-ab75-fe96ed984fe3', 'Which integer value of $x$ satisfies $3x + 7 > 51$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 51 but stay at most 67 to trigger an alert.', 'passage', '[{"id":"A","text":"$13$","is_correct":false,"explanation":"Choice A ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$16$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 14.67$. **Step 2:** Smallest integer: 16."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 51$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 44$.
**Step 2:** $x > 14.67$.
**Step 3:** Among choices, $16$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $16$

**Distractor analysis:**
- **A** ($13$): Choice A ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($15$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e2a438ae-9a04-497a-820c-b7d7e1223946', 'Which integer value of $x$ satisfies $4x + 8 > 72$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 72 but stay at most 88 to trigger an alert.', 'passage', '[{"id":"SPR","text":"17","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 72$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 64$.
**Step 2:** $x > 16.00$.
**Step 3:** Among choices, $17$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 17', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2e3c619c-5a40-4e2e-9834-2bb5693c6e3c', 'Which integer value of $x$ satisfies $5x + 9 > 95$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 95 but stay at most 111 to trigger an alert.', 'passage', '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Choice A ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$18$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 17.20$. **Step 2:** Smallest integer: 18."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 95$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 86$.
**Step 2:** $x > 17.20$.
**Step 3:** Among choices, $18$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $18$

**Distractor analysis:**
- **A** ($15$): Choice A ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($17$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('106842a9-36ae-4438-801c-5665b0ae25c8', 'Which integer value of $x$ satisfies $6x + 10 > 120$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 120 but stay at most 136 to trigger an alert.', 'passage', '[{"id":"A","text":"$16$","is_correct":false,"explanation":"Too small: $6(16)+10=106$."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$19$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 18.33$. **Step 2:** Smallest integer: 19."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 120$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 110$.
**Step 2:** $x > 18.33$.
**Step 3:** Among choices, $19$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $19$

**Distractor analysis:**
- **A** ($16$): Too small: $6(16)+10=106$.
- **B** ($17$): Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($18$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f843ea6-1ef0-4bb2-a876-ccecc64d5ab1', 'Which integer value of $x$ satisfies $3x + 5 > 61$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 61 but stay at most 77 to trigger an alert.', 'passage', '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Choice A ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$18$","is_correct":false,"explanation":"Choice B ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$20$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 18.67$. **Step 2:** Smallest integer: 20."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 61$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 56$.
**Step 2:** $x > 18.67$.
**Step 3:** Among choices, $20$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $20$

**Distractor analysis:**
- **A** ($17$): Choice A ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($18$): Choice B ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($19$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d66e596c-adca-456c-a339-0c26ffc963cd', 'Which integer value of $x$ satisfies $4x + 6 > 86$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 86 but stay at most 102 to trigger an alert.', 'passage', '[{"id":"SPR","text":"21","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 86$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 80$.
**Step 2:** $x > 20.00$.
**Step 3:** Among choices, $21$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 21', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b8c7d542-c7e8-4400-af24-d6bf3329a762', 'Which integer value of $x$ satisfies $5x + 7 > 113$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 113 but stay at most 129 to trigger an alert.', 'passage', '[{"id":"A","text":"$19$","is_correct":false,"explanation":"Choice A ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$20$","is_correct":false,"explanation":"Choice B ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$22$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 21.20$. **Step 2:** Smallest integer: 22."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 113$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 106$.
**Step 2:** $x > 21.20$.
**Step 3:** Among choices, $22$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $22$

**Distractor analysis:**
- **A** ($19$): Choice A ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($20$): Choice B ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($21$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('210569f3-53b7-49b8-b33e-9395c73e5948', 'Which integer value of $x$ satisfies $6x + 8 > 142$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 142 but stay at most 158 to trigger an alert.', 'passage', '[{"id":"A","text":"$20$","is_correct":false,"explanation":"Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$23$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 22.33$. **Step 2:** Smallest integer: 23."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 142$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 134$.
**Step 2:** $x > 22.33$.
**Step 3:** Among choices, $23$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $23$

**Distractor analysis:**
- **A** ($20$): Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($21$): Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($22$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6a5eb69b-4f64-44d4-8592-18a9625598eb', 'Which integer value of $x$ satisfies $3x + 9 > 77$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 77 but stay at most 93 to trigger an alert.', 'passage', '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$22$","is_correct":false,"explanation":"Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$24$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 22.67$. **Step 2:** Smallest integer: 24."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 77$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 68$.
**Step 2:** $x > 22.67$.
**Step 3:** Among choices, $24$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $24$

**Distractor analysis:**
- **A** ($21$): Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($22$): Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($23$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('32d7e81e-cfa8-4c8b-9f7b-5806a2704631', 'Which integer value of $x$ satisfies $4x + 10 > 106$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 106 but stay at most 122 to trigger an alert.', 'passage', '[{"id":"SPR","text":"25","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 106$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 96$.
**Step 2:** $x > 24.00$.
**Step 3:** Among choices, $25$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 25', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c2e5c85-f18d-43ab-940d-1826f29b67f6', 'Which integer value of $x$ satisfies $5x + 5 > 131$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 131 but stay at most 147 to trigger an alert.', 'passage', '[{"id":"A","text":"$23$","is_correct":false,"explanation":"Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$24$","is_correct":false,"explanation":"Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$26$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 25.20$. **Step 2:** Smallest integer: 26."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 131$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 126$.
**Step 2:** $x > 25.20$.
**Step 3:** Among choices, $26$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $26$

**Distractor analysis:**
- **A** ($23$): Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($24$): Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($25$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
