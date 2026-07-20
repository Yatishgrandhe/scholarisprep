BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a0138b3-b983-4fb1-9afe-e722bc718c89', 'Which integer value of $x$ satisfies $6x + 6 > 296$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 296 but stay at most 312 to trigger an alert.', 'passage', '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Choice A ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$47$","is_correct":false,"explanation":"Choice B ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$48$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$49$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 48.33$. **Step 2:** Smallest integer: 49."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 296$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 290$.
**Step 2:** $x > 48.33$.
**Step 3:** Among choices, $49$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $49$

**Distractor analysis:**
- **A** ($46$): Choice A ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($47$): Choice B ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($48$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1071d889-02bd-4437-8113-83b4f7816778', 'Which integer value of $x$ satisfies $3x + 7 > 153$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 153 but stay at most 169 to trigger an alert.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48$","is_correct":false,"explanation":"Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$50$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 48.67$. **Step 2:** Smallest integer: 50."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 153$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 146$.
**Step 2:** $x > 48.67$.
**Step 3:** Among choices, $50$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $50$

**Distractor analysis:**
- **A** ($47$): Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48$): Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($49$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2be2d6fb-2410-45a2-ae6c-16d80879f5eb', 'Which integer value of $x$ satisfies $4x + 8 > 208$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 208 but stay at most 224 to trigger an alert.', 'passage', '[{"id":"SPR","text":"51","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 208$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 200$.
**Step 2:** $x > 50.00$.
**Step 3:** Among choices, $51$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 51', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b7723fae-6298-4f24-8704-6ac6b6279541', 'Which integer value of $x$ satisfies $5x + 9 > 265$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 265 but stay at most 281 to trigger an alert.', 'passage', '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Choice A ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$52$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 51.20$. **Step 2:** Smallest integer: 52."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 265$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 256$.
**Step 2:** $x > 51.20$.
**Step 3:** Among choices, $52$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $52$

**Distractor analysis:**
- **A** ($49$): Choice A ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($50$): Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($51$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('745636ec-8bb6-48d5-a5a8-da914021486f', 'Which integer value of $x$ satisfies $6x + 10 > 324$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 324 but stay at most 340 to trigger an alert.', 'passage', '[{"id":"A","text":"$50$","is_correct":false,"explanation":"Too small: $6(50)+10=310$."},{"id":"B","text":"$51$","is_correct":false,"explanation":"Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$53$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 52.33$. **Step 2:** Smallest integer: 53."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 324$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 314$.
**Step 2:** $x > 52.33$.
**Step 3:** Among choices, $53$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $53$

**Distractor analysis:**
- **A** ($50$): Too small: $6(50)+10=310$.
- **B** ($51$): Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($52$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cd064876-070a-42ac-9a11-37d0c47d870d', 'Which integer value of $x$ satisfies $3x + 5 > 163$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 163 but stay at most 179 to trigger an alert.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52$","is_correct":false,"explanation":"Choice B ($52$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$54$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 52.67$. **Step 2:** Smallest integer: 54."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 163$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 158$.
**Step 2:** $x > 52.67$.
**Step 3:** Among choices, $54$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $54$

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52$): Choice B ($52$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($53$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c1c2e744-83e7-496b-9c10-9f7a7f2f33f5', 'Which integer value of $x$ satisfies $4x + 6 > 222$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 222 but stay at most 238 to trigger an alert.', 'passage', '[{"id":"SPR","text":"55","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 222$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 216$.
**Step 2:** $x > 54.00$.
**Step 3:** Among choices, $55$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 55', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60e11333-594d-4ce2-bac6-726b665f338f', 'Which integer value of $x$ satisfies $5x + 7 > 283$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 283 but stay at most 299 to trigger an alert.', 'passage', '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$54$","is_correct":false,"explanation":"Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$56$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 55.20$. **Step 2:** Smallest integer: 56."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 283$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 276$.
**Step 2:** $x > 55.20$.
**Step 3:** Among choices, $56$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $56$

**Distractor analysis:**
- **A** ($53$): Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($54$): Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($55$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('467ee2ca-818d-4eab-b5f2-0726ee81e053', 'Which integer value of $x$ satisfies $6x + 8 > 346$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 346 but stay at most 362 to trigger an alert.', 'passage', '[{"id":"A","text":"$54$","is_correct":false,"explanation":"Choice A ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$55$","is_correct":false,"explanation":"Choice B ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$57$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 56.33$. **Step 2:** Smallest integer: 57."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 346$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 338$.
**Step 2:** $x > 56.33$.
**Step 3:** Among choices, $57$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $57$

**Distractor analysis:**
- **A** ($54$): Choice A ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($55$): Choice B ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b8321a58-7ea5-42bd-9cdf-a7f3503b0775', 'Which integer value of $x$ satisfies $3x + 9 > 179$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 179 but stay at most 195 to trigger an alert.', 'passage', '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Choice A ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56$","is_correct":false,"explanation":"Choice B ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$58$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 56.67$. **Step 2:** Smallest integer: 58."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 179$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 170$.
**Step 2:** $x > 56.67$.
**Step 3:** Among choices, $58$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $58$

**Distractor analysis:**
- **A** ($55$): Choice A ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56$): Choice B ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($57$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('379b439d-6f82-433a-a3ae-9f41dc61de9f', 'Which integer value of $x$ satisfies $4x + 10 > 242$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 242 but stay at most 258 to trigger an alert.', 'passage', '[{"id":"SPR","text":"59","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 242$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 232$.
**Step 2:** $x > 58.00$.
**Step 3:** Among choices, $59$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 59', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9764c4c3-25a8-41a1-ab5e-4d1911341f37', 'Which integer value of $x$ satisfies $5x + 5 > 301$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 301 but stay at most 317 to trigger an alert.', 'passage', '[{"id":"A","text":"$57$","is_correct":false,"explanation":"Choice A ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$58$","is_correct":false,"explanation":"Choice B ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$60$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 59.20$. **Step 2:** Smallest integer: 60."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 301$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 296$.
**Step 2:** $x > 59.20$.
**Step 3:** Among choices, $60$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $60$

**Distractor analysis:**
- **A** ($57$): Choice A ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($58$): Choice B ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($59$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
