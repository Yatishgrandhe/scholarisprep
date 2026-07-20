BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4dccea1c-39ff-446a-b1b1-7275b5a24b26', 'Which choice best evaluates a manufacturer''s claim about the coating using the data?', 'A critic claims "nobody likes the new app" after surveying 255 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_1","slot":14,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":3,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f53f0b9-b55b-4f01-9c44-095a9ede1e81', 'Find the volume of the steel locker, in cubic inches.', 'A rectangular sheet is 58 by 57 inches. A square corner of side 3 inches is removed, then the remainder is folded into a steel locker 2 inches tall.', 'passage', '[{"id":"A","text":"$3306$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3297$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6594$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3306-3^2=3297$. **Step 2:** Volume $=3297×2=6594$."},{"id":"D","text":"$6597$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $58×57=3306$.
**Step 2:** Remove corner: $3^2=9$ → base $3297$.
**Step 3:** Volume $=3297×2=6594$ cu in.

**Step 3 — Answer C.** $6594$

**Distractor analysis:**
- **A** ($3306$): Forgot to subtract the removed corner.
- **B** ($3297$): Area of base only, not volume.
- **D** ($6597$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_1","slot":15,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":3,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cea52194-24b9-4f27-af36-18e10cb64846', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 140° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">46°</text>
</svg>', 'figure', '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$40°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 40°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 52 = 40°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 52° + 40° = 180°.

**Step 3 — Answer D.** $40°$

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_1","slot":16,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":3,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f279d887-e6fc-4e2b-80af-37ff857d723c', 'What is $\sin\theta$ where $\theta$ is the angle between the ramp and the ground?', 'A ramp''s foot is 32 ft from a wall; the top is 39 ft high. The ramp length is 50 ft.

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
- **D** ($\frac{32}{39}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_1","slot":17,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":3,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6089ecba-321b-44d8-96c1-bac9dab79459', 'Across a satellite''s circular orbit, what is half its circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 6 meters. A runner completes half the circumference.

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
- **D** ($18.84$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_1","slot":18,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":3,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('46219294-2332-43b2-88ec-8d6ab84450dd', 'For what value of $k$ does $4(x-3)+2k = 14$ have solution $x=5$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=5$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$5$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-3)+2k = 14$ have solution $x=5$?

**Step 2 — Solve.** **Step 1:** Substitute $x=5$: $4(5-k)+2k=14$.
**Step 2:** Expand: $20-4k+2k=14$ → $20+-2k=14$.
**Step 3:** Isolate: $-2k=-6$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($5$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_1","slot":19,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":3,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0ed2e4eb-0df1-420b-91e9-785ed4b2f9cc', 'Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?', '', NULL, '[{"id":"A","text":"$-294$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-301$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-297$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-59)=-297$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{69-51}{63-57}=3$.
**Step 2:** Point-slope: $f(-59)=3(-59-57)+(51)$.
**Step 3:** $f(-59)=-297$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-297$

**Distractor analysis:**
- **A** ($-294$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-301$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_1","slot":20,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":3,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f06e7c6-8f68-4da2-b125-b013b75c273b', 'If the tour bus continues at the same rate, what is $d$ when $t=46$?', 'A tour bus''s distance $d$ (miles) after $t$ hours is $d=5t+36$. At $t=38$, $d=226$.', 'passage', '[{"id":"A","text":"$261$","is_correct":false,"explanation":"Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$231$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=46$."},{"id":"C","text":"$266$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(46)+36$. **Step 2:** $d=266$."},{"id":"D","text":"$230$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=46$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $36$.
**Step 2:** $d=5(46)+36=266$.
**Step 3:** Cross-check via $(46-38)×5+226=266$.

**Step 3 — Answer C.** $266$

**Distractor analysis:**
- **A** ($261$): Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($231$): Adds slope once instead of evaluating at $t=46$.
- **D** ($230$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_1","slot":21,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":3,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d0384aef-12fb-4bf8-87c6-c7b27c75af0e', 'Solve for $x$: $4x + 5 = 29$', '', NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$5$","is_correct":false,"explanation":"Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 5. **Step 2:** Divide by 4."},{"id":"D","text":"$7$","is_correct":false,"explanation":"Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $4x + 5 = 29$

**Step 2 — Solve.** **Step 1:** $4x = 24$
**Step 2:** $x = 6$

**Step 3 — Answer C.** $6$

**Distractor analysis:**
- **A** ($4$): Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($5$): Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($7$): Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_2_easy","slot":0,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":3,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8660ba02-aed7-45c8-b5d7-3b751ee66186', 'Linear function $f$ models temperature. $f(33)=27$ and $f(39)=45$. What is $f(-35)$?', '', NULL, '[{"id":"A","text":"$-174$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-181$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-177$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-35)=-177$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(33)=27$ and $f(39)=45$. What is $f(-35)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{45-27}{39-33}=3$.
**Step 2:** Point-slope: $f(-35)=3(-35-33)+(27)$.
**Step 3:** $f(-35)=-177$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-177$

**Distractor analysis:**
- **A** ($-174$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-181$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_2_easy","slot":1,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":3,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('435b2895-0ff5-4550-a191-c26a36266c0d', 'If the tour bus continues at the same rate, what is $d$ when $t=22$?', 'A tour bus''s distance $d$ (miles) after $t$ hours is $d=5t+12$. At $t=14$, $d=82$.', 'passage', '[{"id":"A","text":"$117$","is_correct":false,"explanation":"Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$87$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=22$."},{"id":"C","text":"$122$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(22)+12$. **Step 2:** $d=122$."},{"id":"D","text":"$110$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=22$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $12$.
**Step 2:** $d=5(22)+12=122$.
**Step 3:** Cross-check via $(22-14)×5+82=122$.

**Step 3 — Answer C.** $122$

**Distractor analysis:**
- **A** ($117$): Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($87$): Adds slope once instead of evaluating at $t=22$.
- **D** ($110$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_2_easy","slot":2,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":3,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('56598516-4e03-45d3-b632-7369ef3c5b0b', 'Given $x+y=61$ and $4x-y=32$, what is $x$?', 'At an event, 61 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=32$.', 'passage', '[{"id":"A","text":"$31$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=155$. **Step 2:** $x=31$."},{"id":"B","text":"$30$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$32$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=61$ and $4x-y=32$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=61+32$ → $5x=155$.
**Step 2:** $x=31$.
**Step 3:** Back-substitute: $y=30$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $31$

**Distractor analysis:**
- **B** ($30$): One less than the solution.
- **C** ($30$): Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($32$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_2_easy","slot":3,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":3,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('52bb856f-d7d5-4556-86dd-a5713623e590', 'Which integer value of $x$ satisfies $3x + 7 > 153$ and is the smallest feasible reading?', 'A water level $R=ax+b$ must exceed 153 but stay at most 169 to trigger an alert.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48$","is_correct":false,"explanation":"Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$50$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 48.67$. **Step 2:** Smallest integer: 50."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 153$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 146$.
**Step 2:** $x > 48.67$.
**Step 3:** Among choices, $50$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $50$

**Distractor analysis:**
- **A** ($47$): Choice A ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48$): Choice B ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($49$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_2_easy","slot":4,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":3,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e4089312-4b39-4d5c-a272-3ef3d993e852', 'What is the average rate of change of $h$ from $t=37$ to $t=44$?', 'Projectile height $h(t)=4(t-40)^2+42$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(37)=78$, $h(44)=106$. **Step 2:** $\\frac{106-78}{44-37}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$106$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=37$ to $t=44$?

**Step 2 — Solve.** **Step 1:** $h(37)=4(37-40)^2+42=78$.
**Step 2:** $h(44)=4(44-40)^2+42=106$.
**Step 3:** Avg rate $=\frac{106-78}{44-37}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($106$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_2_easy","slot":5,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":3,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb392d52-85ce-47c5-b47e-4e76b29afe32', 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)', '', NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-7)(x-8)=0$.
**Step 2:** Roots $x=7$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":3,"module_key":"math_module_2_easy","slot":6,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":3,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
