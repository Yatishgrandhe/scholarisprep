BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a251910e-ed67-4266-a15b-65d501db5bef', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 118° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">52°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">68°</text>
</svg>', 'figure', '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$62°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 62°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 60 = 62°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 60° + 62° = 180°.

**Step 3 — Answer D.** $62°$

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($72°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_easy","slot":16,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4748d32b-450b-49e4-939c-6385524833f7', 'What is $\sin\theta$ where $\theta$ is the angle between the guy wire and the ground?', 'A guy wire''s foot is 48 ft from a wall; the top is 55 ft high. The guy wire length is 73 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">8 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">15 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">17 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{48}{73}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{55}{73}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=55$, hypotenuse $=73$. **Step 2:** $\\sin\\theta=\\frac{55}{73}≈0.753$."},{"id":"C","text":"$\\frac{73}{55}$","is_correct":false,"explanation":"Choice C ($\\frac{73}{55}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{48}{55}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=55$, hypotenuse $=73$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{55}{73}$.
**Step 3:** Pythagorean check: $48^2+55^2=73^2$.
**Step 4:** $\cos\theta=\frac{48}{73}$, not the answer.

**Step 3 — Answer B.** $\frac{55}{73}$

**Distractor analysis:**
- **A** ($\frac{48}{73}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{73}{55}$): Choice C ($\frac{73}{55}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{48}{55}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_easy","slot":17,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bf0d4aeb-b190-4ea7-b6bc-98b0f46e3730', 'How far is half the way around a circular pizza? (Use $\pi \approx 3.14$.)', 'A circular track has radius 13 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$40.82$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈81.64$. **Step 2:** Half $≈40.82$ m."},{"id":"B","text":"$530.66$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$81.64$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$40.82$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(13)=81.64$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈40.82$ m.
**Step 3:** Do not confuse with area $πr^2≈530.66$.

**Step 3 — Answer A.** $40.82$

**Distractor analysis:**
- **B** ($530.66$): Area formula $\pi r^2$, not arc length.
- **C** ($81.64$): Full circumference, not half.
- **D** ($40.82$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_easy","slot":18,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('228a79ab-409f-4d97-80ba-5e2205f64530', 'For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=44$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$44$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?

**Step 2 — Solve.** **Step 1:** Substitute $x=44$: $8(44-k)+2k=316$.
**Step 2:** Expand: $352-8k+2k=316$ → $352+-6k=316$.
**Step 3:** Isolate: $-6k=-36$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($44$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_easy","slot":19,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d8bb7fcc-ec20-476e-8e1b-b18314dc681d', 'Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?', '', NULL, '[{"id":"A","text":"$-542$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-551$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-547$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-61)=-547$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{83-53}{65-59}=5$.
**Step 2:** Point-slope: $f(-61)=5(-61-59)+(53)$.
**Step 3:** $f(-61)=-547$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-547$

**Distractor analysis:**
- **A** ($-542$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-551$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_easy","slot":20,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b87c2652-c341-4f92-9eaf-b564941ca133', 'If the passenger ferry continues at the same rate, what is $d$ when $t=62$?', 'A passenger ferry''s distance $d$ (miles) after $t$ hours is $d=5t+52$. At $t=54$, $d=322$.', 'passage', '[{"id":"A","text":"$357$","is_correct":false,"explanation":"Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$327$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=62$."},{"id":"C","text":"$362$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(62)+52$. **Step 2:** $d=362$."},{"id":"D","text":"$310$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=62$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $52$.
**Step 2:** $d=5(62)+52=362$.
**Step 3:** Cross-check via $(62-54)×5+322=362$.

**Step 3 — Answer C.** $362$

**Distractor analysis:**
- **A** ($357$): Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($327$): Adds slope once instead of evaluating at $t=62$.
- **D** ($310$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_easy","slot":21,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c3dbebc0-642d-4f3c-b91e-584dfe0402d5', 'Solve for $x$: $2x + 4 = 18$', '', NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$6$","is_correct":false,"explanation":"Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 4. **Step 2:** Divide by 2."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $2x + 4 = 18$

**Step 2 — Solve.** **Step 1:** $2x = 14$
**Step 2:** $x = 7$

**Step 3 — Answer C.** $7$

**Distractor analysis:**
- **A** ($5$): Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($6$): Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($8$): Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":0,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('456c5a88-a0d9-4606-8357-b3413c636a24', 'Linear function $f$ models temperature. $f(35)=29$ and $f(41)=59$. What is $f(-37)$?', '', NULL, '[{"id":"A","text":"$-326$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-335$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-331$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-37)=-331$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(35)=29$ and $f(41)=59$. What is $f(-37)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{59-29}{41-35}=5$.
**Step 2:** Point-slope: $f(-37)=5(-37-35)+(29)$.
**Step 3:** $f(-37)=-331$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-331$

**Distractor analysis:**
- **A** ($-326$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-335$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":1,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5106c892-26a6-4ebf-895f-6ef3f1407a69', 'If the passenger ferry continues at the same rate, what is $d$ when $t=38$?', 'A passenger ferry''s distance $d$ (miles) after $t$ hours is $d=5t+28$. At $t=30$, $d=178$.', 'passage', '[{"id":"A","text":"$213$","is_correct":false,"explanation":"Choice A ($213$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$183$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=38$."},{"id":"C","text":"$218$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(38)+28$. **Step 2:** $d=218$."},{"id":"D","text":"$190$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=38$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $28$.
**Step 2:** $d=5(38)+28=218$.
**Step 3:** Cross-check via $(38-30)×5+178=218$.

**Step 3 — Answer C.** $218$

**Distractor analysis:**
- **A** ($213$): Choice A ($213$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($183$): Adds slope once instead of evaluating at $t=38$.
- **D** ($190$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":2,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d70153a-be85-4c93-954f-e37f8baf03fa', 'Given $x+y=21$ and $3x-y=15$, what is $x$?', 'At an event, 21 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=15$.', 'passage', '[{"id":"A","text":"$12$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=48$. **Step 2:** $x=12$."},{"id":"B","text":"$11$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$13$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=21$ and $3x-y=15$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=21+15$ → $4x=48$.
**Step 2:** $x=12$.
**Step 3:** Back-substitute: $y=9$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $12$

**Distractor analysis:**
- **B** ($11$): One less than the solution.
- **C** ($9$): Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":3,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcfb6125-582a-4c60-a754-2523595b4ba5', 'Which integer value of $x$ satisfies $6x + 10 > 192$ and is the smallest feasible reading?', 'A reservoir depth $R=ax+b$ must exceed 192 but stay at most 208 to trigger an alert.', 'passage', '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Too small: $6(28)+10=178$."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$31$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 30.33$. **Step 2:** Smallest integer: 31."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 192$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 182$.
**Step 2:** $x > 30.33$.
**Step 3:** Among choices, $31$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $31$

**Distractor analysis:**
- **A** ($28$): Too small: $6(28)+10=178$.
- **B** ($29$): Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($30$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":4,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('026ec9de-f4a5-48b6-98fc-fce69156038c', 'What is the average rate of change of $h$ from $t=39$ to $t=46$?', 'Projectile height $h(t)=3(t-42)^2+44$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(39)=71$, $h(46)=92$. **Step 2:** $\\frac{92-71}{46-39}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$92$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=39$ to $t=46$?

**Step 2 — Solve.** **Step 1:** $h(39)=3(39-42)^2+44=71$.
**Step 2:** $h(46)=3(46-42)^2+44=92$.
**Step 3:** Avg rate $=\frac{92-71}{46-39}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($92$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":5,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('daea3716-d292-4fa5-bc39-4d414e37397e', 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)', '', NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":6,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1532a198-cedc-4e15-bb2d-ba6aaa36b2e9', 'Which expression is equivalent to $(5x+19)^2 - (5x-19)^2$?', '', NULL, '[{"id":"A","text":"$380x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+19$, $v=5x-19$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$76x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+361$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+19)^2 - (5x-19)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+19$, $v=5x-19$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(38)=380x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $380x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($76x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+361$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":7,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a54a76a6-0c92-43f7-a42a-e2da47a0d8d3', 'How many orders did the first team fill?', 'Two workers split tasks in ratio $7:8$ over 35 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$975$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$978$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$980$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×35×(7+8)=2100$. **Step 2:** A''s share $\\frac{7}{15}×2100=980$."},{"id":"D","text":"$2100$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×35×(7+8)=2100$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×2100=980$ tasks.

**Step 3 — Answer C.** $980$

**Distractor analysis:**
- **A** ($975$): Underestimates A''s share of the total.
- **B** ($978$): Close but ratio arithmetic is off.
- **D** ($2100$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":8,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
