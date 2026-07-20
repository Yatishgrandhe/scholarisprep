BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('27613362-d247-478f-b7fd-7845d9e90b81', 'Which integer value of $x$ satisfies $6x + 6 > 368$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 368 but stay at most 384 to trigger an alert.', 'passage', '[{"id":"A","text":"$58$","is_correct":false,"explanation":"Choice A ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$59$","is_correct":false,"explanation":"Choice B ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$60$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$61$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 60.33$. **Step 2:** Smallest integer: 61."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 368$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 362$.
**Step 2:** $x > 60.33$.
**Step 3:** Among choices, $61$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $61$

**Distractor analysis:**
- **A** ($58$): Choice A ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($59$): Choice B ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($60$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('785a8357-67df-4773-b9fa-356bdba7b4c6', 'Which integer value of $x$ satisfies $3x + 7 > 189$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 189 but stay at most 205 to trigger an alert.', 'passage', '[{"id":"A","text":"$59$","is_correct":false,"explanation":"Choice A ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60$","is_correct":false,"explanation":"Choice B ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$62$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 60.67$. **Step 2:** Smallest integer: 62."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 189$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 182$.
**Step 2:** $x > 60.67$.
**Step 3:** Among choices, $62$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $62$

**Distractor analysis:**
- **A** ($59$): Choice A ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60$): Choice B ($60$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($61$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ddc70568-c9e0-40de-92b6-64be216a321a', 'Which integer value of $x$ satisfies $4x + 8 > 256$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 256 but stay at most 272 to trigger an alert.', 'passage', '[{"id":"SPR","text":"63","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 256$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 248$.
**Step 2:** $x > 62.00$.
**Step 3:** Among choices, $63$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 63', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cf2f0ac6-18ba-4a35-abe8-1db46333bb2a', 'Which integer value of $x$ satisfies $5x + 9 > 325$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 325 but stay at most 341 to trigger an alert.', 'passage', '[{"id":"A","text":"$61$","is_correct":false,"explanation":"Choice A ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$62$","is_correct":false,"explanation":"Choice B ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$63$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$64$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 63.20$. **Step 2:** Smallest integer: 64."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 325$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 316$.
**Step 2:** $x > 63.20$.
**Step 3:** Among choices, $64$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $64$

**Distractor analysis:**
- **A** ($61$): Choice A ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($62$): Choice B ($62$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($63$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9b4f68f9-ed0b-4d0c-87af-25edbcbd4e3a', 'Which integer value of $x$ satisfies $6x + 10 > 396$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 396 but stay at most 412 to trigger an alert.', 'passage', '[{"id":"A","text":"$62$","is_correct":false,"explanation":"Too small: $6(62)+10=382$."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Choice B ($63$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$64$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$65$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 64.33$. **Step 2:** Smallest integer: 65."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 396$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 386$.
**Step 2:** $x > 64.33$.
**Step 3:** Among choices, $65$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $65$

**Distractor analysis:**
- **A** ($62$): Too small: $6(62)+10=382$.
- **B** ($63$): Choice B ($63$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($64$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('142f8c71-2e58-41b7-b928-2306e2822b1a', 'Which integer value of $x$ satisfies $3x + 5 > 19$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 19 but stay at most 35 to trigger an alert.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Choice A ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$4$","is_correct":false,"explanation":"Choice B ($4$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$6$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 4.67$. **Step 2:** Smallest integer: 6."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 19$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 14$.
**Step 2:** $x > 4.67$.
**Step 3:** Among choices, $6$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $6$

**Distractor analysis:**
- **A** ($3$): Choice A ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($4$): Choice B ($4$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($5$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ad20f5e6-2ca9-4593-bab4-0d6a0fe5e7db', 'Which integer value of $x$ satisfies $4x + 6 > 30$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 30 but stay at most 46 to trigger an alert.', 'passage', '[{"id":"SPR","text":"7","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 30$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 24$.
**Step 2:** $x > 6.00$.
**Step 3:** Among choices, $7$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 7', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('18821797-d674-4eeb-9e9a-b86e4f73ef91', 'Which integer value of $x$ satisfies $5x + 7 > 43$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 43 but stay at most 59 to trigger an alert.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$6$","is_correct":false,"explanation":"Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$8$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 7.20$. **Step 2:** Smallest integer: 8."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 43$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 36$.
**Step 2:** $x > 7.20$.
**Step 3:** Among choices, $8$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $8$

**Distractor analysis:**
- **A** ($5$): Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($6$): Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($7$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f7be970d-858e-4c8c-9312-f05d3dc4593d', 'Which integer value of $x$ satisfies $6x + 8 > 58$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 58 but stay at most 74 to trigger an alert.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$7$","is_correct":false,"explanation":"Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$9$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 8.33$. **Step 2:** Smallest integer: 9."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 58$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 50$.
**Step 2:** $x > 8.33$.
**Step 3:** Among choices, $9$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $9$

**Distractor analysis:**
- **A** ($6$): Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($7$): Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($8$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fa4bbb87-2e17-44b2-9744-a734bdfd4d9a', 'Which integer value of $x$ satisfies $3x + 9 > 35$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 35 but stay at most 51 to trigger an alert.', 'passage', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$8$","is_correct":false,"explanation":"Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$10$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 8.67$. **Step 2:** Smallest integer: 10."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 35$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 26$.
**Step 2:** $x > 8.67$.
**Step 3:** Among choices, $10$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $10$

**Distractor analysis:**
- **A** ($7$): Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($8$): Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($9$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('643bd4e7-64e2-4a96-83f9-1599d894fe13', 'Which integer value of $x$ satisfies $4x + 10 > 50$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 50 but stay at most 66 to trigger an alert.', 'passage', '[{"id":"SPR","text":"11","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 50$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 40$.
**Step 2:** $x > 10.00$.
**Step 3:** Among choices, $11$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 11', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('888162a2-d517-4b10-9416-46220f19875d', 'Which integer value of $x$ satisfies $5x + 5 > 71$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 71 but stay at most 87 to trigger an alert.', 'passage', '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Choice A ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$14$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 13.20$. **Step 2:** Smallest integer: 14."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 71$ and is the smallest feasible reading?

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
