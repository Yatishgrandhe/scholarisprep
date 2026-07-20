BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('880756ab-92bd-41fb-8c10-b0a23956f2d7', 'Which integer value of $x$ satisfies $6x + 6 > 152$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 152 but stay at most 168 to trigger an alert.', 'passage', '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Choice A ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$23$","is_correct":false,"explanation":"Choice B ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$25$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 24.33$. **Step 2:** Smallest integer: 25."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 152$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 146$.
**Step 2:** $x > 24.33$.
**Step 3:** Among choices, $25$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $25$

**Distractor analysis:**
- **A** ($22$): Choice A ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($23$): Choice B ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($24$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('004606ec-c78a-4292-9b5c-14ad1980fc4d', 'Which integer value of $x$ satisfies $3x + 7 > 81$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 81 but stay at most 97 to trigger an alert.', 'passage', '[{"id":"A","text":"$23$","is_correct":false,"explanation":"Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$24$","is_correct":false,"explanation":"Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$26$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 24.67$. **Step 2:** Smallest integer: 26."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 81$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 74$.
**Step 2:** $x > 24.67$.
**Step 3:** Among choices, $26$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $26$

**Distractor analysis:**
- **A** ($23$): Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($24$): Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($25$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7ae090b9-5647-4abb-9011-2d19dd0e17fd', 'Which integer value of $x$ satisfies $4x + 8 > 112$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 112 but stay at most 128 to trigger an alert.', 'passage', '[{"id":"SPR","text":"27","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 112$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 104$.
**Step 2:** $x > 26.00$.
**Step 3:** Among choices, $27$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 27', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a7bf0628-6ce3-4fbe-8c4f-26befdc5fd25', 'Which integer value of $x$ satisfies $5x + 9 > 145$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 145 but stay at most 161 to trigger an alert.', 'passage', '[{"id":"A","text":"$25$","is_correct":false,"explanation":"Choice A ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$26$","is_correct":false,"explanation":"Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$28$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 27.20$. **Step 2:** Smallest integer: 28."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 145$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 136$.
**Step 2:** $x > 27.20$.
**Step 3:** Among choices, $28$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $28$

**Distractor analysis:**
- **A** ($25$): Choice A ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($26$): Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($27$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b8b41f3-cd12-4598-81d6-7846a245f76e', 'Which integer value of $x$ satisfies $6x + 10 > 180$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 180 but stay at most 196 to trigger an alert.', 'passage', '[{"id":"A","text":"$26$","is_correct":false,"explanation":"Too small: $6(26)+10=166$."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$29$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 28.33$. **Step 2:** Smallest integer: 29."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 180$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 170$.
**Step 2:** $x > 28.33$.
**Step 3:** Among choices, $29$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $29$

**Distractor analysis:**
- **A** ($26$): Too small: $6(26)+10=166$.
- **B** ($27$): Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($28$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8ad2f5f6-0d61-4d7b-8efc-94102c55d155', 'Which integer value of $x$ satisfies $3x + 5 > 91$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 91 but stay at most 107 to trigger an alert.', 'passage', '[{"id":"A","text":"$27$","is_correct":false,"explanation":"Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$28$","is_correct":false,"explanation":"Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$30$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 28.67$. **Step 2:** Smallest integer: 30."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 91$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 86$.
**Step 2:** $x > 28.67$.
**Step 3:** Among choices, $30$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $30$

**Distractor analysis:**
- **A** ($27$): Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($28$): Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($29$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6bc92150-2785-489f-a4cd-beddc4e89840', 'Which integer value of $x$ satisfies $4x + 6 > 126$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 126 but stay at most 142 to trigger an alert.', 'passage', '[{"id":"SPR","text":"31","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 126$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 120$.
**Step 2:** $x > 30.00$.
**Step 3:** Among choices, $31$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 31', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d4cd411-3c79-473c-8674-2a78022ba304', 'Which integer value of $x$ satisfies $5x + 7 > 163$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 163 but stay at most 179 to trigger an alert.', 'passage', '[{"id":"A","text":"$29$","is_correct":false,"explanation":"Choice A ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$30$","is_correct":false,"explanation":"Choice B ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$32$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 31.20$. **Step 2:** Smallest integer: 32."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 163$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 156$.
**Step 2:** $x > 31.20$.
**Step 3:** Among choices, $32$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $32$

**Distractor analysis:**
- **A** ($29$): Choice A ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($30$): Choice B ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($31$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('716c7592-1cfc-4314-8519-7bdd03d6a063', 'Which integer value of $x$ satisfies $6x + 8 > 202$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 202 but stay at most 218 to trigger an alert.', 'passage', '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Choice A ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$31$","is_correct":false,"explanation":"Choice B ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$32$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$33$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 32.33$. **Step 2:** Smallest integer: 33."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 202$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 194$.
**Step 2:** $x > 32.33$.
**Step 3:** Among choices, $33$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $33$

**Distractor analysis:**
- **A** ($30$): Choice A ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($31$): Choice B ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($32$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c24c3f0-aef4-4b67-b196-049f406937db', 'Which integer value of $x$ satisfies $3x + 9 > 107$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 107 but stay at most 123 to trigger an alert.', 'passage', '[{"id":"A","text":"$31$","is_correct":false,"explanation":"Choice A ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$32$","is_correct":false,"explanation":"Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$34$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 32.67$. **Step 2:** Smallest integer: 34."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 107$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 98$.
**Step 2:** $x > 32.67$.
**Step 3:** Among choices, $34$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $34$

**Distractor analysis:**
- **A** ($31$): Choice A ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($32$): Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($33$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('02f0f728-afc8-45d5-908d-7976fcec4c30', 'Which integer value of $x$ satisfies $4x + 10 > 146$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 146 but stay at most 162 to trigger an alert.', 'passage', '[{"id":"SPR","text":"35","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 146$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 136$.
**Step 2:** $x > 34.00$.
**Step 3:** Among choices, $35$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 35', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('31e7e986-10eb-4dbf-a10e-881baefbe420', 'Which integer value of $x$ satisfies $5x + 5 > 181$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 181 but stay at most 197 to trigger an alert.', 'passage', '[{"id":"A","text":"$33$","is_correct":false,"explanation":"Choice A ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$34$","is_correct":false,"explanation":"Choice B ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$36$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 35.20$. **Step 2:** Smallest integer: 36."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 181$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 176$.
**Step 2:** $x > 35.20$.
**Step 3:** Among choices, $36$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $36$

**Distractor analysis:**
- **A** ($33$): Choice A ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($34$): Choice B ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($35$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
