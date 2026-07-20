BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6acd25c8-33ea-4df6-a118-62f29ce4e848', 'Which integer value of $x$ satisfies $3x + 9 > 137$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 137 but stay at most 153 to trigger an alert.', 'passage', '[{"id":"A","text":"$41$","is_correct":false,"explanation":"Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$42$","is_correct":false,"explanation":"Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$44$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 42.67$. **Step 2:** Smallest integer: 44."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 137$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 128$.
**Step 2:** $x > 42.67$.
**Step 3:** Among choices, $44$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $44$

**Distractor analysis:**
- **A** ($41$): Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($42$): Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($43$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('efd93c4f-e620-4c4f-8b5a-2e54f0232881', 'Which integer value of $x$ satisfies $4x + 10 > 186$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 186 but stay at most 202 to trigger an alert.', 'passage', '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Too small: $4(42)+10=178$."},{"id":"B","text":"$43$","is_correct":false,"explanation":"Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$45$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 44.00$. **Step 2:** Smallest integer: 45."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 186$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 176$.
**Step 2:** $x > 44.00$.
**Step 3:** Among choices, $45$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $45$

**Distractor analysis:**
- **A** ($42$): Too small: $4(42)+10=178$.
- **B** ($43$): Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($44$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b7d21b0d-a43e-47fb-8bab-8f2eebb9c406', 'Which integer value of $x$ satisfies $5x + 5 > 231$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 231 but stay at most 247 to trigger an alert.', 'passage', '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Choice A ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$44$","is_correct":false,"explanation":"Choice B ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$46$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 45.20$. **Step 2:** Smallest integer: 46."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 231$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 226$.
**Step 2:** $x > 45.20$.
**Step 3:** Among choices, $46$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $46$

**Distractor analysis:**
- **A** ($43$): Choice A ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($44$): Choice B ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($45$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3b755e53-454c-42ad-be37-abf6f01b298a', 'Which integer value of $x$ satisfies $6x + 6 > 284$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 284 but stay at most 300 to trigger an alert.', 'passage', '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Choice A ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$45$","is_correct":false,"explanation":"Choice B ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$47$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 46.33$. **Step 2:** Smallest integer: 47."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 284$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 278$.
**Step 2:** $x > 46.33$.
**Step 3:** Among choices, $47$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $47$

**Distractor analysis:**
- **A** ($44$): Choice A ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($45$): Choice B ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($46$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8e41e8fa-7192-40c2-be38-c84b65e0de45', 'Which integer value of $x$ satisfies $3x + 7 > 147$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 147 but stay at most 163 to trigger an alert.', 'passage', '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Choice A ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$46$","is_correct":false,"explanation":"Choice B ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$48$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 46.67$. **Step 2:** Smallest integer: 48."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 147$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 140$.
**Step 2:** $x > 46.67$.
**Step 3:** Among choices, $48$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $48$

**Distractor analysis:**
- **A** ($45$): Choice A ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($46$): Choice B ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($47$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9b3b3ebc-4d80-4673-bf71-99707a9a3b4a', 'Which integer value of $x$ satisfies $4x + 8 > 200$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 200 but stay at most 216 to trigger an alert.', 'passage', '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Choice A ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$47$","is_correct":false,"explanation":"Choice B ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$48$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$49$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 48.00$. **Step 2:** Smallest integer: 49."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 200$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 192$.
**Step 2:** $x > 48.00$.
**Step 3:** Among choices, $49$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $49$

**Distractor analysis:**
- **A** ($46$): Choice A ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($47$): Choice B ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($48$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0c03c318-fcf3-4d09-91dc-b58869e9bf27', 'Which integer value of $x$ satisfies $5x + 9 > 255$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 255 but stay at most 271 to trigger an alert.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48$","is_correct":false,"explanation":"Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$50$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 49.20$. **Step 2:** Smallest integer: 50."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 255$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 246$.
**Step 2:** $x > 49.20$.
**Step 3:** Among choices, $50$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $50$

**Distractor analysis:**
- **A** ($47$): Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48$): Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($49$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9ee3a82c-c865-4a59-95d2-7ed4efdaa80f', 'Which integer value of $x$ satisfies $6x + 10 > 312$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 312 but stay at most 328 to trigger an alert.', 'passage', '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Too small: $6(48)+10=298$."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Choice B ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$51$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 50.33$. **Step 2:** Smallest integer: 51."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 312$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 302$.
**Step 2:** $x > 50.33$.
**Step 3:** Among choices, $51$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $51$

**Distractor analysis:**
- **A** ($48$): Too small: $6(48)+10=298$.
- **B** ($49$): Choice B ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('29961cc5-b0be-4076-b915-3da6ad8fcbfb', 'Which integer value of $x$ satisfies $3x + 5 > 157$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 157 but stay at most 173 to trigger an alert.', 'passage', '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Choice A ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$52$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 50.67$. **Step 2:** Smallest integer: 52."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 157$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 152$.
**Step 2:** $x > 50.67$.
**Step 3:** Among choices, $52$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $52$

**Distractor analysis:**
- **A** ($49$): Choice A ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($50$): Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($51$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('81319925-a0d2-4a3d-8e65-c38d7bdfb3d3', 'Which integer value of $x$ satisfies $4x + 6 > 214$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 214 but stay at most 230 to trigger an alert.', 'passage', '[{"id":"A","text":"$50$","is_correct":false,"explanation":"Choice A ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$51$","is_correct":false,"explanation":"Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$53$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 52.00$. **Step 2:** Smallest integer: 53."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 214$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 208$.
**Step 2:** $x > 52.00$.
**Step 3:** Among choices, $53$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $53$

**Distractor analysis:**
- **A** ($50$): Choice A ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($51$): Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($52$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0cb96497-e831-4266-bcd3-90cf381a1a98', 'Which integer value of $x$ satisfies $5x + 7 > 273$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 273 but stay at most 289 to trigger an alert.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52$","is_correct":false,"explanation":"Choice B ($52$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$54$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 53.20$. **Step 2:** Smallest integer: 54."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 273$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 266$.
**Step 2:** $x > 53.20$.
**Step 3:** Among choices, $54$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $54$

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52$): Choice B ($52$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($53$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('48ea5a9b-9e94-4b53-8d49-737caa51ee24', 'Which integer value of $x$ satisfies $6x + 8 > 334$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 334 but stay at most 350 to trigger an alert.', 'passage', '[{"id":"A","text":"$52$","is_correct":false,"explanation":"Choice A ($52$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Choice B ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$55$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 54.33$. **Step 2:** Smallest integer: 55."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 334$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 326$.
**Step 2:** $x > 54.33$.
**Step 3:** Among choices, $55$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $55$

**Distractor analysis:**
- **A** ($52$): Choice A ($52$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($53$): Choice B ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($54$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('81aa8b4d-e345-4888-8b47-f57f7021666e', 'Which integer value of $x$ satisfies $3x + 9 > 173$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 173 but stay at most 189 to trigger an alert.', 'passage', '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$54$","is_correct":false,"explanation":"Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$56$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 54.67$. **Step 2:** Smallest integer: 56."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 173$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 164$.
**Step 2:** $x > 54.67$.
**Step 3:** Among choices, $56$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $56$

**Distractor analysis:**
- **A** ($53$): Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($54$): Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($55$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('35d08388-5393-46b5-bd4f-8a872aecd47b', 'Which integer value of $x$ satisfies $4x + 10 > 234$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 234 but stay at most 250 to trigger an alert.', 'passage', '[{"id":"A","text":"$54$","is_correct":false,"explanation":"Too small: $4(54)+10=226$."},{"id":"B","text":"$55$","is_correct":false,"explanation":"Choice B ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$57$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 56.00$. **Step 2:** Smallest integer: 57."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 234$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 224$.
**Step 2:** $x > 56.00$.
**Step 3:** Among choices, $57$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $57$

**Distractor analysis:**
- **A** ($54$): Too small: $4(54)+10=226$.
- **B** ($55$): Choice B ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2be26a78-f033-4940-bad5-713eaf03e296', 'Which integer value of $x$ satisfies $5x + 5 > 291$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 291 but stay at most 307 to trigger an alert.', 'passage', '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Choice A ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56$","is_correct":false,"explanation":"Choice B ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$58$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 57.20$. **Step 2:** Smallest integer: 58."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 291$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 286$.
**Step 2:** $x > 57.20$.
**Step 3:** Among choices, $58$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $58$

**Distractor analysis:**
- **A** ($55$): Choice A ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56$): Choice B ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($57$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cd7ca823-3eab-4da4-b598-993805bfefc7', 'Which integer value of $x$ satisfies $6x + 6 > 356$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 356 but stay at most 372 to trigger an alert.', 'passage', '[{"id":"A","text":"$56$","is_correct":false,"explanation":"Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$59$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 58.33$. **Step 2:** Smallest integer: 59."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 356$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 350$.
**Step 2:** $x > 58.33$.
**Step 3:** Among choices, $59$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $59$

**Distractor analysis:**
- **A** ($56$): Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($57$): Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($58$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('08bf48a9-0cbc-473c-bffd-0f7ed6a05cf5', 'Which integer value of $x$ satisfies $3x + 7 > 183$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 183 but stay at most 199 to trigger an alert.', 'passage', '[{"id":"A","text":"$57$","is_correct":false,"explanation":"Choice A ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$58$","is_correct":false,"explanation":"Choice B ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$60$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 58.67$. **Step 2:** Smallest integer: 60."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 183$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 176$.
**Step 2:** $x > 58.67$.
**Step 3:** Among choices, $60$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $60$

**Distractor analysis:**
- **A** ($57$): Choice A ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($58$): Choice B ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($59$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b3eaab47-ead4-4822-9b45-5a7f8b2f2ff3', 'Which integer value of $x$ satisfies $4x + 8 > 248$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 248 but stay at most 264 to trigger an alert.', 'passage', '[{"id":"A","text":"$58$","is_correct":false,"explanation":"Choice A ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$59$","is_correct":false,"explanation":"Choice B ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$60$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$61$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 60.00$. **Step 2:** Smallest integer: 61."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 248$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 240$.
**Step 2:** $x > 60.00$.
**Step 3:** Among choices, $61$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $61$

**Distractor analysis:**
- **A** ($58$): Choice A ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($59$): Choice B ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($60$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e14c66fd-20b9-410b-88b8-9eafa7479177', 'Which integer value of $x$ satisfies $5x + 9 > 315$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 315 but stay at most 331 to trigger an alert.', 'passage', '[{"id":"A","text":"$59$","is_correct":false,"explanation":"Choice A ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60$","is_correct":false,"explanation":"Choice B ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$62$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 61.20$. **Step 2:** Smallest integer: 62."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 315$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 306$.
**Step 2:** $x > 61.20$.
**Step 3:** Among choices, $62$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $62$

**Distractor analysis:**
- **A** ($59$): Choice A ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60$): Choice B ($60$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($61$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('20d0918d-cbe2-4d61-b063-6f45f3974959', 'Which integer value of $x$ satisfies $6x + 10 > 384$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 384 but stay at most 400 to trigger an alert.', 'passage', '[{"id":"A","text":"$60$","is_correct":false,"explanation":"Too small: $6(60)+10=370$."},{"id":"B","text":"$61$","is_correct":false,"explanation":"Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$63$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 62.33$. **Step 2:** Smallest integer: 63."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 384$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 374$.
**Step 2:** $x > 62.33$.
**Step 3:** Among choices, $63$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $63$

**Distractor analysis:**
- **A** ($60$): Too small: $6(60)+10=370$.
- **B** ($61$): Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('915dfe44-9375-40df-8bf3-b9d43a6ce5b4', 'What is the average rate of change of $h$ from $t=-1$ to $t=6$?', 'Projectile height $h(t)=2(t-2)^2+4$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(-1)=22$, $h(6)=36$. **Step 2:** $\\frac{36-22}{6--1}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$36$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=-1$ to $t=6$?

**Step 2 — Solve.** **Step 1:** $h(-1)=2(-1-2)^2+4=22$.
**Step 2:** $h(6)=2(6-2)^2+4=36$.
**Step 3:** Avg rate $=\frac{36-22}{6--1}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($36$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7d669a29-f905-4731-a730-85eac966e423', 'What is the average rate of change of $h$ from $t=0$ to $t=7$?', 'Projectile height $h(t)=3(t-3)^2+5$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(0)=32$, $h(7)=53$. **Step 2:** $\\frac{53-32}{7-0}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$53$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=0$ to $t=7$?

**Step 2 — Solve.** **Step 1:** $h(0)=3(0-3)^2+5=32$.
**Step 2:** $h(7)=3(7-3)^2+5=53$.
**Step 3:** Avg rate $=\frac{53-32}{7-0}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($53$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e9ee3e52-a36c-4c92-85b1-2e0389d1da59', 'What is the average rate of change of $h$ from $t=1$ to $t=8$?', 'Projectile height $h(t)=4(t-4)^2+6$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(1)=42$, $h(8)=70$. **Step 2:** $\\frac{70-42}{8-1}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$70$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=1$ to $t=8$?

**Step 2 — Solve.** **Step 1:** $h(1)=4(1-4)^2+6=42$.
**Step 2:** $h(8)=4(8-4)^2+6=70$.
**Step 3:** Avg rate $=\frac{70-42}{8-1}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($70$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8c774021-6940-4e19-9516-8a09d4a70550', 'What is the average rate of change of $h$ from $t=2$ to $t=9$?', 'Projectile height $h(t)=2(t-5)^2+7$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(2)=25$, $h(9)=39$. **Step 2:** $\\frac{39-25}{9-2}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$39$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=2$ to $t=9$?

**Step 2 — Solve.** **Step 1:** $h(2)=2(2-5)^2+7=25$.
**Step 2:** $h(9)=2(9-5)^2+7=39$.
**Step 3:** Avg rate $=\frac{39-25}{9-2}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($39$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('776197ff-fb7f-4e8e-a515-7cb32df2a8d5', 'What is the average rate of change of $h$ from $t=3$ to $t=10$?', 'Projectile height $h(t)=3(t-6)^2+8$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(3)=35$, $h(10)=56$. **Step 2:** $\\frac{56-35}{10-3}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$56$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=3$ to $t=10$?

**Step 2 — Solve.** **Step 1:** $h(3)=3(3-6)^2+8=35$.
**Step 2:** $h(10)=3(10-6)^2+8=56$.
**Step 3:** Avg rate $=\frac{56-35}{10-3}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($56$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('646e9218-d82d-47ca-b177-4659f1c7165f', 'What is the average rate of change of $h$ from $t=4$ to $t=11$?', 'Projectile height $h(t)=4(t-7)^2+9$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(4)=45$, $h(11)=73$. **Step 2:** $\\frac{73-45}{11-4}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$73$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=4$ to $t=11$?

**Step 2 — Solve.** **Step 1:** $h(4)=4(4-7)^2+9=45$.
**Step 2:** $h(11)=4(11-7)^2+9=73$.
**Step 3:** Avg rate $=\frac{73-45}{11-4}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($73$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7ff01dc9-cf29-43e4-a49e-b9d19e879336', 'What is the average rate of change of $h$ from $t=5$ to $t=12$?', 'Projectile height $h(t)=2(t-8)^2+10$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(5)=28$, $h(12)=42$. **Step 2:** $\\frac{42-28}{12-5}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$42$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=5$ to $t=12$?

**Step 2 — Solve.** **Step 1:** $h(5)=2(5-8)^2+10=28$.
**Step 2:** $h(12)=2(12-8)^2+10=42$.
**Step 3:** Avg rate $=\frac{42-28}{12-5}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($42$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ca409885-2b15-4649-87de-3423ec72ad18', 'What is the average rate of change of $h$ from $t=6$ to $t=13$?', 'Projectile height $h(t)=3(t-9)^2+11$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(6)=38$, $h(13)=59$. **Step 2:** $\\frac{59-38}{13-6}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$59$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=6$ to $t=13$?

**Step 2 — Solve.** **Step 1:** $h(6)=3(6-9)^2+11=38$.
**Step 2:** $h(13)=3(13-9)^2+11=59$.
**Step 3:** Avg rate $=\frac{59-38}{13-6}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($59$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8584b7cc-86ec-4094-ae49-f0b5130246f6', 'What is the average rate of change of $h$ from $t=7$ to $t=14$?', 'Projectile height $h(t)=4(t-10)^2+12$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(7)=48$, $h(14)=76$. **Step 2:** $\\frac{76-48}{14-7}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$76$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=7$ to $t=14$?

**Step 2 — Solve.** **Step 1:** $h(7)=4(7-10)^2+12=48$.
**Step 2:** $h(14)=4(14-10)^2+12=76$.
**Step 3:** Avg rate $=\frac{76-48}{14-7}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($76$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2d93d9f6-2e4c-4a3c-8683-33861b7d0fa7', 'What is the average rate of change of $h$ from $t=8$ to $t=15$?', 'Projectile height $h(t)=2(t-11)^2+13$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(8)=31$, $h(15)=45$. **Step 2:** $\\frac{45-31}{15-8}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=8$ to $t=15$?

**Step 2 — Solve.** **Step 1:** $h(8)=2(8-11)^2+13=31$.
**Step 2:** $h(15)=2(15-11)^2+13=45$.
**Step 3:** Avg rate $=\frac{45-31}{15-8}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($45$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('abfadf92-d0c7-49bb-813e-b4583d3a939a', 'What is the average rate of change of $h$ from $t=9$ to $t=16$?', 'Projectile height $h(t)=3(t-12)^2+14$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(9)=41$, $h(16)=62$. **Step 2:** $\\frac{62-41}{16-9}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$62$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=9$ to $t=16$?

**Step 2 — Solve.** **Step 1:** $h(9)=3(9-12)^2+14=41$.
**Step 2:** $h(16)=3(16-12)^2+14=62$.
**Step 3:** Avg rate $=\frac{62-41}{16-9}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($62$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('088ba7cc-82b5-40ae-b823-990717d3fcd2', 'What is the average rate of change of $h$ from $t=10$ to $t=17$?', 'Projectile height $h(t)=4(t-13)^2+15$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(10)=51$, $h(17)=79$. **Step 2:** $\\frac{79-51}{17-10}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$79$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=10$ to $t=17$?

**Step 2 — Solve.** **Step 1:** $h(10)=4(10-13)^2+15=51$.
**Step 2:** $h(17)=4(17-13)^2+15=79$.
**Step 3:** Avg rate $=\frac{79-51}{17-10}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($79$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0d1c23eb-2abd-4476-a540-4c3cd3f6b13f', 'What is the average rate of change of $h$ from $t=11$ to $t=18$?', 'Projectile height $h(t)=2(t-14)^2+16$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(11)=34$, $h(18)=48$. **Step 2:** $\\frac{48-34}{18-11}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$48$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=11$ to $t=18$?

**Step 2 — Solve.** **Step 1:** $h(11)=2(11-14)^2+16=34$.
**Step 2:** $h(18)=2(18-14)^2+16=48$.
**Step 3:** Avg rate $=\frac{48-34}{18-11}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($48$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bcd62a42-056c-44b1-803b-b49d04befc38', 'What is the average rate of change of $h$ from $t=12$ to $t=19$?', 'Projectile height $h(t)=3(t-15)^2+17$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(12)=44$, $h(19)=65$. **Step 2:** $\\frac{65-44}{19-12}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$65$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=12$ to $t=19$?

**Step 2 — Solve.** **Step 1:** $h(12)=3(12-15)^2+17=44$.
**Step 2:** $h(19)=3(19-15)^2+17=65$.
**Step 3:** Avg rate $=\frac{65-44}{19-12}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($65$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('50de483c-87ad-4a7b-b84f-da3b8096ab55', 'What is the average rate of change of $h$ from $t=13$ to $t=20$?', 'Projectile height $h(t)=4(t-16)^2+18$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(13)=54$, $h(20)=82$. **Step 2:** $\\frac{82-54}{20-13}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$82$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=13$ to $t=20$?

**Step 2 — Solve.** **Step 1:** $h(13)=4(13-16)^2+18=54$.
**Step 2:** $h(20)=4(20-16)^2+18=82$.
**Step 3:** Avg rate $=\frac{82-54}{20-13}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($82$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('090b356d-d7fd-40bd-880b-aba412f317c2', 'What is the average rate of change of $h$ from $t=14$ to $t=21$?', 'Projectile height $h(t)=2(t-17)^2+19$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(14)=37$, $h(21)=51$. **Step 2:** $\\frac{51-37}{21-14}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$51$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=14$ to $t=21$?

**Step 2 — Solve.** **Step 1:** $h(14)=2(14-17)^2+19=37$.
**Step 2:** $h(21)=2(21-17)^2+19=51$.
**Step 3:** Avg rate $=\frac{51-37}{21-14}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($51$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e0b9d49d-e967-47fe-bc30-56b9eca18b6a', 'What is the average rate of change of $h$ from $t=15$ to $t=22$?', 'Projectile height $h(t)=3(t-18)^2+20$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(15)=47$, $h(22)=68$. **Step 2:** $\\frac{68-47}{22-15}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$68$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=15$ to $t=22$?

**Step 2 — Solve.** **Step 1:** $h(15)=3(15-18)^2+20=47$.
**Step 2:** $h(22)=3(22-18)^2+20=68$.
**Step 3:** Avg rate $=\frac{68-47}{22-15}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($68$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fd6e2365-2733-4a68-9d1c-35a5356e83e8', 'What is the average rate of change of $h$ from $t=16$ to $t=23$?', 'Projectile height $h(t)=4(t-19)^2+21$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(16)=57$, $h(23)=85$. **Step 2:** $\\frac{85-57}{23-16}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$85$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=16$ to $t=23$?

**Step 2 — Solve.** **Step 1:** $h(16)=4(16-19)^2+21=57$.
**Step 2:** $h(23)=4(23-19)^2+21=85$.
**Step 3:** Avg rate $=\frac{85-57}{23-16}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($85$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('33be02f1-37a0-455f-bfce-bdf6d3b12aaa', 'What is the average rate of change of $h$ from $t=17$ to $t=24$?', 'Projectile height $h(t)=2(t-20)^2+22$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(17)=40$, $h(24)=54$. **Step 2:** $\\frac{54-40}{24-17}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$54$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=17$ to $t=24$?

**Step 2 — Solve.** **Step 1:** $h(17)=2(17-20)^2+22=40$.
**Step 2:** $h(24)=2(24-20)^2+22=54$.
**Step 3:** Avg rate $=\frac{54-40}{24-17}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($54$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('88d3f1bb-51a8-45f4-b2ab-f5dc2440a359', 'What is the average rate of change of $h$ from $t=18$ to $t=25$?', 'Projectile height $h(t)=3(t-21)^2+23$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(18)=50$, $h(25)=71$. **Step 2:** $\\frac{71-50}{25-18}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$71$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=18$ to $t=25$?

**Step 2 — Solve.** **Step 1:** $h(18)=3(18-21)^2+23=50$.
**Step 2:** $h(25)=3(25-21)^2+23=71$.
**Step 3:** Avg rate $=\frac{71-50}{25-18}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($71$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
