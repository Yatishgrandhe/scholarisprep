BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d5c7c6fe-15a9-4d2e-a6d4-7f4bd0eb7a8e', 'What is $\sin\theta$ where $\theta$ is the angle between the ramp and the ground?', 'A ramp''s foot is 32 ft from a wall; the top is 39 ft high. The ramp length is 50 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">12 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">19 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">22 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{32}{50}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{39}{50}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=39$, hypotenuse $=50$. **Step 2:** $\\sin\\theta=\\frac{39}{50}≈0.780$."},{"id":"C","text":"$\\frac{50}{39}$","is_correct":false,"explanation":"Choice C ($\\frac{50}{39}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{32}{39}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=39$, hypotenuse $=50$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{39}{50}$.
**Step 3:** Pythagorean check: $32^2+39^2=50^2$.
**Step 4:** $\cos\theta=\frac{32}{50}$, not the answer.

**Step 3 — Answer B.** $\frac{39}{50}$

**Distractor analysis:**
- **A** ($\frac{32}{50}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{50}{39}$): Choice C ($\frac{50}{39}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{32}{39}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_1","slot":17,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f5a903f-afda-4947-bb85-630b1a706b63', 'What is the length of a semicircular arc of a round garden fountain? (Use $\pi \approx 3.14$.)', 'A circular track has radius 6 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 14">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 14</text>
</svg>', 'figure', '[{"id":"A","text":"$18.84$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈37.68$. **Step 2:** Half $≈18.84$ m."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$37.68$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(6)=37.68$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈18.84$ m.
**Step 3:** Do not confuse with area $πr^2≈113.04$.

**Step 3 — Answer A.** $18.84$

**Distractor analysis:**
- **B** ($113.04$): Area formula $\pi r^2$, not arc length.
- **C** ($37.68$): Full circumference, not half.
- **D** ($18.84$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_1","slot":18,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20e4ce7b-7903-4431-9240-d087fe32aed7', 'For what value of $k$ does $4(x-3)+2k = 14$ have solution $x=5$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=5$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$5$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-3)+2k = 14$ have solution $x=5$?

**Step 2 — Solve.** **Step 1:** Substitute $x=5$: $4(5-k)+2k=14$.
**Step 2:** Expand: $20-4k+2k=14$ → $20+-2k=14$.
**Step 3:** Isolate: $-2k=-6$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($5$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_1","slot":19,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4305095c-0580-4392-8a28-eae161161c48', 'Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?', '', NULL, '[{"id":"A","text":"$-294$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-301$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-297$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-59)=-297$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{69-51}{63-57}=3$.
**Step 2:** Point-slope: $f(-59)=3(-59-57)+(51)$.
**Step 3:** $f(-59)=-297$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-297$

**Distractor analysis:**
- **A** ($-294$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-301$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_1","slot":20,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cbc13e92-2ca5-4842-ae53-0077c0844d0d', 'If the tour bus continues at the same rate, what is $d$ when $t=46$?', 'A tour bus''s distance $d$ (miles) after $t$ hours is $d=5t+36$. At $t=38$, $d=226$.', 'passage', '[{"id":"A","text":"$261$","is_correct":false,"explanation":"Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$231$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=46$."},{"id":"C","text":"$266$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(46)+36$. **Step 2:** $d=266$."},{"id":"D","text":"$230$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=46$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $36$.
**Step 2:** $d=5(46)+36=266$.
**Step 3:** Cross-check via $(46-38)×5+226=266$.

**Step 3 — Answer C.** $266$

**Distractor analysis:**
- **A** ($261$): Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($231$): Adds slope once instead of evaluating at $t=46$.
- **D** ($230$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_1","slot":21,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('43b11a95-4006-4d1c-8e21-230adc5850e0', 'Solve for $x$: $4x + 5 = 29$', '', NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$5$","is_correct":false,"explanation":"Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 5. **Step 2:** Divide by 4."},{"id":"D","text":"$7$","is_correct":false,"explanation":"Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $4x + 5 = 29$

**Step 2 — Solve.** **Step 1:** $4x = 24$
**Step 2:** $x = 6$

**Step 3 — Answer C.** $6$

**Distractor analysis:**
- **A** ($4$): Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($5$): Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($7$): Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":0,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1d12ade-695f-45e9-b4cd-3139c711d6d1', 'Linear function $f$ models temperature. $f(33)=27$ and $f(39)=45$. What is $f(-35)$?', '', NULL, '[{"id":"A","text":"$-174$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-181$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-177$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-35)=-177$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(33)=27$ and $f(39)=45$. What is $f(-35)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{45-27}{39-33}=3$.
**Step 2:** Point-slope: $f(-35)=3(-35-33)+(27)$.
**Step 3:** $f(-35)=-177$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-177$

**Distractor analysis:**
- **A** ($-174$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-181$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":1,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('57bbfb5c-4647-4398-b4a6-2fabdd8c5c77', 'If the tour bus continues at the same rate, what is $d$ when $t=22$?', 'A tour bus''s distance $d$ (miles) after $t$ hours is $d=5t+12$. At $t=14$, $d=82$.', 'passage', '[{"id":"A","text":"$117$","is_correct":false,"explanation":"Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$87$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=22$."},{"id":"C","text":"$122$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(22)+12$. **Step 2:** $d=122$."},{"id":"D","text":"$110$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=22$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $12$.
**Step 2:** $d=5(22)+12=122$.
**Step 3:** Cross-check via $(22-14)×5+82=122$.

**Step 3 — Answer C.** $122$

**Distractor analysis:**
- **A** ($117$): Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($87$): Adds slope once instead of evaluating at $t=22$.
- **D** ($110$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":2,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fedff9d9-3800-41b4-a674-3c65089a098c', 'Given $x+y=61$ and $4x-y=32$, what is $x$?', 'At an event, 61 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=32$.', 'passage', '[{"id":"A","text":"$31$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=155$. **Step 2:** $x=31$."},{"id":"B","text":"$30$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$32$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=61$ and $4x-y=32$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=61+32$ → $5x=155$.
**Step 2:** $x=31$.
**Step 3:** Back-substitute: $y=30$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $31$

**Distractor analysis:**
- **B** ($30$): One less than the solution.
- **C** ($30$): Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($32$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":3,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0e39eb2c-d5fb-4ce4-8e13-882b2614cc5d', 'Which integer value of $x$ satisfies $3x + 7 > 153$ and is the smallest feasible reading?', 'A water level $R=ax+b$ must exceed 153 but stay at most 169 to trigger an alert.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48$","is_correct":false,"explanation":"Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$50$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 48.67$. **Step 2:** Smallest integer: 50."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 153$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 146$.
**Step 2:** $x > 48.67$.
**Step 3:** Among choices, $50$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $50$

**Distractor analysis:**
- **A** ($47$): Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48$): Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($49$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":4,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3275011b-3730-4a05-9137-beefa7cfbb9e', 'What is the average rate of change of $h$ from $t=37$ to $t=44$?', 'Projectile height $h(t)=4(t-40)^2+42$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(37)=78$, $h(44)=106$. **Step 2:** $\\frac{106-78}{44-37}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$106$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=37$ to $t=44$?

**Step 2 — Solve.** **Step 1:** $h(37)=4(37-40)^2+42=78$.
**Step 2:** $h(44)=4(44-40)^2+42=106$.
**Step 3:** Avg rate $=\frac{106-78}{44-37}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($106$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":5,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('37fe842a-d115-478d-89ff-88a6b9e9045b', 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)', '', NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-7)(x-8)=0$.
**Step 2:** Roots $x=7$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":6,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7d32ee4-9384-4456-b054-1d776b509497', 'Which expression is equivalent to $(5x+40)^2 - (5x-40)^2$?', '', NULL, '[{"id":"A","text":"$800x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+40$, $v=5x-40$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$160x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+1600$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+40)^2 - (5x-40)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+40$, $v=5x-40$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(80)=800x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $800x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($160x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+1600$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":7,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ec5b213d-ba80-429e-9086-a3079db5d5e7', 'How many parts did the first machine produce?', 'Two workers split tasks in ratio $4:9$ over 56 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$891$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$894$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$896$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×56×(4+9)=2912$. **Step 2:** A''s share $\\frac{4}{13}×2912=896$."},{"id":"D","text":"$2912$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×56×(4+9)=2912$ tasks.
**Step 2:** A''s fraction $\frac{4}{13}$.
**Step 3:** $\frac{4}{13}×2912=896$ tasks.

**Step 3 — Answer C.** $896$

**Distractor analysis:**
- **A** ($891$): Underestimates A''s share of the total.
- **B** ($894$): Close but ratio arithmetic is off.
- **D** ($2912$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":8,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b705f370-f6e1-44b6-9c3e-5d93fe23511a', 'If the original list price is $810$, what is the final list price after both changes?', 'A list price is marked up 35%, then discounted 20% on the new list price.', 'passage', '[{"id":"A","text":"$875$","is_correct":true,"explanation":"Correct (A). **Step 1:** $810×1.35=1094$. **Step 2:** $1094×0.8=875$."},{"id":"B","text":"$810$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1094$","is_correct":false,"explanation":"Choice C ($1094$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$931$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $810$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $810×(1+35/100)=1094$.
**Step 2:** Discount on new price: $1094×(1-20/100)=875$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $875$

**Distractor analysis:**
- **B** ($810$): Ignores both percent changes.
- **C** ($1094$): Choice C ($1094$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($931$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_easy","slot":9,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":9,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
