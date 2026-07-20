BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('25ac06d0-5809-473f-816f-b0cad9967925', 'Which integer value of $x$ satisfies $6x + 6 > 212$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 212 but stay at most 228 to trigger an alert.', 'passage', '[{"id":"A","text":"$32$","is_correct":false,"explanation":"Choice A ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Choice B ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$35$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 34.33$. **Step 2:** Smallest integer: 35."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 212$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 206$.
**Step 2:** $x > 34.33$.
**Step 3:** Among choices, $35$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $35$

**Distractor analysis:**
- **A** ($32$): Choice A ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($33$): Choice B ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($34$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60121287-9949-4985-97bc-6bf9af6cfd4d', 'Which integer value of $x$ satisfies $3x + 7 > 111$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 111 but stay at most 127 to trigger an alert.', 'passage', '[{"id":"A","text":"$33$","is_correct":false,"explanation":"Choice A ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$34$","is_correct":false,"explanation":"Choice B ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$36$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 34.67$. **Step 2:** Smallest integer: 36."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 111$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 104$.
**Step 2:** $x > 34.67$.
**Step 3:** Among choices, $36$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $36$

**Distractor analysis:**
- **A** ($33$): Choice A ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($34$): Choice B ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($35$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a9049b31-1aca-4c7d-b06f-2dc239bff65c', 'Which integer value of $x$ satisfies $4x + 8 > 152$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 152 but stay at most 168 to trigger an alert.', 'passage', '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Choice A ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$35$","is_correct":false,"explanation":"Choice B ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$37$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 36.00$. **Step 2:** Smallest integer: 37."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 152$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 144$.
**Step 2:** $x > 36.00$.
**Step 3:** Among choices, $37$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $37$

**Distractor analysis:**
- **A** ($34$): Choice A ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($35$): Choice B ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($36$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f997eeb9-fb21-430c-9d10-00d1c6c78378', 'Which integer value of $x$ satisfies $5x + 9 > 195$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 195 but stay at most 211 to trigger an alert.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$36$","is_correct":false,"explanation":"Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$38$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 37.20$. **Step 2:** Smallest integer: 38."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 195$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 186$.
**Step 2:** $x > 37.20$.
**Step 3:** Among choices, $38$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $38$

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($36$): Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($37$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7b813b2e-e4bb-490c-9848-cd5f95408193', 'Which integer value of $x$ satisfies $6x + 10 > 240$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 240 but stay at most 256 to trigger an alert.', 'passage', '[{"id":"A","text":"$36$","is_correct":false,"explanation":"Too small: $6(36)+10=226$."},{"id":"B","text":"$37$","is_correct":false,"explanation":"Choice B ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$39$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 38.33$. **Step 2:** Smallest integer: 39."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 240$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 230$.
**Step 2:** $x > 38.33$.
**Step 3:** Among choices, $39$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $39$

**Distractor analysis:**
- **A** ($36$): Too small: $6(36)+10=226$.
- **B** ($37$): Choice B ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($38$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d21586af-5c88-4025-a06b-7a6e23098341', 'Which integer value of $x$ satisfies $3x + 5 > 121$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 121 but stay at most 137 to trigger an alert.', 'passage', '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Choice A ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$38$","is_correct":false,"explanation":"Choice B ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$40$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 38.67$. **Step 2:** Smallest integer: 40."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 121$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 116$.
**Step 2:** $x > 38.67$.
**Step 3:** Among choices, $40$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $40$

**Distractor analysis:**
- **A** ($37$): Choice A ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($38$): Choice B ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($39$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c2c80d2a-f383-4112-abf2-e053da7aa01a', 'What is the average rate of change of $h$ from $t=-1$ to $t=6$?', 'Projectile height $h(t)=2(t-2)^2+4$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(-1)=22$, $h(6)=36$. **Step 2:** $\\frac{36-22}{6--1}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$36$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=-1$ to $t=6$?

**Step 2 — Solve.** **Step 1:** $h(-1)=2(-1-2)^2+4=22$.
**Step 2:** $h(6)=2(6-2)^2+4=36$.
**Step 3:** Avg rate $=\frac{36-22}{6--1}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($36$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a79c74b-b7c1-457b-8ba8-a3031493d878', 'What is the average rate of change of $h$ from $t=0$ to $t=7$? Enter your answer as a number.', 'Projectile height $h(t)=3(t-3)^2+5$ (feet, $t$ in seconds).', 'passage', '[{"id":"SPR","text":"3","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=0$ to $t=7$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $h(0)=3(0-3)^2+5=32$.
**Step 2:** $h(7)=3(7-3)^2+5=53$.
**Step 3:** Avg rate $=\frac{53-32}{7-0}=3$ ft/s.

**Step 3 — Answer SPR.** 3', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('482fd3f2-fc5b-4cdc-b803-b74faf8959aa', 'What is the average rate of change of $h$ from $t=1$ to $t=8$?', 'Projectile height $h(t)=4(t-4)^2+6$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(1)=42$, $h(8)=70$. **Step 2:** $\\frac{70-42}{8-1}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$70$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=1$ to $t=8$?

**Step 2 — Solve.** **Step 1:** $h(1)=4(1-4)^2+6=42$.
**Step 2:** $h(8)=4(8-4)^2+6=70$.
**Step 3:** Avg rate $=\frac{70-42}{8-1}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($70$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ea85110-ba1d-43d2-b069-9ea3b345a52b', 'What is the average rate of change of $h$ from $t=2$ to $t=9$?', 'Projectile height $h(t)=2(t-5)^2+7$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(2)=25$, $h(9)=39$. **Step 2:** $\\frac{39-25}{9-2}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$39$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=2$ to $t=9$?

**Step 2 — Solve.** **Step 1:** $h(2)=2(2-5)^2+7=25$.
**Step 2:** $h(9)=2(9-5)^2+7=39$.
**Step 3:** Avg rate $=\frac{39-25}{9-2}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($39$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('84033f40-56b3-4cf5-a7d6-b3c650ddf462', 'What is the average rate of change of $h$ from $t=3$ to $t=10$?', 'Projectile height $h(t)=3(t-6)^2+8$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(3)=35$, $h(10)=56$. **Step 2:** $\\frac{56-35}{10-3}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$56$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=3$ to $t=10$?

**Step 2 — Solve.** **Step 1:** $h(3)=3(3-6)^2+8=35$.
**Step 2:** $h(10)=3(10-6)^2+8=56$.
**Step 3:** Avg rate $=\frac{56-35}{10-3}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($56$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fbd41a31-521f-42c8-be8f-a4e14afb53a5', 'What is the average rate of change of $h$ from $t=4$ to $t=11$? Enter your answer as a number.', 'Projectile height $h(t)=4(t-7)^2+9$ (feet, $t$ in seconds).', 'passage', '[{"id":"SPR","text":"4","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=4$ to $t=11$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $h(4)=4(4-7)^2+9=45$.
**Step 2:** $h(11)=4(11-7)^2+9=73$.
**Step 3:** Avg rate $=\frac{73-45}{11-4}=4$ ft/s.

**Step 3 — Answer SPR.** 4', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
