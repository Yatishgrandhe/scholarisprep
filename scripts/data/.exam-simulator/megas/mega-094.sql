BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7040e194-6b8e-4bb2-980e-4bb2ff41f35a', 'What is the average rate of change of $h$ from $t=41$ to $t=48$?', 'Projectile height $h(t)=2(t-44)^2+46$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(41)=64$, $h(48)=78$. **Step 2:** $\\frac{78-64}{48-41}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$78$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=41$ to $t=48$?

**Step 2 — Solve.** **Step 1:** $h(41)=2(41-44)^2+46=64$.
**Step 2:** $h(48)=2(48-44)^2+46=78$.
**Step 3:** Avg rate $=\frac{78-64}{48-41}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($78$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":5,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb7a72f7-77da-43b0-a69d-987e13d2c1e9', 'For $x^2 - 17x + 72 = 0$, what is the positive solution? (Discriminant $=1$.)', '', NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$19$","is_correct":false,"explanation":"Choice D ($19$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 17x + 72 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-9)=0$.
**Step 2:** Roots $x=8$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $9$

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($17$): Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): Choice D ($19$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":6,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1e5ea2c8-ec79-4ce5-a6ee-a5e84a0182e1', 'Which expression is equivalent to $(4x+21)^2 - (4x-21)^2$?', '', NULL, '[{"id":"A","text":"$336x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+21$, $v=4x-21$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$84x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+441$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+21)^2 - (4x-21)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+21$, $v=4x-21$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(42)=336x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $336x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($84x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+441$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":7,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1e1ad25a-8d11-448f-9a1b-ee0af5efca14', 'How many parts did the first machine produce?', 'Two workers split tasks in ratio $6:7$ over 14 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$334$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$336$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×14×(6+7)=728$. **Step 2:** A''s share $\\frac{6}{13}×728=336$."},{"id":"D","text":"$728$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×14×(6+7)=728$ tasks.
**Step 2:** A''s fraction $\frac{6}{13}$.
**Step 3:** $\frac{6}{13}×728=336$ tasks.

**Step 3 — Answer C.** $336$

**Distractor analysis:**
- **A** ($331$): Underestimates A''s share of the total.
- **B** ($334$): Close but ratio arithmetic is off.
- **D** ($728$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":8,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3acb6c0d-3309-4b5b-93e3-0772790e8438', 'If the original rental rate is $870$, what is the final rental rate after both changes?', 'A rental rate is marked up 35%, then discounted 25% on the new rental rate.', 'passage', '[{"id":"A","text":"$881$","is_correct":true,"explanation":"Correct (A). **Step 1:** $870×1.35=1175$. **Step 2:** $1175×0.75=881$."},{"id":"B","text":"$870$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1175$","is_correct":false,"explanation":"Choice C ($1175$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$957$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $870$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $870×(1+35/100)=1175$.
**Step 2:** Discount on new price: $1175×(1-25/100)=881$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $881$

**Distractor analysis:**
- **B** ($870$): Ignores both percent changes.
- **C** ($1175$): Choice C ($1175$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($957$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":9,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2aca3d8a-7f74-4783-a64b-4837cf00fa1e', 'Which value of $x$ completes the data set?', 'Five test scores: 14, 18, 22, 26, and one score $x$ is unknown. The mean is 18.2.', 'passage', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$11$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=18.2×5=91$. **Step 2:** $x=11$."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=18.2×5=91$.
**Step 2:** Known sum $=80$.
**Step 3:** $x=91-80=11$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $11$

**Distractor analysis:**
- **A** ($8$): Pulls the mean down too far.
- **C** ($14$): Too high for the given mean.
- **D** ($18$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":10,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('982af398-4018-4de9-9c06-303a5280dbc6', 'Which equation describes the line, and what does the slope tell you?', 'A line models cost vs. units, passing through $(27,106)$ and $(35,138)$.

| Units | Cost ($) |
| --- | --- |
| 25 | 98 |
| 27 | 106 |
| 29 | 114 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{138-106}{35-27}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=138$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{138}{35}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=138$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{138}{35}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":11,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('15ea1fc1-e65f-488e-82bd-19bb4af5044e', 'Given the first marble drawn is red, what is the probability the second is also red?', 'A bag has 6 red and 49 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{55}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{54}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{55}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{54}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 54. **Step 2:** P $=\\frac{5}{54}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 54 total.
**Step 2:** Conditional probability $=\frac{5}{54}$.
**Step 3:** Do not use $\frac{6}{55}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{54}$

**Distractor analysis:**
- **A** ($\frac{6}{55}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{54}$): Uses original count in numerator.
- **C** ($\frac{6}{55}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":12,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aad257f8-73b4-4293-b42e-e1d9398ae467', 'Which conclusion does the sample of city commuters most justify?', 'Poll: 64% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 64% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 60% and 68%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 60% to 68%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 60% to 68%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 60% and 68%

**Distractor analysis:**
- **A** (Exactly 64% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":13,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e08833e-1de9-449f-ae4b-b69e81af940d', 'Which statement best weighs the evidence for an analyst''s claim about the ad campaign?', 'A critic claims "nobody likes the new app" after surveying 135 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":14,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('89505e1b-1700-4c03-8bb9-16053ae68baf', 'How many cubic inches does the steel locker hold?', 'A rectangular sheet is 38 by 37 inches. A square corner of side 3 inches is removed, then the remainder is folded into a steel locker 2 inches tall.', 'passage', '[{"id":"A","text":"$1406$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$1397$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$2794$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $1406-3^2=1397$. **Step 2:** Volume $=1397×2=2794$."},{"id":"D","text":"$2797$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $38×37=1406$.
**Step 2:** Remove corner: $3^2=9$ → base $1397$.
**Step 3:** Volume $=1397×2=2794$ cu in.

**Step 3 — Answer C.** $2794$

**Distractor analysis:**
- **A** ($1406$): Forgot to subtract the removed corner.
- **B** ($1397$): Area of base only, not volume.
- **D** ($2797$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":15,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e40e31f3-4496-4be5-b245-645f4b6609bd', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 128° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">82°</text>
  <text x="158" y="118" font-size="11" fill="#374151">52°</text>
  <text x="102" y="72" font-size="11" fill="#374151">46°</text>
</svg>', 'figure', '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$52°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 52°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 52 = 52°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 52° + 52° = 180°.

**Step 3 — Answer D.** $52°$

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":16,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('44bcf31c-754a-4371-aea8-79cf7afbc5f0', 'What is $\sin\theta$ where $\theta$ is the angle between the fire escape and the ground?', 'A fire escape''s foot is 12 ft from a wall; the top is 19 ft high. The fire escape length is 22 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">12 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">19 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">22 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{12}{22}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{19}{22}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=19$, hypotenuse $=22$. **Step 2:** $\\sin\\theta=\\frac{19}{22}≈0.864$."},{"id":"C","text":"$\\frac{22}{19}$","is_correct":false,"explanation":"Choice C ($\\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{12}{19}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=19$, hypotenuse $=22$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{19}{22}$.
**Step 3:** Pythagorean check: $12^2+19^2=22^2$.
**Step 4:** $\cos\theta=\frac{12}{22}$, not the answer.

**Step 3 — Answer B.** $\frac{19}{22}$

**Distractor analysis:**
- **A** ($\frac{12}{22}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{22}{19}$): Choice C ($\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{12}{19}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":17,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b72905de-6de4-49cb-8f8b-c54b4bae2651', 'How far is half the way around a satellite''s circular orbit? (Use $\pi \approx 3.14$.)', 'A circular track has radius 14 meters. A runner completes half the circumference.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius 14">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = 14</text>
</svg>', 'figure', '[{"id":"A","text":"$43.96$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈87.92$. **Step 2:** Half $≈43.96$ m."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$87.92$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(14)=87.92$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈43.96$ m.
**Step 3:** Do not confuse with area $πr^2≈615.44$.

**Step 3 — Answer A.** $43.96$

**Distractor analysis:**
- **B** ($615.44$): Area formula $\pi r^2$, not arc length.
- **C** ($87.92$): Full circumference, not half.
- **D** ($43.96$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":18,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('668710cd-8c4d-477a-a6e1-5264e0d533ab', 'For what value of $k$ does $4(x-7)+2k = 166$ have solution $x=45$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=45$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-7)+2k = 166$ have solution $x=45$?

**Step 2 — Solve.** **Step 1:** Substitute $x=45$: $4(45-k)+2k=166$.
**Step 2:** Expand: $180-4k+2k=166$ → $180+-2k=166$.
**Step 3:** Isolate: $-2k=-14$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($45$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":10,"module_key":"math_module_1","slot":19,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":10,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
