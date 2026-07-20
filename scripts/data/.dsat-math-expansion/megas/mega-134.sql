BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bcef310b-fec3-485b-8781-981214c3a53d', 'Which integer value of $x$ satisfies $6x + 6 > 140$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 140 but stay at most 156 to trigger an alert.', 'passage', '[{"id":"A","text":"$20$","is_correct":false,"explanation":"Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$23$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 22.33$. **Step 2:** Smallest integer: 23."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 140$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 134$.
**Step 2:** $x > 22.33$.
**Step 3:** Among choices, $23$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $23$

**Distractor analysis:**
- **A** ($20$): Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($21$): Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($22$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cf6cce69-9a30-4794-bae4-6b1955fbdc5b', 'Which integer value of $x$ satisfies $3x + 7 > 75$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 75 but stay at most 91 to trigger an alert.', 'passage', '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$22$","is_correct":false,"explanation":"Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$24$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 22.67$. **Step 2:** Smallest integer: 24."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 75$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 68$.
**Step 2:** $x > 22.67$.
**Step 3:** Among choices, $24$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $24$

**Distractor analysis:**
- **A** ($21$): Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($22$): Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($23$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('295cba2b-ab7b-431f-85c4-d85f420df5da', 'Which integer value of $x$ satisfies $4x + 8 > 104$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 104 but stay at most 120 to trigger an alert.', 'passage', '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Choice A ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$23$","is_correct":false,"explanation":"Choice B ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$25$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 24.00$. **Step 2:** Smallest integer: 25."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 104$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 96$.
**Step 2:** $x > 24.00$.
**Step 3:** Among choices, $25$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $25$

**Distractor analysis:**
- **A** ($22$): Choice A ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($23$): Choice B ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($24$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d864588-e1a1-4243-af21-5357a590a1c4', 'Which integer value of $x$ satisfies $5x + 9 > 135$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 135 but stay at most 151 to trigger an alert.', 'passage', '[{"id":"A","text":"$23$","is_correct":false,"explanation":"Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$24$","is_correct":false,"explanation":"Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$26$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 25.20$. **Step 2:** Smallest integer: 26."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 135$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 126$.
**Step 2:** $x > 25.20$.
**Step 3:** Among choices, $26$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $26$

**Distractor analysis:**
- **A** ($23$): Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($24$): Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($25$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3b8ba917-0279-420c-9782-db656c808a8b', 'Which integer value of $x$ satisfies $6x + 10 > 168$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 168 but stay at most 184 to trigger an alert.', 'passage', '[{"id":"A","text":"$24$","is_correct":false,"explanation":"Too small: $6(24)+10=154$."},{"id":"B","text":"$25$","is_correct":false,"explanation":"Choice B ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$27$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 26.33$. **Step 2:** Smallest integer: 27."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 168$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 158$.
**Step 2:** $x > 26.33$.
**Step 3:** Among choices, $27$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $27$

**Distractor analysis:**
- **A** ($24$): Too small: $6(24)+10=154$.
- **B** ($25$): Choice B ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($26$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3306cd7-1e50-4e1d-be41-3fa788282cc7', 'Which integer value of $x$ satisfies $3x + 5 > 85$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 85 but stay at most 101 to trigger an alert.', 'passage', '[{"id":"A","text":"$25$","is_correct":false,"explanation":"Choice A ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$26$","is_correct":false,"explanation":"Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$28$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 26.67$. **Step 2:** Smallest integer: 28."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 85$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 80$.
**Step 2:** $x > 26.67$.
**Step 3:** Among choices, $28$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $28$

**Distractor analysis:**
- **A** ($25$): Choice A ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($26$): Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($27$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('84ca775d-03a6-4e4f-905b-5df43bde5b88', 'Which integer value of $x$ satisfies $4x + 6 > 118$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 118 but stay at most 134 to trigger an alert.', 'passage', '[{"id":"A","text":"$26$","is_correct":false,"explanation":"Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$29$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 28.00$. **Step 2:** Smallest integer: 29."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 118$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 112$.
**Step 2:** $x > 28.00$.
**Step 3:** Among choices, $29$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $29$

**Distractor analysis:**
- **A** ($26$): Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($27$): Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($28$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ae7bec92-dfaa-4896-b03a-6a43c05d6630', 'Which integer value of $x$ satisfies $5x + 7 > 153$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 153 but stay at most 169 to trigger an alert.', 'passage', '[{"id":"A","text":"$27$","is_correct":false,"explanation":"Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$28$","is_correct":false,"explanation":"Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$30$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 29.20$. **Step 2:** Smallest integer: 30."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 153$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 146$.
**Step 2:** $x > 29.20$.
**Step 3:** Among choices, $30$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $30$

**Distractor analysis:**
- **A** ($27$): Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($28$): Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($29$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1aca952e-5f7f-4f91-9d9f-b73d66f997e2', 'Which integer value of $x$ satisfies $6x + 8 > 190$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 190 but stay at most 206 to trigger an alert.', 'passage', '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Choice A ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$31$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 30.33$. **Step 2:** Smallest integer: 31."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 190$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 182$.
**Step 2:** $x > 30.33$.
**Step 3:** Among choices, $31$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $31$

**Distractor analysis:**
- **A** ($28$): Choice A ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($29$): Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($30$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d4975bb7-59c9-4016-8357-3942e527f6e0', 'Which integer value of $x$ satisfies $3x + 9 > 101$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 101 but stay at most 117 to trigger an alert.', 'passage', '[{"id":"A","text":"$29$","is_correct":false,"explanation":"Choice A ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$30$","is_correct":false,"explanation":"Choice B ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$32$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 30.67$. **Step 2:** Smallest integer: 32."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 101$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 92$.
**Step 2:** $x > 30.67$.
**Step 3:** Among choices, $32$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $32$

**Distractor analysis:**
- **A** ($29$): Choice A ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($30$): Choice B ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($31$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b1d24b2c-1ee0-4dcf-9087-290d79e9c17d', 'Which integer value of $x$ satisfies $4x + 10 > 138$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 138 but stay at most 154 to trigger an alert.', 'passage', '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Too small: $4(30)+10=130$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"Choice B ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$32$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$33$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 32.00$. **Step 2:** Smallest integer: 33."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 138$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 128$.
**Step 2:** $x > 32.00$.
**Step 3:** Among choices, $33$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $33$

**Distractor analysis:**
- **A** ($30$): Too small: $4(30)+10=130$.
- **B** ($31$): Choice B ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($32$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e3c5dc89-5eb2-4591-a854-f3b0ac7555da', 'Which integer value of $x$ satisfies $5x + 5 > 171$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 171 but stay at most 187 to trigger an alert.', 'passage', '[{"id":"A","text":"$31$","is_correct":false,"explanation":"Choice A ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$32$","is_correct":false,"explanation":"Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$34$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 33.20$. **Step 2:** Smallest integer: 34."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 171$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 166$.
**Step 2:** $x > 33.20$.
**Step 3:** Among choices, $34$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $34$

**Distractor analysis:**
- **A** ($31$): Choice A ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($32$): Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($33$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
