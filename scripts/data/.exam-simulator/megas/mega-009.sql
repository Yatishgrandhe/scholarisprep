BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d6cd5ff-0cf2-49d8-bb74-b29f7a4d9fc4', 'If the original ticket price is $840$, what is the final ticket price after both changes?', 'A ticket price is marked up 25%, then discounted 15% on the new ticket price.', 'passage', '[{"id":"A","text":"$893$","is_correct":true,"explanation":"Correct (A). **Step 1:** $840×1.25=1050$. **Step 2:** $1050×0.85=893$."},{"id":"B","text":"$840$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1050$","is_correct":false,"explanation":"Choice C ($1050$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$924$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $840$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $840×(1+25/100)=1050$.
**Step 2:** Discount on new price: $1050×(1-15/100)=893$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $893$

**Distractor analysis:**
- **B** ($840$): Ignores both percent changes.
- **C** ($1050$): Choice C ($1050$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($924$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":9,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d12feb60-d2d7-408d-aa62-25291357cff7', 'What is the missing value $x$?', 'Five test scores: 49, 53, 57, 61, and one score $x$ is unknown. The mean is 53.2.

| Student | Score |
| --- | --- |
| S1 | 14 |
| S2 | 17 |
| S3 | 20 |
| S4 | 23 |', 'table', '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$46$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=53.2×5=266$. **Step 2:** $x=46$."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$53$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=53.2×5=266$.
**Step 2:** Known sum $=220$.
**Step 3:** $x=266-220=46$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $46$

**Distractor analysis:**
- **A** ($43$): Pulls the mean down too far.
- **C** ($49$): Too high for the given mean.
- **D** ($53$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":10,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('878da8c7-fd3e-4e84-873d-ae53442cf6ae', 'Which equation fits the line, and how should the slope be interpreted?', 'A line models cost vs. units, passing through $(25,98)$ and $(33,130)$.

| Units | Cost ($) |
| --- | --- |
| 23 | 90 |
| 25 | 98 |
| 27 | 106 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{130-98}{33-25}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=130$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{130}{33}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=130$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{130}{33}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":11,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dca827f3-58ee-4bcc-b253-9d33f06ddbec', 'After drawing one red token, what is the chance the second token is red?', 'A bag has 8 red and 47 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{55}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{54}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{55}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{54}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 54. **Step 2:** P $=\\frac{7}{54}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 54 total.
**Step 2:** Conditional probability $=\frac{7}{54}$.
**Step 3:** Do not use $\frac{8}{55}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{54}$

**Distractor analysis:**
- **A** ($\frac{8}{55}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{54}$): Uses original count in numerator.
- **C** ($\frac{8}{55}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":12,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4631a70c-4b2c-4fe6-8141-3c12250f3594', 'From the poll of recent customers, which conclusion is best supported?', 'Poll: 62% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 62% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 58% and 66%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 58% to 66%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 58% to 66%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 58% and 66%

**Distractor analysis:**
- **A** (Exactly 62% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":13,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9b26509b-27f6-4ce9-9466-90ee29925088', 'Based on the data, which choice most fairly assesses a manufacturer''s claim about the coating?', 'A critic claims "nobody likes the new app" after surveying 123 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":14,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1c10d957-2386-4ae7-be71-bf8822d41704', 'Find the volume of the storage bin, in cubic inches.', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 16 by 15">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">16 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">15 in</text>
</svg>

A rectangular sheet is 36 by 35 inches. A square corner of side 3 inches is removed, then the remainder is folded into a storage bin 2 inches tall.', 'figure', '[{"id":"A","text":"$1260$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1251$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2502$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1260-3^2=1251$. **Step 2:** Volume $=1251×2=2502$."},{"id":"D","text":"$2505$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $36×35=1260$.
**Step 2:** Remove corner: $3^2=9$ → base $1251$.
**Step 3:** Volume $=1251×2=2502$ cu in.

**Step 3 — Answer C.** $2502$

**Distractor analysis:**
- **A** ($1260$): Forgot to subtract the removed corner.
- **B** ($1251$): Area of base only, not volume.
- **D** ($2505$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":15,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6763e42c-4be0-4bc8-837b-8aae0e4e66b8', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 52°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 108° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">36°</text>
</svg>', 'figure', '[{"id":"A","text":"$52°$","is_correct":false,"explanation":"Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$82°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$72°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 72°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 52 - 56 = 72°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 52° + 56° + 72° = 180°.

**Step 3 — Answer D.** $72°$

**Distractor analysis:**
- **A** ($52°$): Choice A ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($82°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":16,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d13c7c45-ce52-47aa-84eb-75714826bda4', 'What is $\sin\theta$ where $\theta$ is the angle between the zip line and the ground?', 'A zip line''s foot is 10 ft from a wall; the top is 17 ft high. The zip line length is 20 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">10 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">17 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">20 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{10}{20}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{17}{20}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=17$, hypotenuse $=20$. **Step 2:** $\\sin\\theta=\\frac{17}{20}≈0.850$."},{"id":"C","text":"$\\frac{20}{17}$","is_correct":false,"explanation":"Choice C ($\\frac{20}{17}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{10}{17}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=17$, hypotenuse $=20$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{17}{20}$.
**Step 3:** Pythagorean check: $10^2+17^2=20^2$.
**Step 4:** $\cos\theta=\frac{10}{20}$, not the answer.

**Step 3 — Answer B.** $\frac{17}{20}$

**Distractor analysis:**
- **A** ($\frac{10}{20}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{20}{17}$): Choice C ($\frac{20}{17}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{10}{17}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":17,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9656317b-17e7-42ce-9296-132697a5c70e', 'Across a Ferris wheel, what is half its circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 7 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$21.98$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈43.96$. **Step 2:** Half $≈21.98$ m."},{"id":"B","text":"$153.86$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$43.96$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$21.98$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(7)=43.96$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈21.98$ m.
**Step 3:** Do not confuse with area $πr^2≈153.86$.

**Step 3 — Answer A.** $21.98$

**Distractor analysis:**
- **B** ($153.86$): Area formula $\pi r^2$, not arc length.
- **C** ($43.96$): Full circumference, not half.
- **D** ($21.98$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":18,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3618f960-838b-40d1-ae01-25ae17dfe263', 'For what value of $k$ does $7(x-5)+2k = 276$ have solution $x=43$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=43$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$43$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-5)+2k = 276$ have solution $x=43$?

**Step 2 — Solve.** **Step 1:** Substitute $x=43$: $7(43-k)+2k=276$.
**Step 2:** Expand: $301-7k+2k=276$ → $301+-5k=276$.
**Step 3:** Isolate: $-5k=-25$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($43$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":19,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3557c8b6-0f26-436a-b69c-04f72e152428', 'Linear function $f$ models temperature. $f(58)=52$ and $f(64)=76$. What is $f(-60)$?', '', NULL, '[{"id":"A","text":"$-416$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-424$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-420$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-60)=-420$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(58)=52$ and $f(64)=76$. What is $f(-60)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{76-52}{64-58}=4$.
**Step 2:** Point-slope: $f(-60)=4(-60-58)+(52)$.
**Step 3:** $f(-60)=-420$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-420$

**Distractor analysis:**
- **A** ($-416$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-424$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":20,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a7c1480b-825d-430d-9889-8ebf8a15452c', 'If the freight train continues at the same rate, what is $d$ when $t=24$?', 'A freight train''s distance $d$ (miles) after $t$ hours is $d=3t+14$. At $t=16$, $d=62$.', 'passage', '[{"id":"A","text":"$83$","is_correct":false,"explanation":"Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=24$."},{"id":"C","text":"$86$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(24)+14$. **Step 2:** $d=86$."},{"id":"D","text":"$72$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=24$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $14$.
**Step 2:** $d=3(24)+14=86$.
**Step 3:** Cross-check via $(24-16)×3+62=86$.

**Step 3 — Answer C.** $86$

**Distractor analysis:**
- **A** ($83$): Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($65$): Adds slope once instead of evaluating at $t=24$.
- **D** ($72$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":1,"module_key":"math_module_2_hard","slot":21,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":1,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c810e61e-bf79-4ceb-8632-8a7e1dad1ee9', 'As used in the passage, "tenuous" most nearly means', 'Historians examining archive 5110902 argue that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 5 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the tenuous is not merely correlational in this context. Community interviews and field notes repeatedly referenced practical', 'passage', '[{"id":"A","text":"to weaken","is_correct":false,"explanation":"[Collocation Decoy] \"to weaken\" contradicts the sentence logic requiring a provisional judgment."},{"id":"B","text":"to support or strengthen","is_correct":true,"explanation":"Correct (B). \"bolster\" fits \"to support or strengthen\" given the provisional conclusion awaiting replication."},{"id":"C","text":"to hide","is_correct":false,"explanation":"[Flat Literal] \"to hide\" contradicts the sentence logic requiring a provisional judgment."},{"id":"D","text":"to erase","is_correct":false,"explanation":"[Tone Inversion] \"to erase\" contradicts the sentence logic requiring a provisional judgment."}]'::jsonb, 'B', 'Step 1 — Locate the word in context
Focus on {{yellow:cycles,}} in the passage. The vocabulary in context item asks you to locate the word in context before comparing choices.

Step 2 — Test each meaning
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Select the best fit
Choice B is correct: to support or strengthen.

Distractor analysis:
- A: [Collocation Decoy] "to weaken" contradicts the sentence logic requiring a provisional judgment.
- C: [Flat Literal] "to hide" contradicts the sentence logic requiring a provisional judgment.
- D: [Tone Inversion] "to erase" contradicts the sentence logic requiring a provisional judgment.', NULL, 'Craft and Structure', 'Words in Context', 'reading_writing', 'craft', 'WIC', 'WIC', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"rw_module_1","slot":0,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a851cf21-48bd-4521-af37-b12a35ffe5d4', 'Which choice best describes the overall structure of the passage?', 'A longitudinal analysis of dataset 5111039 indicates that local conditions shape outcomes in ways that single-variable models often miss. Observers recorded consistent patterns across 7 measurement cycles, comparing baseline and intervention periods while holding unrelated variables stable. When the expected mechanism appeared, downstream indicators shifted in the same direction, suggesting the relationship is not merely correlational in this context. Community interviews and field notes repeatedly', 'passage', '[{"id":"A","text":"The passage is organized to describe how investigators moved from observation to tested conclusion.","is_correct":true,"explanation":"Correct (A). The passage develops an explanatory arc matching to describe how investigators moved from observation to tested conclusion."},{"id":"B","text":"The passage lists unrelated facts with no thematic connection between paragraphs.","is_correct":false,"explanation":"[Partial Scope] The passage connects ideas across paragraphs; it is not a random list."},{"id":"C","text":"The passage argues that scientific research should be abandoned as unreliable.","is_correct":false,"explanation":"[Narrative Speculation] The passage presents research findings rather than rejecting inquiry."},{"id":"D","text":"The passage provides a chronological biography of one individual from childhood to retirement.","is_correct":false,"explanation":"[Structural Inversion] No single biography structures the passage."}]'::jsonb, 'A', 'Step 1 — Identify the passage organization
Focus on {{yellow:measurement}} in the passage. The structure item asks you to identify the passage organization before comparing choices.

Step 2 — Match structure to purpose
Compare each option against explicit textual evidence. On easy items, correct answers usually restate the passage faithfully without absolute words the text does not support.

Step 3 — Confirm the description
Choice A is correct: The passage is organized to describe how investigators moved from observation to tested conclusion..

Distractor analysis:
- B: [Partial Scope] The passage connects ideas across paragraphs; it is not a random list.
- C: [Narrative Speculation] The passage presents research findings rather than rejecting inquiry.
- D: [Structural Inversion] No single biography structures the passage.', NULL, 'Craft and Structure', 'Text Structure and Purpose', 'reading_writing', 'craft', 'TSP', 'TSP', 'easy'::public.difficulty, false, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"rw_module_1","slot":1,"filter_section":"reading_writing","module_index":1,"m2_variant":null,"form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
