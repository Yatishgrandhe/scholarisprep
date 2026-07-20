BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5589b0a9-6817-43d7-9f25-15e0d6361c0e', 'Which integer value of $x$ satisfies $6x + 6 > 398$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 398 but stay at most 414 to trigger an alert.', 'passage', '[{"id":"A","text":"$63$","is_correct":false,"explanation":"Choice A ($63$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64$","is_correct":false,"explanation":"Choice B ($64$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$65$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$66$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 65.33$. **Step 2:** Smallest integer: 66."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 398$ and is the smallest feasible reading?

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
VALUES ('71ad7047-2856-4e39-a0f7-5914d369b312', 'Which integer value of $x$ satisfies $3x + 7 > 204$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 204 but stay at most 220 to trigger an alert.', 'passage', '[{"id":"A","text":"$64$","is_correct":false,"explanation":"Choice A ($64$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Choice B ($65$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$67$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 65.67$. **Step 2:** Smallest integer: 67."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 204$ and is the smallest feasible reading?

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
VALUES ('06e5aa1c-a972-407b-83d4-417647104121', 'Which integer value of $x$ satisfies $4x + 8 > 276$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 276 but stay at most 292 to trigger an alert.', 'passage', '[{"id":"SPR","text":"68","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 276$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 268$.
**Step 2:** $x > 67.00$.
**Step 3:** Among choices, $68$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 68', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('78978f73-b0f8-4c92-ba95-95effd94b2eb', 'Which integer value of $x$ satisfies $5x + 9 > 350$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 350 but stay at most 366 to trigger an alert.', 'passage', '[{"id":"A","text":"$66$","is_correct":false,"explanation":"Choice A ($66$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$67$","is_correct":false,"explanation":"Choice B ($67$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$68$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$69$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 68.20$. **Step 2:** Smallest integer: 69."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 350$ and is the smallest feasible reading?

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
VALUES ('a43194c4-b64b-4821-9a52-d5be6127e4a0', 'Which integer value of $x$ satisfies $6x + 10 > 426$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 426 but stay at most 442 to trigger an alert.', 'passage', '[{"id":"A","text":"$67$","is_correct":false,"explanation":"Too small: $6(67)+10=412$."},{"id":"B","text":"$68$","is_correct":false,"explanation":"Choice B ($68$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$69$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$70$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 69.33$. **Step 2:** Smallest integer: 70."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 426$ and is the smallest feasible reading?

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
VALUES ('44b30d39-02fb-414d-9c97-8e6f97e04c8a', 'Which integer value of $x$ satisfies $3x + 5 > 49$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 49 but stay at most 65 to trigger an alert.', 'passage', '[{"id":"A","text":"$13$","is_correct":false,"explanation":"Choice A ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$16$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 14.67$. **Step 2:** Smallest integer: 16."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 49$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 44$.
**Step 2:** $x > 14.67$.
**Step 3:** Among choices, $16$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $16$

**Distractor analysis:**
- **A** ($13$): Choice A ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($15$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff141059-6c8c-42b8-8d3b-eeb3f03f0e15', 'Which integer value of $x$ satisfies $4x + 6 > 70$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 70 but stay at most 86 to trigger an alert.', 'passage', '[{"id":"A","text":"$14$","is_correct":false,"explanation":"Choice A ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$16$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$17$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 16.00$. **Step 2:** Smallest integer: 17."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 70$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 64$.
**Step 2:** $x > 16.00$.
**Step 3:** Among choices, $17$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $17$

**Distractor analysis:**
- **A** ($14$): Choice A ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($16$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('30128d91-b30e-4f6b-aa67-2902fb014062', 'Which integer value of $x$ satisfies $5x + 7 > 93$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 93 but stay at most 109 to trigger an alert.', 'passage', '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Choice A ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$18$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 17.20$. **Step 2:** Smallest integer: 18."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 93$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 86$.
**Step 2:** $x > 17.20$.
**Step 3:** Among choices, $18$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $18$

**Distractor analysis:**
- **A** ($15$): Choice A ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($17$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb3eeca3-153b-4644-8c48-e66d4195fbd0', 'Which integer value of $x$ satisfies $6x + 8 > 118$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 118 but stay at most 134 to trigger an alert.', 'passage', '[{"id":"A","text":"$16$","is_correct":false,"explanation":"Choice A ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$19$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 18.33$. **Step 2:** Smallest integer: 19."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 118$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 110$.
**Step 2:** $x > 18.33$.
**Step 3:** Among choices, $19$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $19$

**Distractor analysis:**
- **A** ($16$): Choice A ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($17$): Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($18$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce57f9e4-1c08-4a36-b143-3a4cd6390a20', 'Which integer value of $x$ satisfies $3x + 9 > 65$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 65 but stay at most 81 to trigger an alert.', 'passage', '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Choice A ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$18$","is_correct":false,"explanation":"Choice B ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$20$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 18.67$. **Step 2:** Smallest integer: 20."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 65$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 56$.
**Step 2:** $x > 18.67$.
**Step 3:** Among choices, $20$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $20$

**Distractor analysis:**
- **A** ($17$): Choice A ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($18$): Choice B ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($19$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fab40022-c6df-4b2c-87e9-51a4d29ec6b1', 'Which integer value of $x$ satisfies $4x + 10 > 90$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 90 but stay at most 106 to trigger an alert.', 'passage', '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Choice A ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$19$","is_correct":false,"explanation":"Choice B ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$21$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 20.00$. **Step 2:** Smallest integer: 21."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 90$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 80$.
**Step 2:** $x > 20.00$.
**Step 3:** Among choices, $21$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $21$

**Distractor analysis:**
- **A** ($18$): Choice A ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($19$): Choice B ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($20$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d62600f9-7bc9-4f58-8006-111d4842d745', 'Which integer value of $x$ satisfies $5x + 5 > 111$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 111 but stay at most 127 to trigger an alert.', 'passage', '[{"id":"A","text":"$19$","is_correct":false,"explanation":"Choice A ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$20$","is_correct":false,"explanation":"Choice B ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$22$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 21.20$. **Step 2:** Smallest integer: 22."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 111$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 106$.
**Step 2:** $x > 21.20$.
**Step 3:** Among choices, $22$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $22$

**Distractor analysis:**
- **A** ($19$): Choice A ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($20$): Choice B ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($21$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
