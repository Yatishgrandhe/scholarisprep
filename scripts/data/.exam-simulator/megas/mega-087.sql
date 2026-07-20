BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1396298f-e0f1-4664-950d-120bdfb8742f', 'Given $x+y=61$ and $3x-y=35$, what is $x$?', 'At an event, 61 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=35$.', 'passage', '[{"id":"A","text":"$32$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=128$. **Step 2:** $x=32$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$33$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=61$ and $3x-y=35$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=61+35$ → $4x=128$.
**Step 2:** $x=32$.
**Step 3:** Back-substitute: $y=29$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $32$

**Distractor analysis:**
- **B** ($31$): One less than the solution.
- **C** ($29$): Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($33$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":3,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('32bbb140-520f-4b82-9d0d-00c7281e6c58', 'Which integer value of $x$ satisfies $6x + 6 > 308$ and is the smallest feasible reading?', 'A battery charge $R=ax+b$ must exceed 308 but stay at most 324 to trigger an alert.', 'passage', '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Choice A ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Choice B ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$51$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 50.33$. **Step 2:** Smallest integer: 51."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 308$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 302$.
**Step 2:** $x > 50.33$.
**Step 3:** Among choices, $51$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $51$

**Distractor analysis:**
- **A** ($48$): Choice A ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($49$): Choice B ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":4,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0bb70cc6-11ee-4c86-8987-5b0c419131aa', 'What is the average rate of change of $h$ from $t=-1$ to $t=6$?', 'Projectile height $h(t)=2(t-2)^2+4$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(-1)=22$, $h(6)=36$. **Step 2:** $\\frac{36-22}{6--1}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$36$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=-1$ to $t=6$?

**Step 2 — Solve.** **Step 1:** $h(-1)=2(-1-2)^2+4=22$.
**Step 2:** $h(6)=2(6-2)^2+4=36$.
**Step 3:** Avg rate $=\frac{36-22}{6--1}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($36$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":5,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('da1315a3-a8f4-49de-a665-540ea3870a3b', 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)', '', NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":6,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d458e976-f0b0-48bc-b8a9-ec918abc6503', 'Which expression is equivalent to $(4x+39)^2 - (4x-39)^2$?', '', NULL, '[{"id":"A","text":"$624x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+39$, $v=4x-39$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$156x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+1521$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+39)^2 - (4x-39)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+39$, $v=4x-39$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(78)=624x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $624x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($156x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+1521$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":7,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de262665-a130-41ba-91f0-2393cc7e6258', 'How many units did the first crew assemble?', 'Two workers split tasks in ratio $7:8$ over 55 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1150$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1153$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1155$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×55×(7+8)=2475$. **Step 2:** A''s share $\\frac{7}{15}×2475=1155$."},{"id":"D","text":"$2475$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×55×(7+8)=2475$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×2475=1155$ tasks.

**Step 3 — Answer C.** $1155$

**Distractor analysis:**
- **A** ($1150$): Underestimates A''s share of the total.
- **B** ($1153$): Close but ratio arithmetic is off.
- **D** ($2475$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":8,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ebe6ca8b-b9cf-405f-82e2-2aa08b7771a4', 'If the original fare is $240$, what is the final fare after both changes?', 'A fare is marked up 25%, then discounted 25% on the new fare.', 'passage', '[{"id":"A","text":"$225$","is_correct":true,"explanation":"Correct (A). **Step 1:** $240×1.25=300$. **Step 2:** $300×0.75=225$."},{"id":"B","text":"$240$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$300$","is_correct":false,"explanation":"Choice C ($300$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$240$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $240$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $240×(1+25/100)=300$.
**Step 2:** Discount on new price: $300×(1-25/100)=225$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $225$

**Distractor analysis:**
- **B** ($240$): Ignores both percent changes.
- **C** ($300$): Choice C ($300$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($240$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":9,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3151939d-578c-4bdb-a41c-63a2034ceb49', 'Which value of $x$ completes the data set?', 'Five test scores: 9, 13, 17, 21, and one score $x$ is unknown. The mean is 13.2.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=13.2×5=66$. **Step 2:** $x=6$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=13.2×5=66$.
**Step 2:** Known sum $=60$.
**Step 3:** $x=66-60=6$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($3$): Pulls the mean down too far.
- **C** ($9$): Too high for the given mean.
- **D** ($13$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":10,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('368e1d61-00e0-4f91-97d1-71badbc996bd', 'Which equation describes the line, and what does the slope tell you?', 'A line models cost vs. units, passing through $(45,178)$ and $(53,210)$.

| Units | Cost ($) |
| --- | --- |
| 23 | 90 |
| 25 | 98 |
| 27 | 106 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{210-178}{53-45}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=210$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{210}{53}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=210$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{210}{53}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":11,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de3c9a0a-5ab0-40cc-89c0-6cdb2f2796dc', 'Given the first bead drawn is red, what is the probability the second is also red?', 'A bag has 8 red and 67 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{75}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{74}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{75}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{74}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 74. **Step 2:** P $=\\frac{7}{74}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 74 total.
**Step 2:** Conditional probability $=\frac{7}{74}$.
**Step 3:** Do not use $\frac{8}{75}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{74}$

**Distractor analysis:**
- **A** ($\frac{8}{75}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{74}$): Uses original count in numerator.
- **C** ($\frac{8}{75}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":12,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ec159fab-7158-48ca-a689-03f573e5dc09', 'Which conclusion does the survey of registered voters most justify?', 'Poll: 54% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 54% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 50% and 58%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 50% to 58%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 50% to 58%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 50% and 58%

**Distractor analysis:**
- **A** (Exactly 54% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":13,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1186fc7b-31a9-40cb-8b8e-dea11d9e3e63', 'Which statement best weighs the evidence for a study''s claim about the tutoring program?', 'A critic claims "nobody likes the new app" after surveying 243 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":14,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2fd3e7df-2582-462b-8f3c-eca324fea4e9', 'Find the volume of the cooler chest, in cubic inches.', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 16 by 15">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">16 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">15 in</text>
</svg>

A rectangular sheet is 56 by 55 inches. A square corner of side 3 inches is removed, then the remainder is folded into a cooler chest 2 inches tall.', 'figure', '[{"id":"A","text":"$3080$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3071$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6142$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3080-3^2=3071$. **Step 2:** Volume $=3071×2=6142$."},{"id":"D","text":"$6145$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $56×55=3080$.
**Step 2:** Remove corner: $3^2=9$ → base $3071$.
**Step 3:** Volume $=3071×2=6142$ cu in.

**Step 3 — Answer C.** $6142$

**Distractor analysis:**
- **A** ($3080$): Forgot to subtract the removed corner.
- **B** ($3071$): Area of base only, not volume.
- **D** ($6145$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":15,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('64bc5e49-8d25-445a-a23a-97b7b8609aaa', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 144° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">88°</text>
  <text x="158" y="118" font-size="11" fill="#374151">56°</text>
  <text x="102" y="72" font-size="11" fill="#374151">36°</text>
</svg>', 'figure', '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$46°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$36°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 36°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 56 = 36°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 56° + 36° = 180°.

**Step 3 — Answer D.** $36°$

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($46°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":16,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a78ae255-0a6a-428c-8250-4fbf290fa21d', 'What is $\sin\theta$ where $\theta$ is the angle between the leaning beam and the ground?', 'A leaning beam''s foot is 30 ft from a wall; the top is 37 ft high. The leaning beam length is 48 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">10 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">17 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">20 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{30}{48}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{37}{48}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=37$, hypotenuse $=48$. **Step 2:** $\\sin\\theta=\\frac{37}{48}≈0.771$."},{"id":"C","text":"$\\frac{48}{37}$","is_correct":false,"explanation":"Choice C ($\\frac{48}{37}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{30}{37}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=37$, hypotenuse $=48$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{37}{48}$.
**Step 3:** Pythagorean check: $30^2+37^2=48^2$.
**Step 4:** $\cos\theta=\frac{30}{48}$, not the answer.

**Step 3 — Answer B.** $\frac{37}{48}$

**Distractor analysis:**
- **A** ($\frac{30}{48}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{48}{37}$): Choice C ($\frac{48}{37}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{30}{37}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":9,"module_key":"math_module_2_hard","slot":17,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":9,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
