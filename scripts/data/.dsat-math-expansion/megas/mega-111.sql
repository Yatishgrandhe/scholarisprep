BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d54a4984-79d2-4264-bbc4-e6339e4ee46a', 'Which integer value of $x$ satisfies $6x + 6 > 224$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 224 but stay at most 240 to trigger an alert.', 'passage', '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Choice A ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$35$","is_correct":false,"explanation":"Choice B ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$37$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 36.33$. **Step 2:** Smallest integer: 37."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 224$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 218$.
**Step 2:** $x > 36.33$.
**Step 3:** Among choices, $37$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $37$

**Distractor analysis:**
- **A** ($34$): Choice A ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($35$): Choice B ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($36$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ef03a40c-6c41-4f6f-a7cd-afbfb213248b', 'Which integer value of $x$ satisfies $3x + 7 > 117$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 117 but stay at most 133 to trigger an alert.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$36$","is_correct":false,"explanation":"Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$38$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 36.67$. **Step 2:** Smallest integer: 38."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 117$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 110$.
**Step 2:** $x > 36.67$.
**Step 3:** Among choices, $38$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $38$

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($36$): Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($37$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d77a17dd-d78c-4514-9447-004ef9ede1df', 'Which integer value of $x$ satisfies $4x + 8 > 160$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 160 but stay at most 176 to trigger an alert.', 'passage', '[{"id":"SPR","text":"39","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 160$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 152$.
**Step 2:** $x > 38.00$.
**Step 3:** Among choices, $39$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 39', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('55d2367f-5f72-4399-8ec8-f155c2c7e425', 'Which integer value of $x$ satisfies $5x + 9 > 205$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 205 but stay at most 221 to trigger an alert.', 'passage', '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Choice A ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$38$","is_correct":false,"explanation":"Choice B ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$40$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 39.20$. **Step 2:** Smallest integer: 40."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 205$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 196$.
**Step 2:** $x > 39.20$.
**Step 3:** Among choices, $40$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $40$

**Distractor analysis:**
- **A** ($37$): Choice A ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($38$): Choice B ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($39$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96d35895-3763-4cfd-8644-a91ab7df0343', 'Which integer value of $x$ satisfies $6x + 10 > 252$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 252 but stay at most 268 to trigger an alert.', 'passage', '[{"id":"A","text":"$38$","is_correct":false,"explanation":"Too small: $6(38)+10=238$."},{"id":"B","text":"$39$","is_correct":false,"explanation":"Choice B ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$40$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$41$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 40.33$. **Step 2:** Smallest integer: 41."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 252$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 242$.
**Step 2:** $x > 40.33$.
**Step 3:** Among choices, $41$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $41$

**Distractor analysis:**
- **A** ($38$): Too small: $6(38)+10=238$.
- **B** ($39$): Choice B ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($40$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9582e3fc-3319-4738-af3b-27d534b58ad9', 'Which integer value of $x$ satisfies $3x + 5 > 127$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 127 but stay at most 143 to trigger an alert.', 'passage', '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Choice A ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$40$","is_correct":false,"explanation":"Choice B ($40$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$42$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 40.67$. **Step 2:** Smallest integer: 42."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 127$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 122$.
**Step 2:** $x > 40.67$.
**Step 3:** Among choices, $42$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $42$

**Distractor analysis:**
- **A** ($39$): Choice A ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($40$): Choice B ($40$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($41$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('73e930ca-a761-4f9b-a132-36b7001b104e', 'Which integer value of $x$ satisfies $4x + 6 > 174$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 174 but stay at most 190 to trigger an alert.', 'passage', '[{"id":"SPR","text":"43","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 174$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 168$.
**Step 2:** $x > 42.00$.
**Step 3:** Among choices, $43$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 43', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('efd05c8c-b7a3-44f3-9925-f3b18e8ad340', 'Which integer value of $x$ satisfies $5x + 7 > 223$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 223 but stay at most 239 to trigger an alert.', 'passage', '[{"id":"A","text":"$41$","is_correct":false,"explanation":"Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$42$","is_correct":false,"explanation":"Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$44$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 43.20$. **Step 2:** Smallest integer: 44."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 223$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 216$.
**Step 2:** $x > 43.20$.
**Step 3:** Among choices, $44$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $44$

**Distractor analysis:**
- **A** ($41$): Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($42$): Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($43$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('70715fc0-8a11-4599-85ef-c699956a949b', 'Which integer value of $x$ satisfies $6x + 8 > 274$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 274 but stay at most 290 to trigger an alert.', 'passage', '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Choice A ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$43$","is_correct":false,"explanation":"Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$45$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 44.33$. **Step 2:** Smallest integer: 45."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 274$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 266$.
**Step 2:** $x > 44.33$.
**Step 3:** Among choices, $45$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $45$

**Distractor analysis:**
- **A** ($42$): Choice A ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($43$): Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($44$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b5d2417-0c9a-429a-b610-df543dd703dd', 'Which integer value of $x$ satisfies $3x + 9 > 143$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 143 but stay at most 159 to trigger an alert.', 'passage', '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Choice A ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$44$","is_correct":false,"explanation":"Choice B ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$46$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 44.67$. **Step 2:** Smallest integer: 46."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 143$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 134$.
**Step 2:** $x > 44.67$.
**Step 3:** Among choices, $46$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $46$

**Distractor analysis:**
- **A** ($43$): Choice A ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($44$): Choice B ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($45$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96f7671a-efe6-4cc2-966e-1e8afed7bbfc', 'Which integer value of $x$ satisfies $4x + 10 > 194$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 194 but stay at most 210 to trigger an alert.', 'passage', '[{"id":"SPR","text":"47","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 194$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 184$.
**Step 2:** $x > 46.00$.
**Step 3:** Among choices, $47$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 47', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7b159fdc-7ece-44fd-ba84-9e3e2db5c68a', 'Which integer value of $x$ satisfies $5x + 5 > 241$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 241 but stay at most 257 to trigger an alert.', 'passage', '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Choice A ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$46$","is_correct":false,"explanation":"Choice B ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$48$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 47.20$. **Step 2:** Smallest integer: 48."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 241$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 236$.
**Step 2:** $x > 47.20$.
**Step 3:** Among choices, $48$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $48$

**Distractor analysis:**
- **A** ($45$): Choice A ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($46$): Choice B ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($47$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
