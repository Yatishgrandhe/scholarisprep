BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('839efc21-a831-4b2b-947a-aa527503e961', 'What must $x$ be for the set described?', 'Five test scores: 13, 17, 21, 25, and one score $x$ is unknown. The mean is 17.2.

| Student | Score |
| --- | --- |
| S1 | 18 |
| S2 | 21 |
| S3 | 24 |
| S4 | 27 |', 'table', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$10$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=17.2×5=86$. **Step 2:** $x=10$."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=17.2×5=86$.
**Step 2:** Known sum $=76$.
**Step 3:** $x=86-76=10$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $10$

**Distractor analysis:**
- **A** ($7$): Pulls the mean down too far.
- **C** ($13$): Too high for the given mean.
- **D** ($17$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":10,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1418a095-7fd1-439b-a564-edfa3143f4be', 'Which equation models the line, and what does its slope mean in context?', 'A line models cost vs. units, passing through $(26,102)$ and $(34,134)$.', 'passage', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{134-102}{34-26}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=134$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{134}{34}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=134$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{134}{34}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":11,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5608941c-0477-4a5e-8fb5-7daaa1d8f060', 'If the first token is red, find the probability the next token is red too.', 'A bag has 5 red and 48 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{53}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{52}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{53}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{52}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 52. **Step 2:** P $=\\frac{4}{52}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 52 total.
**Step 2:** Conditional probability $=\frac{4}{52}$.
**Step 3:** Do not use $\frac{5}{53}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{52}$

**Distractor analysis:**
- **A** ($\frac{5}{53}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{52}$): Uses original count in numerator.
- **C** ($\frac{5}{53}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":12,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ee13c8d4-c6b9-4288-bdcd-87db02416cd7', 'Based on the sample of city commuters, which inference is most defensible?', 'Poll: 63% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 63% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 59% and 67%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 59% to 67%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 59% to 67%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 59% and 67%

**Distractor analysis:**
- **A** (Exactly 63% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":13,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96711ad5-09b8-4ba1-ba15-de9116a4967e', 'Which choice best evaluates an analyst''s claim about the ad campaign using the data?', 'A critic claims "nobody likes the new app" after surveying 129 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":14,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('56c6f1fb-0772-4505-ac65-d903822914b4', 'What is the volume of the glass aquarium, in cubic inches?', 'A rectangular sheet is 37 by 36 inches. A square corner of side 3 inches is removed, then the remainder is folded into a glass aquarium 2 inches tall.', 'passage', '[{"id":"A","text":"$1332$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1323$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2646$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1332-3^2=1323$. **Step 2:** Volume $=1323×2=2646$."},{"id":"D","text":"$2649$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $37×36=1332$.
**Step 2:** Remove corner: $3^2=9$ → base $1323$.
**Step 3:** Volume $=1323×2=2646$ cu in.

**Step 3 — Answer C.** $2646$

**Distractor analysis:**
- **A** ($1332$): Forgot to subtract the removed corner.
- **B** ($1323$): Area of base only, not volume.
- **D** ($2649$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":15,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('727ef9bc-a7ea-4d38-b9bb-34818ca8dbbd', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 118° with side $AB$.

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
- **C** ($72°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":16,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2509f5f6-ec50-4b89-8f95-0b8b74521abc', 'What is $\sin\theta$ where $\theta$ is the angle between the ramp and the ground?', 'A ramp''s foot is 48 ft from a wall; the top is 55 ft high. The ramp length is 73 ft.

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
- **D** ($\frac{48}{55}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":17,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6cceb063-546e-4261-85bc-cc9048f91f68', 'What is the length of a semicircular arc of a round garden fountain? (Use $\pi \approx 3.14$.)', 'A circular track has radius 13 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$40.82$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈81.64$. **Step 2:** Half $≈40.82$ m."},{"id":"B","text":"$530.66$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$81.64$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$40.82$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(13)=81.64$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈40.82$ m.
**Step 3:** Do not confuse with area $πr^2≈530.66$.

**Step 3 — Answer A.** $40.82$

**Distractor analysis:**
- **B** ($530.66$): Area formula $\pi r^2$, not arc length.
- **C** ($81.64$): Full circumference, not half.
- **D** ($40.82$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":18,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fed6aae7-739d-4f4c-8865-70e2b3085a68', 'For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=44$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$44$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?

**Step 2 — Solve.** **Step 1:** Substitute $x=44$: $8(44-k)+2k=316$.
**Step 2:** Expand: $352-8k+2k=316$ → $352+-6k=316$.
**Step 3:** Isolate: $-6k=-36$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($44$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":19,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1c829a39-4a75-4d92-ac27-e908fca89fd2', 'Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?', '', NULL, '[{"id":"A","text":"$-542$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-551$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-547$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-61)=-547$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{83-53}{65-59}=5$.
**Step 2:** Point-slope: $f(-61)=5(-61-59)+(53)$.
**Step 3:** $f(-61)=-547$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-547$

**Distractor analysis:**
- **A** ($-542$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-551$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":20,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7835c163-f1e9-4939-afba-d83c4c5912ba', 'If the tour bus continues at the same rate, what is $d$ when $t=62$?', 'A tour bus''s distance $d$ (miles) after $t$ hours is $d=5t+52$. At $t=54$, $d=322$.', 'passage', '[{"id":"A","text":"$357$","is_correct":false,"explanation":"Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$327$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=62$."},{"id":"C","text":"$362$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(62)+52$. **Step 2:** $d=362$."},{"id":"D","text":"$310$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=62$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $52$.
**Step 2:** $d=5(62)+52=362$.
**Step 3:** Cross-check via $(62-54)×5+322=362$.

**Step 3 — Answer C.** $362$

**Distractor analysis:**
- **A** ($357$): Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($327$): Adds slope once instead of evaluating at $t=62$.
- **D** ($310$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_easy","slot":21,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":4,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cf0996e0-697e-4f4e-8bd8-cd9632cc0912', 'Solve for $x$: $2x + 4 = 18$', '', NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$6$","is_correct":false,"explanation":"Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 4. **Step 2:** Divide by 2."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $2x + 4 = 18$

**Step 2 — Solve.** **Step 1:** $2x = 14$
**Step 2:** $x = 7$

**Step 3 — Answer C.** $7$

**Distractor analysis:**
- **A** ($5$): Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($6$): Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($8$): Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_hard","slot":0,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":4,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('92c2460f-1400-415b-aa1e-153a37d645bd', 'Linear function $f$ models temperature. $f(35)=29$ and $f(41)=59$. What is $f(-37)$?', '', NULL, '[{"id":"A","text":"$-326$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-335$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-331$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-37)=-331$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(35)=29$ and $f(41)=59$. What is $f(-37)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{59-29}{41-35}=5$.
**Step 2:** Point-slope: $f(-37)=5(-37-35)+(29)$.
**Step 3:** $f(-37)=-331$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-331$

**Distractor analysis:**
- **A** ($-326$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-335$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_hard","slot":1,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":4,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bd284bac-57a8-423a-ac25-e5b8d360f7ad', 'If the tour bus continues at the same rate, what is $d$ when $t=38$?', 'A tour bus''s distance $d$ (miles) after $t$ hours is $d=5t+28$. At $t=30$, $d=178$.', 'passage', '[{"id":"A","text":"$213$","is_correct":false,"explanation":"Choice A ($213$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$183$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=38$."},{"id":"C","text":"$218$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(38)+28$. **Step 2:** $d=218$."},{"id":"D","text":"$190$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=38$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $28$.
**Step 2:** $d=5(38)+28=218$.
**Step 3:** Cross-check via $(38-30)×5+178=218$.

**Step 3 — Answer C.** $218$

**Distractor analysis:**
- **A** ($213$): Choice A ($213$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($183$): Adds slope once instead of evaluating at $t=38$.
- **D** ($190$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":4,"module_key":"math_module_2_hard","slot":2,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":4,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
