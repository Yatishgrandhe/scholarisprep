BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('96e70bc5-b8a6-4f9d-8ca0-8befc1a50bc4', 'Which integer value of $x$ satisfies $3x + 9 > 35$ and is the smallest feasible reading?', 'A battery charge $R=ax+b$ must exceed 35 but stay at most 51 to trigger an alert.', 'passage', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$8$","is_correct":false,"explanation":"Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$10$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 8.67$. **Step 2:** Smallest integer: 10."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 35$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 26$.
**Step 2:** $x > 8.67$.
**Step 3:** Among choices, $10$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $10$

**Distractor analysis:**
- **A** ($7$): Choice A ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($8$): Choice B ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($9$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":4,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4d8d7f93-ce9b-4ae9-899c-ab32fc8562ec', 'What is the average rate of change of $h$ from $t=57$ to $t=64$?', 'Projectile height $h(t)=3(t-60)^2+62$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(57)=89$, $h(64)=110$. **Step 2:** $\\frac{110-89}{64-57}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$110$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=57$ to $t=64$?

**Step 2 — Solve.** **Step 1:** $h(57)=3(57-60)^2+62=89$.
**Step 2:** $h(64)=3(64-60)^2+62=110$.
**Step 3:** Avg rate $=\frac{110-89}{64-57}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($110$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":5,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3cc7e88c-63c9-4525-9013-42e284c820d7', 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)', '', NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-7)(x-8)=0$.
**Step 2:** Roots $x=7$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":6,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('55e70f8a-8163-4d16-9d0b-e2c4849c77d3', 'Which expression is equivalent to $(4x+60)^2 - (4x-60)^2$?', '', NULL, '[{"id":"A","text":"$960x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+60$, $v=4x-60$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$240x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+3600$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+60)^2 - (4x-60)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+60$, $v=4x-60$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(120)=960x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $960x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($240x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+3600$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":7,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6a99296-8c8b-46e4-b568-4b8476822695', 'How many orders did the first team fill?', 'Two workers split tasks in ratio $4:9$ over 16 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$187$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$190$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$192$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×16×(4+9)=624$. **Step 2:** A''s share $\\frac{4}{13}×624=192$."},{"id":"D","text":"$624$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×16×(4+9)=624$ tasks.
**Step 2:** A''s fraction $\frac{4}{13}$.
**Step 3:** $\frac{4}{13}×624=192$ tasks.

**Step 3 — Answer C.** $192$

**Distractor analysis:**
- **A** ($187$): Underestimates A''s share of the total.
- **B** ($190$): Close but ratio arithmetic is off.
- **D** ($624$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":8,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0ef82c38-4091-4a1f-9204-e61078f5bc9d', 'What is the new fare?', 'A 20% markup is applied to an item originally priced at $140.', 'passage', '[{"id":"A","text":"$140$","is_correct":false,"explanation":"Choice A ($140$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$168$","is_correct":true,"explanation":"Correct (B). **Step 1:** 140×1.20=168."},{"id":"C","text":"$178$","is_correct":false,"explanation":"Choice C ($178$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$28$","is_correct":false,"explanation":"That is only the markup amount."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the new price?

**Step 2 — Solve.** **Step 1:** $140 	imes (1 + 20/100) = 168$

**Step 3 — Answer B.** $168$

**Distractor analysis:**
- **A** ($140$): Choice A ($140$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($178$): Choice C ($178$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($28$): That is only the markup amount.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":9,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f968a74e-dcc9-4bbc-b10c-6092bbd626f5', 'Which value of $x$ completes the data set?', 'Five test scores: 53, 57, 61, 65, and one score $x$ is unknown. The mean is 57.2.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$50$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=57.2×5=286$. **Step 2:** $x=50$."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$57$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=57.2×5=286$.
**Step 2:** Known sum $=236$.
**Step 3:** $x=286-236=50$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $50$

**Distractor analysis:**
- **A** ($47$): Pulls the mean down too far.
- **C** ($53$): Too high for the given mean.
- **D** ($57$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":10,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a7ef857a-8c9f-449c-84c5-b5cf6d78e1ee', 'Which equation describes the line, and what does the slope tell you?', 'A line models cost vs. units, passing through $(6,22)$ and $(14,54)$.', 'passage', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{54-22}{14-6}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=54$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{54}{14}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=54$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{54}{14}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":11,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1f4ec0ba-47ab-4a83-8276-96a3770cbbca', 'Given the first bead drawn is red, what is the probability the second is also red?', 'A bag has 5 red and 28 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{32}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{32}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 32. **Step 2:** P $=\\frac{4}{32}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 32 total.
**Step 2:** Conditional probability $=\frac{4}{32}$.
**Step 3:** Do not use $\frac{5}{33}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{32}$

**Distractor analysis:**
- **A** ($\frac{5}{33}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{32}$): Uses original count in numerator.
- **C** ($\frac{5}{33}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":12,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d92fc1b-3219-4095-8e9e-96b9f3a8beef', 'Which conclusion does the poll of recent customers most justify?', 'Poll: 59% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 59% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 55% and 63%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 55% to 63%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 55% to 63%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 55% and 63%

**Distractor analysis:**
- **A** (Exactly 59% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":13,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e3ae89f4-fad0-4d79-b6e9-ebb3fbac2332', 'Which statement best weighs the evidence for a manufacturer''s claim about the coating?', 'A critic claims "nobody likes the new app" after surveying 369 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":14,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b9753e58-cf7a-4197-a80d-82d3464b411e', 'Find the volume of the shipping crate, in cubic inches.', 'A rectangular sheet is 17 by 16 inches. A square corner of side 3 inches is removed, then the remainder is folded into a shipping crate 2 inches tall.', 'passage', '[{"id":"A","text":"$272$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$263$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$526$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $272-3^2=263$. **Step 2:** Volume $=263×2=526$."},{"id":"D","text":"$529$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $17×16=272$.
**Step 2:** Remove corner: $3^2=9$ → base $263$.
**Step 3:** Volume $=263×2=526$ cu in.

**Step 3 — Answer C.** $526$

**Distractor analysis:**
- **A** ($272$): Forgot to subtract the removed corner.
- **B** ($263$): Area of base only, not volume.
- **D** ($529$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":15,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3013d676-4569-4a08-a355-49203a1cce25', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 148° with side $AB$.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ABC">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">A</text>
  <text x="195" y="145" font-size="12" fill="#111">B</text>
  <text x="110" y="22" font-size="12" fill="#111">C</text>
  <text x="42" y="118" font-size="11" fill="#374151">52°</text>
  <text x="158" y="118" font-size="11" fill="#374151">60°</text>
  <text x="102" y="72" font-size="11" fill="#374151">68°</text>
</svg>', 'figure', '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$42°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$32°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 32°$."}]'::jsonb, 'D', '**Step 1 — Understand.** What is $m\angle C$?

**Step 2 — Solve.** **Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 60 = 32°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 60° + 32° = 180°.

**Step 3 — Answer D.** $32°$

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($42°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":16,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87b426ad-1a4a-4bff-bae7-e2c475c20ac4', 'What is $\sin\theta$ where $\theta$ is the angle between the leaning beam and the ground?', 'A leaning beam''s foot is 28 ft from a wall; the top is 35 ft high. The leaning beam length is 45 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">8 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">15 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">17 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{28}{45}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{35}{45}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=35$, hypotenuse $=45$. **Step 2:** $\\sin\\theta=\\frac{35}{45}≈0.778$."},{"id":"C","text":"$\\frac{45}{35}$","is_correct":false,"explanation":"Choice C ($\\frac{45}{35}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{28}{35}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=35$, hypotenuse $=45$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{35}{45}$.
**Step 3:** Pythagorean check: $28^2+35^2=45^2$.
**Step 4:** $\cos\theta=\frac{28}{45}$, not the answer.

**Step 3 — Answer B.** $\frac{35}{45}$

**Distractor analysis:**
- **A** ($\frac{28}{45}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{45}{35}$): Choice C ($\frac{45}{35}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{28}{35}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":17,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ae6ac212-3a84-4669-8212-b6ad3879c1d8', 'Across a circular running track, what is half its circumference? (Use $\pi \approx 3.14$.)', 'A circular track has radius 7 meters. A runner completes half the circumference.', 'passage', '[{"id":"A","text":"$21.98$","is_correct":true,"explanation":"Correct (A). **Step 1:** $C=2\\pi r≈43.96$. **Step 2:** Half $≈21.98$ m."},{"id":"B","text":"$153.86$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not arc length."},{"id":"C","text":"$43.96$","is_correct":false,"explanation":"Full circumference, not half."},{"id":"D","text":"$21.98$","is_correct":false,"explanation":"Half of $\\pi r$, not half of $2\\pi r$."}]'::jsonb, 'A', '**Step 1 — Understand.** How far is half the circumference? (Use $\pi \approx 3.14$.)

**Step 2 — Solve.** **Step 1:** $C=2\pi r≈2(3.14)(7)=43.96$ m.
**Step 2:** Half circumference $=\frac{C}{2}≈21.98$ m.
**Step 3:** Do not confuse with area $πr^2≈153.86$.

**Step 3 — Answer A.** $21.98$

**Distractor analysis:**
- **B** ($153.86$): Area formula $\pi r^2$, not arc length.
- **C** ($43.96$): Full circumference, not half.
- **D** ($21.98$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":18,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
