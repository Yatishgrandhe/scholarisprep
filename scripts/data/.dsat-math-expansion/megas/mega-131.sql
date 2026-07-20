BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e07f22c5-9a8c-4a6d-9584-571c42986230', 'Which integer value of $x$ satisfies $6x + 6 > 254$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 254 but stay at most 270 to trigger an alert.', 'passage', '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Choice A ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$40$","is_correct":false,"explanation":"Choice B ($40$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$42$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 41.33$. **Step 2:** Smallest integer: 42."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 254$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 248$.
**Step 2:** $x > 41.33$.
**Step 3:** Among choices, $42$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $42$

**Distractor analysis:**
- **A** ($39$): Choice A ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($40$): Choice B ($40$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($41$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c0c9adf-997b-4da7-b9a7-c7a7151e9d18', 'Which integer value of $x$ satisfies $3x + 7 > 132$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 132 but stay at most 148 to trigger an alert.', 'passage', '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Choice A ($40$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$43$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 41.67$. **Step 2:** Smallest integer: 43."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 132$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 125$.
**Step 2:** $x > 41.67$.
**Step 3:** Among choices, $43$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $43$

**Distractor analysis:**
- **A** ($40$): Choice A ($40$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($41$): Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($42$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a6a93efc-005b-4bf2-8bee-9249e8147d34', 'Which integer value of $x$ satisfies $4x + 8 > 180$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 180 but stay at most 196 to trigger an alert.', 'passage', '[{"id":"SPR","text":"44","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 180$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 172$.
**Step 2:** $x > 43.00$.
**Step 3:** Among choices, $44$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 44', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('86e95b21-692a-484a-a24a-5133ca87bd51', 'Which integer value of $x$ satisfies $5x + 9 > 230$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 230 but stay at most 246 to trigger an alert.', 'passage', '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Choice A ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$43$","is_correct":false,"explanation":"Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$45$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 44.20$. **Step 2:** Smallest integer: 45."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 230$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 221$.
**Step 2:** $x > 44.20$.
**Step 3:** Among choices, $45$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $45$

**Distractor analysis:**
- **A** ($42$): Choice A ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($43$): Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($44$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2c98578b-03ff-4444-93fb-749445e9e87a', 'Which integer value of $x$ satisfies $6x + 10 > 282$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 282 but stay at most 298 to trigger an alert.', 'passage', '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Too small: $6(43)+10=268$."},{"id":"B","text":"$44$","is_correct":false,"explanation":"Choice B ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$46$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 45.33$. **Step 2:** Smallest integer: 46."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 282$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 272$.
**Step 2:** $x > 45.33$.
**Step 3:** Among choices, $46$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $46$

**Distractor analysis:**
- **A** ($43$): Too small: $6(43)+10=268$.
- **B** ($44$): Choice B ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($45$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e0a202bf-bb1e-4278-92b3-11abd97e4a9e', 'Which integer value of $x$ satisfies $3x + 5 > 142$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 142 but stay at most 158 to trigger an alert.', 'passage', '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Choice A ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$45$","is_correct":false,"explanation":"Choice B ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$47$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 45.67$. **Step 2:** Smallest integer: 47."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 142$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 137$.
**Step 2:** $x > 45.67$.
**Step 3:** Among choices, $47$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $47$

**Distractor analysis:**
- **A** ($44$): Choice A ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($45$): Choice B ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($46$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d73078db-9e02-4975-b081-5502c0a84536', 'Which integer value of $x$ satisfies $4x + 6 > 194$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 194 but stay at most 210 to trigger an alert.', 'passage', '[{"id":"SPR","text":"48","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 194$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 188$.
**Step 2:** $x > 47.00$.
**Step 3:** Among choices, $48$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 48', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ebdf82d-a8d2-4fbe-ba8d-4aa18e152141', 'Which integer value of $x$ satisfies $5x + 7 > 248$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 248 but stay at most 264 to trigger an alert.', 'passage', '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Choice A ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$47$","is_correct":false,"explanation":"Choice B ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$48$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$49$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 48.20$. **Step 2:** Smallest integer: 49."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 248$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 241$.
**Step 2:** $x > 48.20$.
**Step 3:** Among choices, $49$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $49$

**Distractor analysis:**
- **A** ($46$): Choice A ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($47$): Choice B ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($48$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7cea05a2-3419-4bc9-9dc3-2aaf811444cc', 'Which integer value of $x$ satisfies $6x + 8 > 304$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 304 but stay at most 320 to trigger an alert.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48$","is_correct":false,"explanation":"Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$50$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 49.33$. **Step 2:** Smallest integer: 50."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 304$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 296$.
**Step 2:** $x > 49.33$.
**Step 3:** Among choices, $50$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $50$

**Distractor analysis:**
- **A** ($47$): Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48$): Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($49$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c90e51e8-ed4b-4b4d-9eba-1bbb66a7ee63', 'Which integer value of $x$ satisfies $3x + 9 > 158$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 158 but stay at most 174 to trigger an alert.', 'passage', '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Choice A ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Choice B ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$51$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 49.67$. **Step 2:** Smallest integer: 51."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 158$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 149$.
**Step 2:** $x > 49.67$.
**Step 3:** Among choices, $51$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $51$

**Distractor analysis:**
- **A** ($48$): Choice A ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($49$): Choice B ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8e4c13d6-f76d-49d7-bfec-4361ece66011', 'Which integer value of $x$ satisfies $4x + 10 > 214$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 214 but stay at most 230 to trigger an alert.', 'passage', '[{"id":"SPR","text":"52","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 214$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 204$.
**Step 2:** $x > 51.00$.
**Step 3:** Among choices, $52$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 52', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e56fc051-b725-4d00-8c4b-d1a3383ff6a9', 'Which integer value of $x$ satisfies $5x + 5 > 266$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 266 but stay at most 282 to trigger an alert.', 'passage', '[{"id":"A","text":"$50$","is_correct":false,"explanation":"Choice A ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$51$","is_correct":false,"explanation":"Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$53$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 52.20$. **Step 2:** Smallest integer: 53."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 266$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 261$.
**Step 2:** $x > 52.20$.
**Step 3:** Among choices, $53$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $53$

**Distractor analysis:**
- **A** ($50$): Choice A ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($51$): Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($52$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
