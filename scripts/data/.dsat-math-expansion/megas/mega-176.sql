BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dec9028c-41cd-4f55-bbe2-d3f3cfbab2ef', 'For $x^2 - 12x + 35 = 0$, what is the positive solution? (Discriminant $=4$.) Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"7","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For $x^2 - 12x + 35 = 0$, what is the positive solution? (Discriminant $=4$.) Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Factor: $(x-5)(x-7)=0$.
**Step 2:** Roots $x=5$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Step 3 — Answer SPR.** 7', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('462d871a-fe44-4b93-90d0-8eae6b68340e', 'For $x^2 - 14x + 48 = 0$, what is the positive solution? (Discriminant $=4$.)', NULL, NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 14x + 48 = 0$, what is the positive solution? (Discriminant $=4$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-6)(x-8)=0$.
**Step 2:** Roots $x=6$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0d338609-f33b-4f96-b85b-94fde47b31b5', 'For $x^2 - 16x + 63 = 0$, what is the positive solution? (Discriminant $=4$.)', NULL, NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 16x + 63 = 0$, what is the positive solution? (Discriminant $=4$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-7)(x-9)=0$.
**Step 2:** Roots $x=7$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Step 3 — Answer C.** $9$

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('99a012ff-4f93-4d79-92c2-ac329f157310', 'For $x^2 - 14x + 48 = 0$, what is the positive solution? (Discriminant $=4$.)', NULL, NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-6)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 14x + 48 = 0$, what is the positive solution? (Discriminant $=4$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-6)=0$.
**Step 2:** Roots $x=8$ and $x=6$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e07a19a6-4fd8-4704-bfbd-fee1e5ceb333', 'For $x^2 - 11x + 28 = 0$, what is the positive solution? (Discriminant $=9$.) Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"7","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For $x^2 - 11x + 28 = 0$, what is the positive solution? (Discriminant $=9$.) Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Factor: $(x-4)(x-7)=0$.
**Step 2:** Roots $x=4$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Step 3 — Answer SPR.** 7', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('931bc7be-a993-4947-8770-6b7b1df805f6', 'For $x^2 - 13x + 40 = 0$, what is the positive solution? (Discriminant $=9$.)', NULL, NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 13x + 40 = 0$, what is the positive solution? (Discriminant $=9$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-5)(x-8)=0$.
**Step 2:** Roots $x=5$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de2f82bd-c436-4b81-9043-e29964030148', 'For $x^2 - 15x + 54 = 0$, what is the positive solution? (Discriminant $=9$.)', NULL, NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 15x + 54 = 0$, what is the positive solution? (Discriminant $=9$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-6)(x-9)=0$.
**Step 2:** Roots $x=6$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Step 3 — Answer C.** $9$

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72b0ddc5-7161-482d-b67c-56a18f00d4e0', 'For $x^2 - 13x + 42 = 0$, what is the positive solution? (Discriminant $=1$.)', NULL, NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-6)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 13x + 42 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-7)(x-6)=0$.
**Step 2:** Roots $x=7$ and $x=6$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $7$

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('da60f074-7965-4221-926f-3f2d2eba3136', 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.) Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"8","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.) Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-7)=0$.
**Step 2:** Roots $x=8$ and $x=7$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer SPR.** 8', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8898d44f-28b2-4ed4-a731-045f00bc32eb', 'For $x^2 - 12x + 32 = 0$, what is the positive solution? (Discriminant $=16$.)', NULL, NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 12x + 32 = 0$, what is the positive solution? (Discriminant $=16$.)

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
VALUES ('cd0cdc1a-a14a-4cdc-b218-048a7511f7d3', 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)', NULL, NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)

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
VALUES ('95838eba-7e26-4cc5-a7d9-992c30be8d45', 'For $x^2 - 12x + 36 = 0$, what is the positive solution? (Discriminant $=0$.)', NULL, NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 12x + 36 = 0$, what is the positive solution? (Discriminant $=0$.)

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
COMMIT;
