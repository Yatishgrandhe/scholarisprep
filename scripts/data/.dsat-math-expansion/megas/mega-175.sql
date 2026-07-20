BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c28d95f7-9141-4ee6-8ce9-1650f73b5c44', 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.) Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"8","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.) Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-7)=0$.
**Step 2:** Roots $x=8$ and $x=7$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer SPR.** 8', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('888f3c65-5b9c-409d-b231-42e9d200b388', 'For $x^2 - 12x + 32 = 0$, what is the positive solution? (Discriminant $=16$.)', NULL, NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 12x + 32 = 0$, what is the positive solution? (Discriminant $=16$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-4)(x-8)=0$.
**Step 2:** Roots $x=4$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6041410d-bd1e-4827-b8a7-71c52578af31', 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)', NULL, NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-5)(x-9)=0$.
**Step 2:** Roots $x=5$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Step 3 — Answer C.** $9$

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3a84a104-405a-4750-ad6e-5fa209d3218b', 'For $x^2 - 12x + 36 = 0$, what is the positive solution? (Discriminant $=0$.)', NULL, NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 12x + 36 = 0$, what is the positive solution? (Discriminant $=0$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-6)(x-6)=0$.
**Step 2:** Roots $x=6$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Step 3 — Answer C.** $6$

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3b328a10-9b88-4f02-8075-c9322b37469d', 'For $x^2 - 14x + 49 = 0$, what is the positive solution? (Discriminant $=0$.) Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"7","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For $x^2 - 14x + 49 = 0$, what is the positive solution? (Discriminant $=0$.) Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Factor: $(x-7)(x-7)=0$.
**Step 2:** Roots $x=7$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Step 3 — Answer SPR.** 7', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7786c60-208e-4c1e-be16-f9976b06987a', 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)', NULL, NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4e3a5c27-1dd4-4a93-a659-c164e1daeac4', 'For $x^2 - 13x + 36 = 0$, what is the positive solution? (Discriminant $=25$.)', NULL, NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 13x + 36 = 0$, what is the positive solution? (Discriminant $=25$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-4)(x-9)=0$.
**Step 2:** Roots $x=4$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $25$.

**Step 3 — Answer C.** $9$

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9d51a106-47d1-4ebe-8b8b-459f52ae6e7e', 'For $x^2 - 11x + 30 = 0$, what is the positive solution? (Discriminant $=1$.)', NULL, NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 11x + 30 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-5)(x-6)=0$.
**Step 2:** Roots $x=5$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $6$

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($11$): Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c20a3cb-343d-4e38-998f-dc7b2c2ce8cc', 'For $x^2 - 13x + 42 = 0$, what is the positive solution? (Discriminant $=1$.) Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"7","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For $x^2 - 13x + 42 = 0$, what is the positive solution? (Discriminant $=1$.) Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Factor: $(x-6)(x-7)=0$.
**Step 2:** Roots $x=6$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer SPR.** 7', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4189d73f-9778-4d6b-ad08-b1bb7c5fcaab', 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)', NULL, NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-7)(x-8)=0$.
**Step 2:** Roots $x=7$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c62fd2e1-6061-44df-946a-2a161281db7a', 'For $x^2 - 17x + 72 = 0$, what is the positive solution? (Discriminant $=1$.)', NULL, NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$19$","is_correct":false,"explanation":"Choice D ($19$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 17x + 72 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-9)=0$.
**Step 2:** Roots $x=8$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $9$

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($17$): Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): Choice D ($19$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7e81e355-969d-4684-897f-2b20f0ac3431', 'For $x^2 - 10x + 24 = 0$, what is the positive solution? (Discriminant $=4$.)', NULL, NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$10$","is_correct":false,"explanation":"Choice B ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Choice D ($12$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 10x + 24 = 0$, what is the positive solution? (Discriminant $=4$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-4)(x-6)=0$.
**Step 2:** Roots $x=4$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Step 3 — Answer C.** $6$

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($10$): Choice B ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($12$): Choice D ($12$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
