BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('49b4f23c-3ac5-457c-bdd4-d5f29d3d8a9e', 'Which integer value of $x$ satisfies $6x + 6 > 308$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 308 but stay at most 324 to trigger an alert.', 'passage', '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Choice A ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Choice B ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$51$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 50.33$. **Step 2:** Smallest integer: 51."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 308$ and is the smallest feasible reading?

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
VALUES ('c268d9a6-e9df-47e1-bc70-3ef22011bb8f', 'Which integer value of $x$ satisfies $3x + 7 > 159$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 159 but stay at most 175 to trigger an alert.', 'passage', '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Choice A ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$52$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 50.67$. **Step 2:** Smallest integer: 52."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 159$ and is the smallest feasible reading?

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
VALUES ('41247986-f6fd-4ce5-be20-8ff91de80d67', 'Which integer value of $x$ satisfies $4x + 8 > 216$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 216 but stay at most 232 to trigger an alert.', 'passage', '[{"id":"SPR","text":"53","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 216$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 208$.
**Step 2:** $x > 52.00$.
**Step 3:** Among choices, $53$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 53', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('70466ee6-7b45-42bd-ba86-de0431460cf7', 'Which integer value of $x$ satisfies $5x + 9 > 275$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 275 but stay at most 291 to trigger an alert.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52$","is_correct":false,"explanation":"Choice B ($52$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$54$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 53.20$. **Step 2:** Smallest integer: 54."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 275$ and is the smallest feasible reading?

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
VALUES ('1b86db27-79f3-4c4f-b222-7fa47fd69490', 'Which integer value of $x$ satisfies $6x + 10 > 336$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 336 but stay at most 352 to trigger an alert.', 'passage', '[{"id":"A","text":"$52$","is_correct":false,"explanation":"Too small: $6(52)+10=322$."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Choice B ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$55$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 54.33$. **Step 2:** Smallest integer: 55."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 336$ and is the smallest feasible reading?

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
VALUES ('d1e679d3-b888-4846-a217-647aaf8476bc', 'Which integer value of $x$ satisfies $3x + 5 > 169$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 169 but stay at most 185 to trigger an alert.', 'passage', '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$54$","is_correct":false,"explanation":"Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$56$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 54.67$. **Step 2:** Smallest integer: 56."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 169$ and is the smallest feasible reading?

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
VALUES ('b8c7531a-b401-432e-9203-9fc012d01f9e', 'Which integer value of $x$ satisfies $4x + 6 > 230$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 230 but stay at most 246 to trigger an alert.', 'passage', '[{"id":"SPR","text":"57","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 230$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 224$.
**Step 2:** $x > 56.00$.
**Step 3:** Among choices, $57$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 57', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9d06e0d6-1004-4011-a87d-7bf24aeda57e', 'Which integer value of $x$ satisfies $5x + 7 > 293$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 293 but stay at most 309 to trigger an alert.', 'passage', '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Choice A ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56$","is_correct":false,"explanation":"Choice B ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$58$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 57.20$. **Step 2:** Smallest integer: 58."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 293$ and is the smallest feasible reading?

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
VALUES ('cff845b1-de7b-4210-b507-aa4b747cbf40', 'Which integer value of $x$ satisfies $6x + 8 > 358$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 358 but stay at most 374 to trigger an alert.', 'passage', '[{"id":"A","text":"$56$","is_correct":false,"explanation":"Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$59$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 58.33$. **Step 2:** Smallest integer: 59."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 358$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 350$.
**Step 2:** $x > 58.33$.
**Step 3:** Among choices, $59$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $59$

**Distractor analysis:**
- **A** ($56$): Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($57$): Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($58$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ffdccc82-9951-442e-b5db-ea5b2ca64663', 'Which integer value of $x$ satisfies $3x + 9 > 185$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 185 but stay at most 201 to trigger an alert.', 'passage', '[{"id":"A","text":"$57$","is_correct":false,"explanation":"Choice A ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$58$","is_correct":false,"explanation":"Choice B ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$60$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 58.67$. **Step 2:** Smallest integer: 60."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 185$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 176$.
**Step 2:** $x > 58.67$.
**Step 3:** Among choices, $60$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $60$

**Distractor analysis:**
- **A** ($57$): Choice A ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($58$): Choice B ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($59$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2670f6ee-32b9-47f7-8ea2-6824856ae808', 'Which integer value of $x$ satisfies $4x + 10 > 250$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 250 but stay at most 266 to trigger an alert.', 'passage', '[{"id":"SPR","text":"61","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 250$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 240$.
**Step 2:** $x > 60.00$.
**Step 3:** Among choices, $61$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 61', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c232de07-255d-473c-bb97-ba8645142edc', 'Which integer value of $x$ satisfies $5x + 5 > 311$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 311 but stay at most 327 to trigger an alert.', 'passage', '[{"id":"A","text":"$59$","is_correct":false,"explanation":"Choice A ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60$","is_correct":false,"explanation":"Choice B ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$62$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 61.20$. **Step 2:** Smallest integer: 62."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 311$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 306$.
**Step 2:** $x > 61.20$.
**Step 3:** Among choices, $62$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $62$

**Distractor analysis:**
- **A** ($59$): Choice A ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60$): Choice B ($60$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($61$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
