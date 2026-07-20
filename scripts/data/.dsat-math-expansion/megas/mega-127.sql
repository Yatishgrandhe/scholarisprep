BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('767e46bd-6865-4ca8-8bfe-18b3121df1e7', 'Which integer value of $x$ satisfies $6x + 6 > 308$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 308 but stay at most 324 to trigger an alert.', 'passage', '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Choice A ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Choice B ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$51$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 50.33$. **Step 2:** Smallest integer: 51."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 308$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 302$.
**Step 2:** $x > 50.33$.
**Step 3:** Among choices, $51$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $51$

**Distractor analysis:**
- **A** ($48$): Choice A ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($49$): Choice B ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5924ca09-01ac-4696-9e70-8b17e2fb7ebb', 'Which integer value of $x$ satisfies $3x + 7 > 159$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 159 but stay at most 175 to trigger an alert.', 'passage', '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Choice A ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$52$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 50.67$. **Step 2:** Smallest integer: 52."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 159$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 152$.
**Step 2:** $x > 50.67$.
**Step 3:** Among choices, $52$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $52$

**Distractor analysis:**
- **A** ($49$): Choice A ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($50$): Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($51$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('120c984e-53d5-4233-a3b1-8fa87a269878', 'Which integer value of $x$ satisfies $4x + 8 > 216$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 216 but stay at most 232 to trigger an alert.', 'passage', '[{"id":"SPR","text":"53","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 216$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 208$.
**Step 2:** $x > 52.00$.
**Step 3:** Among choices, $53$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 53', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('971a923a-5de5-4056-bc36-40e3a3372ac4', 'Which integer value of $x$ satisfies $5x + 9 > 275$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 275 but stay at most 291 to trigger an alert.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52$","is_correct":false,"explanation":"Choice B ($52$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$54$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 53.20$. **Step 2:** Smallest integer: 54."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 275$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 266$.
**Step 2:** $x > 53.20$.
**Step 3:** Among choices, $54$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $54$

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52$): Choice B ($52$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($53$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dcd2000f-b9d8-4617-88a2-ed0048b944f7', 'Which integer value of $x$ satisfies $6x + 10 > 336$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 336 but stay at most 352 to trigger an alert.', 'passage', '[{"id":"A","text":"$52$","is_correct":false,"explanation":"Too small: $6(52)+10=322$."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Choice B ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$55$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 54.33$. **Step 2:** Smallest integer: 55."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 336$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 326$.
**Step 2:** $x > 54.33$.
**Step 3:** Among choices, $55$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $55$

**Distractor analysis:**
- **A** ($52$): Too small: $6(52)+10=322$.
- **B** ($53$): Choice B ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($54$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('09d5516a-7baf-43c9-b014-7aed67242c6d', 'Which integer value of $x$ satisfies $3x + 5 > 169$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 169 but stay at most 185 to trigger an alert.', 'passage', '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$54$","is_correct":false,"explanation":"Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$56$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 54.67$. **Step 2:** Smallest integer: 56."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 169$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 164$.
**Step 2:** $x > 54.67$.
**Step 3:** Among choices, $56$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $56$

**Distractor analysis:**
- **A** ($53$): Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($54$): Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($55$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a57a3cd-e512-472f-9466-c5e3ce0aa3c7', 'Which integer value of $x$ satisfies $4x + 6 > 230$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 230 but stay at most 246 to trigger an alert.', 'passage', '[{"id":"SPR","text":"57","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 230$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 224$.
**Step 2:** $x > 56.00$.
**Step 3:** Among choices, $57$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 57', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b466027-94d1-4962-8bad-009070e21924', 'Which integer value of $x$ satisfies $5x + 7 > 293$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 293 but stay at most 309 to trigger an alert.', 'passage', '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Choice A ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56$","is_correct":false,"explanation":"Choice B ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$58$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 57.20$. **Step 2:** Smallest integer: 58."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 293$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 286$.
**Step 2:** $x > 57.20$.
**Step 3:** Among choices, $58$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $58$

**Distractor analysis:**
- **A** ($55$): Choice A ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56$): Choice B ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($57$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('277c26e9-66a0-4f2a-b23e-3623bbf839b6', 'Which integer value of $x$ satisfies $6x + 8 > 376$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 376 but stay at most 392 to trigger an alert.', 'passage', '[{"id":"A","text":"$59$","is_correct":false,"explanation":"Choice A ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60$","is_correct":false,"explanation":"Choice B ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$62$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 61.33$. **Step 2:** Smallest integer: 62."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 376$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 368$.
**Step 2:** $x > 61.33$.
**Step 3:** Among choices, $62$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $62$

**Distractor analysis:**
- **A** ($59$): Choice A ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60$): Choice B ($60$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($61$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bbc2f3bb-c732-499d-8548-9c8df63f3d36', 'Which integer value of $x$ satisfies $3x + 9 > 194$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 194 but stay at most 210 to trigger an alert.', 'passage', '[{"id":"A","text":"$60$","is_correct":false,"explanation":"Choice A ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$61$","is_correct":false,"explanation":"Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$63$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 61.67$. **Step 2:** Smallest integer: 63."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 194$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 185$.
**Step 2:** $x > 61.67$.
**Step 3:** Among choices, $63$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $63$

**Distractor analysis:**
- **A** ($60$): Choice A ($60$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($61$): Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a1570153-f340-4547-92bf-66b1d01f53ed', 'Which integer value of $x$ satisfies $4x + 10 > 262$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 262 but stay at most 278 to trigger an alert.', 'passage', '[{"id":"SPR","text":"64","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 262$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 252$.
**Step 2:** $x > 63.00$.
**Step 3:** Among choices, $64$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 64', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('859ecad8-9f6c-421a-b50d-b8b30f3efea9', 'Which integer value of $x$ satisfies $5x + 5 > 326$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 326 but stay at most 342 to trigger an alert.', 'passage', '[{"id":"A","text":"$62$","is_correct":false,"explanation":"Choice A ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Choice B ($63$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$64$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$65$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 64.20$. **Step 2:** Smallest integer: 65."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 326$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 321$.
**Step 2:** $x > 64.20$.
**Step 3:** Among choices, $65$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $65$

**Distractor analysis:**
- **A** ($62$): Choice A ($62$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($63$): Choice B ($63$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($64$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
