BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8fdbd1a9-599d-4622-87b9-eb3b4a5f6512', 'Which integer value of $x$ satisfies $6x + 6 > 398$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 398 but stay at most 414 to trigger an alert.', 'passage', '[{"id":"A","text":"$63$","is_correct":false,"explanation":"Choice A ($63$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64$","is_correct":false,"explanation":"Choice B ($64$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$65$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$66$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 65.33$. **Step 2:** Smallest integer: 66."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 398$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 392$.
**Step 2:** $x > 65.33$.
**Step 3:** Among choices, $66$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $66$

**Distractor analysis:**
- **A** ($63$): Choice A ($63$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64$): Choice B ($64$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($65$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6b397f35-c7b2-4b34-b60a-bc1582b43283', 'Which integer value of $x$ satisfies $3x + 7 > 204$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 204 but stay at most 220 to trigger an alert.', 'passage', '[{"id":"A","text":"$64$","is_correct":false,"explanation":"Choice A ($64$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Choice B ($65$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$67$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 65.67$. **Step 2:** Smallest integer: 67."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 204$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 197$.
**Step 2:** $x > 65.67$.
**Step 3:** Among choices, $67$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $67$

**Distractor analysis:**
- **A** ($64$): Choice A ($64$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($65$): Choice B ($65$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($66$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a4e6b0c-0c43-4a62-a52e-0d4d1259138e', 'Which integer value of $x$ satisfies $4x + 8 > 276$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 276 but stay at most 292 to trigger an alert.', 'passage', '[{"id":"SPR","text":"68","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 276$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 268$.
**Step 2:** $x > 67.00$.
**Step 3:** Among choices, $68$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 68', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c8cf05e7-bccf-4dab-bfcc-121d88c482be', 'Which integer value of $x$ satisfies $5x + 9 > 350$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 350 but stay at most 366 to trigger an alert.', 'passage', '[{"id":"A","text":"$66$","is_correct":false,"explanation":"Choice A ($66$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$67$","is_correct":false,"explanation":"Choice B ($67$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$68$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$69$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 68.20$. **Step 2:** Smallest integer: 69."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 350$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 341$.
**Step 2:** $x > 68.20$.
**Step 3:** Among choices, $69$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $69$

**Distractor analysis:**
- **A** ($66$): Choice A ($66$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($67$): Choice B ($67$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($68$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8cc0d3cf-c19b-4ffb-989c-78451449c695', 'Which integer value of $x$ satisfies $6x + 10 > 426$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 426 but stay at most 442 to trigger an alert.', 'passage', '[{"id":"A","text":"$67$","is_correct":false,"explanation":"Too small: $6(67)+10=412$."},{"id":"B","text":"$68$","is_correct":false,"explanation":"Choice B ($68$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$69$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$70$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 69.33$. **Step 2:** Smallest integer: 70."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 426$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 416$.
**Step 2:** $x > 69.33$.
**Step 3:** Among choices, $70$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $70$

**Distractor analysis:**
- **A** ($67$): Too small: $6(67)+10=412$.
- **B** ($68$): Choice B ($68$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($69$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b40224b-63ea-48f4-9ce4-63262b53ac1a', 'Which integer value of $x$ satisfies $3x + 5 > 34$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 34 but stay at most 50 to trigger an alert.', 'passage', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Choice A ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$9$","is_correct":false,"explanation":"Choice B ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$11$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 9.67$. **Step 2:** Smallest integer: 11."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 34$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 29$.
**Step 2:** $x > 9.67$.
**Step 3:** Among choices, $11$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $11$

**Distractor analysis:**
- **A** ($8$): Choice A ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($9$): Choice B ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($10$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7e73694d-f2f3-45ae-862d-f6509f0f3978', 'Which integer value of $x$ satisfies $4x + 6 > 50$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 50 but stay at most 66 to trigger an alert.', 'passage', '[{"id":"SPR","text":"12","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 50$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 44$.
**Step 2:** $x > 11.00$.
**Step 3:** Among choices, $12$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 12', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a1c58876-0f48-40a2-aed8-8bb1c3566e5c', 'Which integer value of $x$ satisfies $5x + 7 > 68$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 68 but stay at most 84 to trigger an alert.', 'passage', '[{"id":"A","text":"$10$","is_correct":false,"explanation":"Choice A ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$13$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 12.20$. **Step 2:** Smallest integer: 13."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 68$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 61$.
**Step 2:** $x > 12.20$.
**Step 3:** Among choices, $13$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $13$

**Distractor analysis:**
- **A** ($10$): Choice A ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($11$): Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($12$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a82e3526-2bb8-4ace-88e8-ab30b676a289', 'Which integer value of $x$ satisfies $6x + 8 > 88$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 88 but stay at most 104 to trigger an alert.', 'passage', '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Choice A ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$14$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 13.33$. **Step 2:** Smallest integer: 14."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 88$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 80$.
**Step 2:** $x > 13.33$.
**Step 3:** Among choices, $14$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $14$

**Distractor analysis:**
- **A** ($11$): Choice A ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($13$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5c5f79b2-fe31-4237-ad31-d7e47cbd5672', 'Which integer value of $x$ satisfies $3x + 9 > 50$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 50 but stay at most 66 to trigger an alert.', 'passage', '[{"id":"A","text":"$12$","is_correct":false,"explanation":"Choice A ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$15$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 13.67$. **Step 2:** Smallest integer: 15."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 50$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 41$.
**Step 2:** $x > 13.67$.
**Step 3:** Among choices, $15$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $15$

**Distractor analysis:**
- **A** ($12$): Choice A ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($14$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c58d430a-e3f5-4ff1-8d00-a3b34517d707', 'Which integer value of $x$ satisfies $4x + 10 > 70$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 70 but stay at most 86 to trigger an alert.', 'passage', '[{"id":"SPR","text":"16","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 70$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 60$.
**Step 2:** $x > 15.00$.
**Step 3:** Among choices, $16$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 16', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af730294-0afb-44c4-8ee3-1c3542626d93', 'Which integer value of $x$ satisfies $5x + 5 > 86$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 86 but stay at most 102 to trigger an alert.', 'passage', '[{"id":"A","text":"$14$","is_correct":false,"explanation":"Choice A ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$16$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$17$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 16.20$. **Step 2:** Smallest integer: 17."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 86$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 81$.
**Step 2:** $x > 16.20$.
**Step 3:** Among choices, $17$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $17$

**Distractor analysis:**
- **A** ($14$): Choice A ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($16$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
