BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9afa39c1-7e06-4d40-9863-31a975850dfe', 'Which integer value of $x$ satisfies $6x + 6 > 326$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 326 but stay at most 342 to trigger an alert.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52$","is_correct":false,"explanation":"Choice B ($52$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$54$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 53.33$. **Step 2:** Smallest integer: 54."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 326$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 320$.
**Step 2:** $x > 53.33$.
**Step 3:** Among choices, $54$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $54$

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52$): Choice B ($52$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($53$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe80e45c-86d1-4abf-9c3f-d8244085d573', 'Which integer value of $x$ satisfies $3x + 7 > 168$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 168 but stay at most 184 to trigger an alert.', 'passage', '[{"id":"A","text":"$52$","is_correct":false,"explanation":"Choice A ($52$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Choice B ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$55$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 53.67$. **Step 2:** Smallest integer: 55."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 168$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 161$.
**Step 2:** $x > 53.67$.
**Step 3:** Among choices, $55$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $55$

**Distractor analysis:**
- **A** ($52$): Choice A ($52$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($53$): Choice B ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($54$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14b9cf4d-5659-41cb-918e-19ff0e21b3cc', 'Which integer value of $x$ satisfies $4x + 8 > 228$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 228 but stay at most 244 to trigger an alert.', 'passage', '[{"id":"SPR","text":"56","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 228$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 220$.
**Step 2:** $x > 55.00$.
**Step 3:** Among choices, $56$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 56', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f3a3bf95-30d9-4d65-9f88-b55767e45fe3', 'Which integer value of $x$ satisfies $5x + 9 > 290$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 290 but stay at most 306 to trigger an alert.', 'passage', '[{"id":"A","text":"$54$","is_correct":false,"explanation":"Choice A ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$55$","is_correct":false,"explanation":"Choice B ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$57$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 56.20$. **Step 2:** Smallest integer: 57."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 290$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 281$.
**Step 2:** $x > 56.20$.
**Step 3:** Among choices, $57$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $57$

**Distractor analysis:**
- **A** ($54$): Choice A ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($55$): Choice B ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('699862dd-1609-4843-8528-6f436e84d7e0', 'Which integer value of $x$ satisfies $6x + 10 > 354$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 354 but stay at most 370 to trigger an alert.', 'passage', '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Too small: $6(55)+10=340$."},{"id":"B","text":"$56$","is_correct":false,"explanation":"Choice B ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$58$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 57.33$. **Step 2:** Smallest integer: 58."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 354$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 344$.
**Step 2:** $x > 57.33$.
**Step 3:** Among choices, $58$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $58$

**Distractor analysis:**
- **A** ($55$): Too small: $6(55)+10=340$.
- **B** ($56$): Choice B ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($57$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d25ca583-a27a-40ad-bb53-41e77d3f8c9c', 'Which integer value of $x$ satisfies $3x + 5 > 178$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 178 but stay at most 194 to trigger an alert.', 'passage', '[{"id":"A","text":"$56$","is_correct":false,"explanation":"Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$59$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 57.67$. **Step 2:** Smallest integer: 59."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 178$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 173$.
**Step 2:** $x > 57.67$.
**Step 3:** Among choices, $59$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $59$

**Distractor analysis:**
- **A** ($56$): Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($57$): Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($58$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('85eb218b-1f7a-4927-a502-48531fb97931', 'Which integer value of $x$ satisfies $4x + 6 > 242$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 242 but stay at most 258 to trigger an alert.', 'passage', '[{"id":"SPR","text":"60","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 242$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 236$.
**Step 2:** $x > 59.00$.
**Step 3:** Among choices, $60$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 60', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('925c447b-f669-4a5c-b172-a69b25509da0', 'Which integer value of $x$ satisfies $5x + 7 > 308$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 308 but stay at most 324 to trigger an alert.', 'passage', '[{"id":"A","text":"$58$","is_correct":false,"explanation":"Choice A ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$59$","is_correct":false,"explanation":"Choice B ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$60$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$61$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 60.20$. **Step 2:** Smallest integer: 61."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 308$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 301$.
**Step 2:** $x > 60.20$.
**Step 3:** Among choices, $61$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $61$

**Distractor analysis:**
- **A** ($58$): Choice A ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($59$): Choice B ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($60$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c1b7633d-399d-4bf0-b5c2-27614c96277e', 'Which integer value of $x$ satisfies $6x + 8 > 376$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 376 but stay at most 392 to trigger an alert.', 'passage', '[{"id":"A","text":"$59$","is_correct":false,"explanation":"Choice A ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60$","is_correct":false,"explanation":"Choice B ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$62$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 61.33$. **Step 2:** Smallest integer: 62."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 376$ and is the smallest feasible reading?

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
VALUES ('5e25f281-9863-4a73-ae9e-f28469931850', 'Which integer value of $x$ satisfies $3x + 9 > 194$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 194 but stay at most 210 to trigger an alert.', 'passage', '[{"id":"A","text":"$60$","is_correct":false,"explanation":"Choice A ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$61$","is_correct":false,"explanation":"Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$63$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 61.67$. **Step 2:** Smallest integer: 63."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 194$ and is the smallest feasible reading?

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
VALUES ('0d51878d-6ae2-4ea0-8c97-85653c79568d', 'Which integer value of $x$ satisfies $4x + 10 > 262$ and is the smallest feasible reading? Enter your answer as a number.', 'A sensor reading $R=ax+b$ must exceed 262 but stay at most 278 to trigger an alert.', 'passage', '[{"id":"SPR","text":"64","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 262$ and is the smallest feasible reading? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x > 252$.
**Step 2:** $x > 63.00$.
**Step 3:** Among choices, $64$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer SPR.** 64', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db860751-c973-4273-b27e-30cf197c37b1', 'Which integer value of $x$ satisfies $5x + 5 > 326$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 326 but stay at most 342 to trigger an alert.', 'passage', '[{"id":"A","text":"$62$","is_correct":false,"explanation":"Choice A ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Choice B ($63$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$64$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$65$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 64.20$. **Step 2:** Smallest integer: 65."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 326$ and is the smallest feasible reading?

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
