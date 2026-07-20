BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ad5569e9-24a0-48bd-9792-4c973ee1385e', 'What is the average rate of change of $h$ from $t=21$ to $t=28$?', 'Projectile height $h(t)=3(t-24)^2+26$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(21)=53$, $h(28)=74$. **Step 2:** $\\frac{74-53}{28-21}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$74$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=21$ to $t=28$?

**Step 2 — Solve.** **Step 1:** $h(21)=3(21-24)^2+26=53$.
**Step 2:** $h(28)=3(28-24)^2+26=74$.
**Step 3:** Avg rate $=\frac{74-53}{28-21}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($74$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":5,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9ce0ef6b-b6b2-44d3-b437-d60351284aac', 'For $x^2 - 17x + 72 = 0$, what is the positive solution? (Discriminant $=1$.)', '', NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$19$","is_correct":false,"explanation":"Choice D ($19$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 17x + 72 = 0$, what is the positive solution? (Discriminant $=1$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-9)=0$.
**Step 2:** Roots $x=8$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Step 3 — Answer C.** $9$

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($17$): Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): Choice D ($19$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":6,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5053c62c-ed5c-484d-8c0c-3b4f375f7159', 'Which expression is equivalent to $(5x+61)^2 - (5x-61)^2$?', '', NULL, '[{"id":"A","text":"$1220x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+61$, $v=5x-61$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$244x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+3721$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+61)^2 - (5x-61)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+61$, $v=5x-61$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(122)=1220x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $1220x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($244x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+3721$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":7,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4a3b29c9-a4fc-4ea6-b9a8-7249971ee429', 'How many parts did the first machine produce?', 'Two workers split tasks in ratio $6:7$ over 54 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1615$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1618$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1620$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×54×(6+7)=3510$. **Step 2:** A''s share $\\frac{6}{13}×3510=1620$."},{"id":"D","text":"$3510$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×54×(6+7)=3510$ tasks.
**Step 2:** A''s fraction $\frac{6}{13}$.
**Step 3:** $\frac{6}{13}×3510=1620$ tasks.

**Step 3 — Answer C.** $1620$

**Distractor analysis:**
- **A** ($1615$): Underestimates A''s share of the total.
- **B** ($1618$): Close but ratio arithmetic is off.
- **D** ($3510$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":8,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('efc5d6f5-8d3a-44bf-9a59-434268f89a66', 'If the original ticket price is $570$, what is the final ticket price after both changes?', 'A ticket price is marked up 35%, then discounted 15% on the new ticket price.', 'passage', '[{"id":"A","text":"$655$","is_correct":true,"explanation":"Correct (A). **Step 1:** $570×1.35=770$. **Step 2:** $770×0.85=655$."},{"id":"B","text":"$570$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$770$","is_correct":false,"explanation":"Choice C ($770$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$684$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $570$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $570×(1+35/100)=770$.
**Step 2:** Discount on new price: $770×(1-15/100)=655$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $655$

**Distractor analysis:**
- **B** ($570$): Ignores both percent changes.
- **C** ($770$): Choice C ($770$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($684$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":9,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4869fb36-d28f-4fa3-ae25-025bf910589a', 'What is the missing value $x$?', 'Five test scores: 54, 58, 62, 66, and one score $x$ is unknown. The mean is 58.2.', 'passage', '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$51$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=58.2×5=291$. **Step 2:** $x=51$."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$58$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=58.2×5=291$.
**Step 2:** Known sum $=240$.
**Step 3:** $x=291-240=51$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $51$

**Distractor analysis:**
- **A** ($48$): Pulls the mean down too far.
- **C** ($54$): Too high for the given mean.
- **D** ($58$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":10,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dc5ba120-bd3c-4847-9716-ad2001feb26e', 'Which equation fits the line, and how should the slope be interpreted?', 'A line models cost vs. units, passing through $(7,26)$ and $(15,58)$.

| Units | Cost ($) |
| --- | --- |
| 25 | 98 |
| 27 | 106 |
| 29 | 114 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{58-26}{15-7}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=58$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{58}{15}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=58$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{58}{15}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":11,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a576d153-0f24-4066-be4d-f1e9b9caf8f0', 'After drawing one red tile, what is the chance the second tile is red?', 'A bag has 6 red and 29 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{35}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{34}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{35}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{34}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 34. **Step 2:** P $=\\frac{5}{34}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 34 total.
**Step 2:** Conditional probability $=\frac{5}{34}$.
**Step 3:** Do not use $\frac{6}{35}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{34}$

**Distractor analysis:**
- **A** ($\frac{6}{35}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{34}$): Uses original count in numerator.
- **C** ($\frac{6}{35}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":12,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('241467f5-9348-4f4a-910f-3fd6b7028a13', 'From the sample of city commuters, which conclusion is best supported?', 'Poll: 60% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 60% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 56% and 64%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 56% to 64%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 56% to 64%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 56% and 64%

**Distractor analysis:**
- **A** (Exactly 60% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":13,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0c48cbf-e56a-4101-895a-b99bd89f3f12', 'Based on the data, which choice most fairly assesses an analyst''s claim about the ad campaign?', 'A critic claims "nobody likes the new app" after surveying 375 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":14,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a9af8d8e-6d83-4b2b-80c9-975ecf346f43', 'What is the volume of the cooler chest, in cubic inches?', 'A rectangular sheet is 18 by 17 inches. A square corner of side 3 inches is removed, then the remainder is folded into a cooler chest 2 inches tall.', 'passage', '[{"id":"A","text":"$306$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$297$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$594$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $306-3^2=297$. **Step 2:** Volume $=297×2=594$."},{"id":"D","text":"$597$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $18×17=306$.
**Step 2:** Remove corner: $3^2=9$ → base $297$.
**Step 3:** Volume $=297×2=594$ cu in.

**Step 3 — Answer C.** $594$

**Distractor analysis:**
- **A** ($306$): Forgot to subtract the removed corner.
- **B** ($297$): Area of base only, not volume.
- **D** ($597$): Adds corner length instead of using height.', NULL, 'Geometry and Trigonometry', 'Area and volume', 'math', 'geometry', 'ARE', 'ARE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":15,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9b844064-578b-4943-9d06-5eadcc63a599', 'What is $m\angle C$?', 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 134° with side $AB$.

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
- **C** ($56°$): Too large for the triangle angle sum.', NULL, 'Geometry and Trigonometry', 'Lines, angles, and triangles', 'math', 'geometry', 'LIN_G', 'LIN_G', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":16,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90acc298-5d02-4faf-bdaa-6409cad60b04', 'What is $\sin\theta$ where $\theta$ is the angle between the zip line and the ground?', 'A zip line''s foot is 52 ft from a wall; the top is 59 ft high. The zip line length is 79 ft.

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
- **D** ($\frac{52}{59}$): Uses a leg ratio, not sine.', NULL, 'Geometry and Trigonometry', 'Right triangles and trigonometry', 'math', 'geometry', 'RIG', 'RIG', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":17,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f363af7d-79f6-4bbf-bf93-2f77d5f91409', 'What is the length of a semicircular arc of a clock face? (Use $\pi \approx 3.14$.)', 'A circular track has radius 8 meters. A runner completes half the circumference.

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
- **D** ($25.12$): Half of $\pi r$, not half of $2\pi r$.', NULL, 'Geometry and Trigonometry', 'Circles', 'math', 'geometry', 'CIR', 'CIR', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":18,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5504a457-3a3d-4049-8431-c10d0057e3bd', 'For what value of $k$ does $4(x-5)+2k = 90$ have solution $x=25$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=25$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$25$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-5)+2k = 90$ have solution $x=25$?

**Step 2 — Solve.** **Step 1:** Substitute $x=25$: $4(25-k)+2k=90$.
**Step 2:** Expand: $100-4k+2k=90$ → $100+-2k=90$.
**Step 3:** Isolate: $-2k=-10$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($25$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":5,"module_key":"math_module_1","slot":19,"filter_section":"math","module_index":1,"m2_variant":null,"form_hardness":5,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
