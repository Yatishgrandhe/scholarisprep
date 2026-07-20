BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('702c7e58-11e9-40a5-8e73-c652cae43a13', 'Based on the data, which choice most fairly assesses a manufacturer''s claim about the coating?', 'A critic claims "nobody likes the new app" after surveying 375 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_1","slot":14,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('073ca230-df54-4b0b-b39e-f1494ffe760d', 'What is the capacity of the planter box, in cubic inches?', 'A rectangular sheet is 18 by 17 inches. A square corner of side 3 inches is removed, then the remainder is folded into a planter box 2 inches tall.', 'passage', '[{"id":"A","text":"$306$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$297$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$594$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $306-3^2=297$. **Step 2:** Volume $=297×2=594$."},{"id":"D","text":"$597$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $18×17=306$.
**Step 2:** Remove corner: $3^2=9$ → base $297$.
**Step 3:** Volume $=297×2=594$ cu in.

**Step 3 — Answer C.** $594$

**Distractor analysis:**
- **A** ($306$): Forgot to subtract the removed corner.
- **B** ($297$): Area of base only, not volume.
- **D** ($597$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_1","slot":15,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c5781cad-01d5-4578-bfc9-613896fc160c', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 134° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">46°</text>
</svg>', 'figure', '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$46°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 46°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 52 = 46°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 52° + 46° = 180°.

**Step 3 — Answer D.** $46°$

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_1","slot":16,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7be89c85-c512-4380-8b41-e5a4602f7037', 'What is $\sin\theta$ where $\theta$ is the angle between the support cable and the ground?', 'A support cable''s foot is 52 ft from a wall; the top is 59 ft high. The support cable length is 79 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">12 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">19 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">22 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{52}{79}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{59}{79}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=59$, hypotenuse $=79$. **Step 2:** $\\sin\\theta=\\frac{59}{79}≈0.747$."},{"id":"C","text":"$\\frac{79}{59}$","is_correct":false,"explanation":"Choice C ($\\frac{79}{59}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{52}{59}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=59$, hypotenuse $=79$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{59}{79}$.
**Step 3:** Pythagorean check: $52^2+59^2=79^2$.
**Step 4:** $\cos\theta=\frac{52}{79}$, not the answer.

**Step 3 — Answer B.** $\frac{59}{79}$

**Distractor analysis:**
- **A** ($\frac{52}{79}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{79}{59}$): Choice C ($\frac{79}{59}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{52}{59}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_1","slot":17,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7f787f7-e084-491f-9efd-5e514794f829', 'Halfway around a roundabout, how far have you traveled? (Use $\pi \approx 3.14$.)', 'A circular track has radius 8 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 14">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 14</text>
</svg>', 'figure', '[{"id":"A","text":"$25.12$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈50.24$. **Step 2:** Half $≈25.12$ m."},{"id":"B","text":"$200.96$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$50.24$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$25.12$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(8)=50.24$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈25.12$ m.
**Step 3:** Do not confuse with area $πr^2≈200.96$.

**Step 3 — Answer A.** $25.12$

**Distractor analysis:**
- **B** ($200.96$): Area formula $\pi r^2$, not arc length.
- **C** ($50.24$): Full circumference, not half.
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_1","slot":18,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e03ab518-b5ed-45e0-b642-9c54e1a2610a', 'For what value of $k$ does $4(x-5)+2k = 90$ have solution $x=25$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=25$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$25$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-5)+2k = 90$ have solution $x=25$?

**Step 2 — Solve.** **Step 1:** Substitute $x=25$: $4(25-k)+2k=90$.
**Step 2:** Expand: $100-4k+2k=90$ → $100+-2k=90$.
**Step 3:** Isolate: $-2k=-10$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($25$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_1","slot":19,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('585fbda3-499b-4234-97b5-14cfa07e0f84', 'Linear function $f$ models temperature. $f(17)=11$ and $f(23)=41$. What is $f(-19)$?', '', NULL, '[{"id":"A","text":"$-164$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-173$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-169$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-19)=-169$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(17)=11$ and $f(23)=41$. What is $f(-19)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{41-11}{23-17}=5$.
**Step 2:** Point-slope: $f(-19)=5(-19-17)+(11)$.
**Step 3:** $f(-19)=-169$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-169$

**Distractor analysis:**
- **A** ($-164$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-173$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_1","slot":20,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('feeadea8-bc82-4f1e-82a4-0875a03eb75a', 'If the cyclist continues at the same rate, what is $d$ when $t=66$?', 'A cyclist''s distance $d$ (miles) after $t$ hours is $d=5t+56$. At $t=58$, $d=346$.', 'passage', '[{"id":"A","text":"$381$","is_correct":false,"explanation":"Choice A ($381$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$351$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=66$."},{"id":"C","text":"$386$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(66)+56$. **Step 2:** $d=386$."},{"id":"D","text":"$330$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=66$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $56$.
**Step 2:** $d=5(66)+56=386$.
**Step 3:** Cross-check via $(66-58)×5+346=386$.

**Step 3 — Answer C.** $386$

**Distractor analysis:**
- **A** ($381$): Choice A ($381$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($351$): Adds slope once instead of evaluating at $t=66$.
- **D** ($330$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_1","slot":21,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe171de8-c5dc-4c32-ba76-a53a15541789', 'Solve for $x$: $4x + 5 = 29$', '', NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$5$","is_correct":false,"explanation":"Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 5. **Step 2:** Divide by 4."},{"id":"D","text":"$7$","is_correct":false,"explanation":"Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $4x + 5 = 29$

**Step 2 — Solve.** **Step 1:** $4x = 24$
**Step 2:** $x = 6$

**Step 3 — Answer C.** $6$

**Distractor analysis:**
- **A** ($4$): Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($5$): Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($7$): Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_easy","slot":0,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a26a5231-d3c2-436c-a5b3-87b1d18cf79c', 'Linear function $f$ models temperature. $f(53)=47$ and $f(59)=77$. What is $f(-55)$?', '', NULL, '[{"id":"A","text":"$-488$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-497$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-493$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-55)=-493$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(53)=47$ and $f(59)=77$. What is $f(-55)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{77-47}{59-53}=5$.
**Step 2:** Point-slope: $f(-55)=5(-55-53)+(47)$.
**Step 3:** $f(-55)=-493$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-493$

**Distractor analysis:**
- **A** ($-488$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-497$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_easy","slot":1,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c7e83cdd-4ccd-4167-a3ad-976a49f20e5a', 'If the cyclist continues at the same rate, what is $d$ when $t=42$?', 'A cyclist''s distance $d$ (miles) after $t$ hours is $d=5t+32$. At $t=34$, $d=202$.', 'passage', '[{"id":"A","text":"$237$","is_correct":false,"explanation":"Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$207$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=42$."},{"id":"C","text":"$242$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(42)+32$. **Step 2:** $d=242$."},{"id":"D","text":"$210$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=42$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $32$.
**Step 2:** $d=5(42)+32=242$.
**Step 3:** Cross-check via $(42-34)×5+202=242$.

**Step 3 — Answer C.** $242$

**Distractor analysis:**
- **A** ($237$): Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($207$): Adds slope once instead of evaluating at $t=42$.
- **D** ($210$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_easy","slot":2,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e3b58a9d-0be4-45a7-9c73-3c4e949aee87', 'Given $x+y=101$ and $4x-y=52$, what is $x$?', 'At an event, 101 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=52$.', 'passage', '[{"id":"A","text":"$51$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=255$. **Step 2:** $x=51$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$52$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=101$ and $4x-y=52$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=101+52$ → $5x=255$.
**Step 2:** $x=51$.
**Step 3:** Back-substitute: $y=50$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $51$

**Distractor analysis:**
- **B** ($50$): One less than the solution.
- **C** ($50$): Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($52$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_easy","slot":3,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f142586-49ab-4945-a4fd-d2990ab78882', 'Which integer value of $x$ satisfies $3x + 9 > 35$ and is the smallest feasible reading?', 'A battery charge $R=ax+b$ must exceed 35 but stay at most 51 to trigger an alert.', 'passage', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$8$","is_correct":false,"explanation":"Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$10$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 8.67$. **Step 2:** Smallest integer: 10."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 35$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 26$.
**Step 2:** $x > 8.67$.
**Step 3:** Among choices, $10$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $10$

**Distractor analysis:**
- **A** ($7$): Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($8$): Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($9$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_easy","slot":4,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9bcf4422-d0f5-4d4b-bb78-0a4c23e1d708', 'What is the average rate of change of $h$ from $t=57$ to $t=64$?', 'Projectile height $h(t)=3(t-60)^2+62$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(57)=89$, $h(64)=110$. **Step 2:** $\\frac{110-89}{64-57}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$110$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=57$ to $t=64$?

**Step 2 — Solve.** **Step 1:** $h(57)=3(57-60)^2+62=89$.
**Step 2:** $h(64)=3(64-60)^2+62=110$.
**Step 3:** Avg rate $=\frac{110-89}{64-57}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($110$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_easy","slot":5,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a92614db-e97d-4149-8129-f4c477fe8deb', 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)', '', NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-7)(x-8)=0$.
**Step 2:** Roots $x=7$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_easy","slot":6,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
