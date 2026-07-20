BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f486f9c1-5232-422a-8936-11d00c2ae8ca', 'Solve for $x$: $2x + 4 = 18$', '', NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$6$","is_correct":false,"explanation":"Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 4. **Step 2:** Divide by 2."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $2x + 4 = 18$

**Step 2 — Solve.** **Step 1:** $2x = 14$
**Step 2:** $x = 7$

**Step 3 — Answer C.** $7$

**Distractor analysis:**
- **A** ($5$): Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($6$): Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($8$): Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":0,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a8d69442-ffe9-4b79-aa2d-daaaccb85ac0', 'Linear function $f$ models temperature. $f(15)=9$ and $f(21)=27$. What is $f(-17)$?', '', NULL, '[{"id":"A","text":"$-84$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-91$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-87$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-17)=-87$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(15)=9$ and $f(21)=27$. What is $f(-17)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{27-9}{21-15}=3$.
**Step 2:** Point-slope: $f(-17)=3(-17-15)+(9)$.
**Step 3:** $f(-17)=-87$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-87$

**Distractor analysis:**
- **A** ($-84$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-91$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":1,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9b001f7d-018a-48ac-a7fa-f2c3041ed390', 'If the delivery van continues at the same rate, what is $d$ when $t=18$?', 'A delivery van''s distance $d$ (miles) after $t$ hours is $d=5t+8$. At $t=10$, $d=58$.', 'passage', '[{"id":"A","text":"$93$","is_correct":false,"explanation":"Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=18$."},{"id":"C","text":"$98$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(18)+8$. **Step 2:** $d=98$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=18$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $8$.
**Step 2:** $d=5(18)+8=98$.
**Step 3:** Cross-check via $(18-10)×5+58=98$.

**Step 3 — Answer C.** $98$

**Distractor analysis:**
- **A** ($93$): Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($63$): Adds slope once instead of evaluating at $t=18$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":2,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f4dff70-79ef-4b58-b3d0-c89a8622a6d5', 'Given $x+y=101$ and $3x-y=55$, what is $x$?', 'At an event, 101 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=55$.', 'passage', '[{"id":"A","text":"$52$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=208$. **Step 2:** $x=52$."},{"id":"B","text":"$51$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$53$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=101$ and $3x-y=55$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=101+55$ → $4x=208$.
**Step 2:** $x=52$.
**Step 3:** Back-substitute: $y=49$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $52$

**Distractor analysis:**
- **B** ($51$): One less than the solution.
- **C** ($49$): Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($53$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":3,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8be0178-d3f6-4761-bcd4-bafc2ec8a1cd', 'Which integer value of $x$ satisfies $6x + 8 > 70$ and is the smallest feasible reading?', 'A signal strength $R=ax+b$ must exceed 70 but stay at most 86 to trigger an alert.', 'passage', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Choice A ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$9$","is_correct":false,"explanation":"Choice B ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$11$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 10.33$. **Step 2:** Smallest integer: 11."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 70$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 62$.
**Step 2:** $x > 10.33$.
**Step 3:** Among choices, $11$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $11$

**Distractor analysis:**
- **A** ($8$): Choice A ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($9$): Choice B ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($10$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":4,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('231da216-707a-443a-8bdb-3a0200d8a9b0', 'What is the average rate of change of $h$ from $t=19$ to $t=26$?', 'Projectile height $h(t)=4(t-22)^2+24$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(19)=60$, $h(26)=88$. **Step 2:** $\\frac{88-60}{26-19}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$88$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=19$ to $t=26$?

**Step 2 — Solve.** **Step 1:** $h(19)=4(19-22)^2+24=60$.
**Step 2:** $h(26)=4(26-22)^2+24=88$.
**Step 3:** Avg rate $=\frac{88-60}{26-19}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($88$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":5,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a5443f83-e31e-40a3-91f3-26fbff227c1a', 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)', '', NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":6,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a337e425-5502-40a9-96a4-0301d864beba', 'Which expression is equivalent to $(3x+59)^2 - (3x-59)^2$?', '', NULL, '[{"id":"A","text":"$708x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+59$, $v=3x-59$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$236x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+3481$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+59)^2 - (3x-59)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+59$, $v=3x-59$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(118)=708x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $708x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($236x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+3481$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":7,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('efc8aea7-e452-4bfb-a465-e541d5f27021', 'How many parts did the first machine produce?', 'Two workers split tasks in ratio $7:8$ over 15 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$520$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$523$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$525$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×15×(7+8)=1125$. **Step 2:** A''s share $\\frac{7}{15}×1125=525$."},{"id":"D","text":"$1125$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×15×(7+8)=1125$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×1125=525$ tasks.

**Step 3 — Answer C.** $525$

**Distractor analysis:**
- **A** ($520$): Underestimates A''s share of the total.
- **B** ($523$): Close but ratio arithmetic is off.
- **D** ($1125$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":8,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('caf00324-f251-4dc7-8023-15287bdcd6dc', 'If the original subscription fee is $540$, what is the final subscription fee after both changes?', 'A subscription fee is marked up 25%, then discounted 20% on the new subscription fee.', 'passage', '[{"id":"A","text":"$540$","is_correct":true,"explanation":"Correct (A). **Step 1:** $540×1.25=675$. **Step 2:** $675×0.8=540$."},{"id":"B","text":"$540$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$675$","is_correct":false,"explanation":"Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$567$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $540$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $540×(1+25/100)=675$.
**Step 2:** Discount on new price: $675×(1-20/100)=540$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $540$

**Distractor analysis:**
- **B** ($540$): Ignores both percent changes.
- **C** ($675$): Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($567$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":9,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('28677933-bf9d-47c2-ad12-a5a90b3966de', 'What must $x$ be for the set described?', 'Five test scores: 29, 33, 37, 41, and one score $x$ is unknown. The mean is 33.2.', 'passage', '[{"id":"A","text":"$23$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$26$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=33.2×5=166$. **Step 2:** $x=26$."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$33$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=33.2×5=166$.
**Step 2:** Known sum $=140$.
**Step 3:** $x=166-140=26$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $26$

**Distractor analysis:**
- **A** ($23$): Pulls the mean down too far.
- **C** ($29$): Too high for the given mean.
- **D** ($33$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":10,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3fa8c834-d33d-48fe-a898-b873c0c377fa', 'Which equation models the line, and what does its slope mean in context?', 'A line models cost vs. units, passing through $(5,18)$ and $(13,50)$.

| Units | Cost ($) |
| --- | --- |
| 23 | 90 |
| 25 | 98 |
| 27 | 106 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{50-18}{13-5}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=50$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{50}{13}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=50$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{50}{13}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":11,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c9e7fcea-2e56-45d2-b33e-561c0ce1cdec', 'If the first ticket is red, find the probability the next ticket is red too.', 'A bag has 8 red and 27 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{35}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{34}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{35}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{34}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 34. **Step 2:** P $=\\frac{7}{34}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 34 total.
**Step 2:** Conditional probability $=\frac{7}{34}$.
**Step 3:** Do not use $\frac{8}{35}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{34}$

**Distractor analysis:**
- **A** ($\frac{8}{35}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{34}$): Uses original count in numerator.
- **C** ($\frac{8}{35}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":12,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6cdfc719-e3b4-4876-a0d7-621de9af5b34', 'Based on the sample of city commuters, which inference is most defensible?', 'Poll: 58% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 58% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 54% and 62%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 54% to 62%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 54% to 62%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 54% and 62%

**Distractor analysis:**
- **A** (Exactly 58% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":13,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('126cafa5-92d3-4fe3-b634-e202281bf2bb', 'Which choice best evaluates an analyst''s claim about the ad campaign using the data?', 'A critic claims "nobody likes the new app" after surveying 363 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":8,"module_key":"math_module_2_hard","slot":14,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":8,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
