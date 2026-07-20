BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bb2fb4cf-0144-409e-9999-2b9f0eff693b', 'Which integer value of $x$ satisfies $6x + 6 > 428$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 428 but stay at most 444 to trigger an alert.', 'passage', '[{"id":"A","text":"$68$","is_correct":false,"explanation":"Choice A ($68$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$69$","is_correct":false,"explanation":"Choice B ($69$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$70$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$71$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 70.33$. **Step 2:** Smallest integer: 71."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 428$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 422$.
**Step 2:** $x > 70.33$.
**Step 3:** Among choices, $71$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $71$

**Distractor analysis:**
- **A** ($68$): Choice A ($68$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($69$): Choice B ($69$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($70$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('502aa811-cbb3-4afb-99af-2ddbf6b12c76', 'What is the average rate of change of $h$ from $t=54$ to $t=61$?', 'Projectile height $h(t)=3(t-57)^2+59$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(54)=86$, $h(61)=107$. **Step 2:** $\\frac{107-86}{61-54}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$107$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=54$ to $t=61$?

**Step 2 — Solve.** **Step 1:** $h(54)=3(54-57)^2+59=86$.
**Step 2:** $h(61)=3(61-57)^2+59=107$.
**Step 3:** Avg rate $=\frac{107-86}{61-54}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($107$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8cfe243f-0e1a-4cdf-bb04-aecc9d432d88', 'Which expression is equivalent to $(4x+60)^2 - (4x-60)^2$?', NULL, NULL, '[{"id":"A","text":"$960x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+60$, $v=4x-60$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$240x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+3600$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+60)^2 - (4x-60)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+60$, $v=4x-60$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(120)=960x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $960x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($240x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+3600$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('13140af6-bf7c-4fe9-b82a-ced4544ec1ad', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:7$ over 59 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1647$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1650$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1652$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×59×(7+7)=3304$. **Step 2:** A''s share $\\frac{7}{14}×3304=1652$."},{"id":"D","text":"$3304$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×59×(7+7)=3304$ tasks.
**Step 2:** A''s fraction $\frac{7}{14}$.
**Step 3:** $\frac{7}{14}×3304=1652$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1652$

**Distractor analysis:**
- **A** ($1647$): Underestimates A''s share of the total.
- **B** ($1650$): Close but ratio arithmetic is off.
- **D** ($3304$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2b81a334-c910-4990-a334-41a909aa247f', 'If the original price is $945$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$1058$","is_correct":true,"explanation":"Correct (A). **Step 1:** $945×1.4=1323$. **Step 2:** $1323×0.8=1058$."},{"id":"B","text":"$945$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1323$","is_correct":false,"explanation":"Choice C ($1323$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1134$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $945$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $945×(1+40/100)=1323$.
**Step 2:** Discount on new price: $1323×(1-20/100)=1058$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $1058$

**Distractor analysis:**
- **B** ($945$): Ignores both percent changes.
- **C** ($1323$): Choice C ($1323$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1134$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6bae96a2-3220-4e02-9a02-7e4f81b98d48', 'What is the missing score $x$?', 'Five test scores: 62, 66, 70, 74, and one score $x$ is unknown. The mean is 66.2.', 'passage', '[{"id":"A","text":"$56$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$59$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=66.2×5=331$. **Step 2:** $x=59$."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$66$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=66.2×5=331$.
**Step 2:** Known sum $=272$.
**Step 3:** $x=331-272=59$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $59$

**Distractor analysis:**
- **A** ($56$): Pulls the mean down too far.
- **C** ($62$): Too high for the given mean.
- **D** ($66$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('37f36258-8f27-491c-97e3-ae81e1750384', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(58,230)$ and $(66,262)$.', 'passage', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{262-230}{66-58}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=262$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{262}{66}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=262$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{262}{66}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4dda3d20-27a0-47a0-b2ec-dcdc3c40305b', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 63 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{71}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{70}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{71}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{70}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 70. **Step 2:** P $=\\frac{7}{70}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 70 total.
**Step 2:** Conditional probability $=\frac{7}{70}$.
**Step 3:** Do not use $\frac{8}{71}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{7}{70}$

**Distractor analysis:**
- **A** ($\frac{8}{71}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{70}$): Uses original count in numerator.
- **C** ($\frac{8}{71}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('73338060-e0d4-4d73-ae67-0313df6fd2f9', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 61 by 60 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3660$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3651$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7302$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3660-3^2=3651$. **Step 2:** Volume $=3651×2=7302$."},{"id":"D","text":"$7305$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $61×60=3660$.
**Step 2:** Remove corner: $3^2=9$ → base $3651$.
**Step 3:** Volume $=3651×2=7302$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $7302$

**Distractor analysis:**
- **A** ($3660$): Forgot to subtract the removed corner.
- **B** ($3651$): Area of base only, not volume.
- **D** ($7305$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a92a49f1-538a-4557-a0e1-e9fa68ca5fbf', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 61 ft from a wall; the top is 68 ft high. The ladder length is 91 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">21 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">28 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">35 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{61}{91}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{68}{91}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=68$, hypotenuse $=91$. **Step 2:** $\\sin\\theta=\\frac{68}{91}≈0.747$."},{"id":"C","text":"$\\frac{91}{68}$","is_correct":false,"explanation":"Choice C ($\\frac{91}{68}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{61}{68}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=68$, hypotenuse $=91$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{68}{91}$.
**Step 3:** Pythagorean check: $61^2+68^2=91^2$.
**Step 4:** $\cos\theta=\frac{61}{91}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{68}{91}$

**Distractor analysis:**
- **A** ($\frac{61}{91}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{91}{68}$): Choice C ($\frac{91}{68}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{61}{68}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('10c26472-41f1-46d6-a32f-74b2ff49c59d', 'For what value of $k$ does $5(x-5)+2k = 290$ have solution $x=61$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=61$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$61$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-5)+2k = 290$ have solution $x=61$?

**Step 2 — Solve.** **Step 1:** Substitute $x=61$: $5(61-k)+2k=290$.
**Step 2:** Expand: $305-5k+2k=290$ → $305+-3k=290$.
**Step 3:** Isolate: $-3k=-15$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($61$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('caf616ad-dd29-47f1-9ab0-ba346f997f63', 'Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?', NULL, NULL, '[{"id":"A","text":"$-542$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-551$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-547$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-61)=-547$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{83-53}{65-59}=5$.
**Step 2:** Point-slope: $f(-61)=5(-61-59)+(53)$.
**Step 3:** $f(-61)=-547$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-547$

**Distractor analysis:**
- **A** ($-542$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-551$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3f75a4bc-27b5-4a4e-8dc8-2e9961c1d4c4', 'If the vehicle continues at the same rate, what is $d$ when $t=68$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+58$. At $t=60$, $d=238$.', 'passage', '[{"id":"A","text":"$259$","is_correct":false,"explanation":"Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$241$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=68$."},{"id":"C","text":"$262$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(68)+58$. **Step 2:** $d=262$."},{"id":"D","text":"$204$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=68$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $58$.
**Step 2:** $d=3(68)+58=262$.
**Step 3:** Cross-check via $(68-60)×3+238=262$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $262$

**Distractor analysis:**
- **A** ($259$): Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($241$): Adds slope once instead of evaluating at $t=68$.
- **D** ($204$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('177a2015-ae2a-4e74-a603-7318e77c659f', 'Given $x+y=129$ and $3x-y=81$, what is $x$?', 'At an event, 129 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=81$.', 'passage', '[{"id":"A","text":"$70$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=280$. **Step 2:** $x=70$."},{"id":"B","text":"$69$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$71$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=129$ and $3x-y=81$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=129+81$ → $4x=280$.
**Step 2:** $x=70$.
**Step 3:** Back-substitute: $y=59$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $70$

**Distractor analysis:**
- **B** ($69$): One less than the solution.
- **C** ($59$): Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($71$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c1243f09-66e1-4977-9668-b215906ee6d9', 'Which integer value of $x$ satisfies $3x + 7 > 219$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 219 but stay at most 235 to trigger an alert.', 'passage', '[{"id":"A","text":"$69$","is_correct":false,"explanation":"Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$70$","is_correct":false,"explanation":"Choice B ($70$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$71$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$72$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 70.67$. **Step 2:** Smallest integer: 72."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 219$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 212$.
**Step 2:** $x > 70.67$.
**Step 3:** Among choices, $72$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $72$

**Distractor analysis:**
- **A** ($69$): Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($70$): Choice B ($70$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($71$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7414f2cf-9ee2-47e5-9675-6f7188d136a2', 'What is the average rate of change of $h$ from $t=55$ to $t=62$?', 'Projectile height $h(t)=4(t-58)^2+60$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(55)=96$, $h(62)=124$. **Step 2:** $\\frac{124-96}{62-55}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$124$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=55$ to $t=62$?

**Step 2 — Solve.** **Step 1:** $h(55)=4(55-58)^2+60=96$.
**Step 2:** $h(62)=4(62-58)^2+60=124$.
**Step 3:** Avg rate $=\frac{124-96}{62-55}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($124$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c17a61a7-4418-4e67-b6c9-b0d5f45743df', 'Which expression is equivalent to $(5x+61)^2 - (5x-61)^2$?', NULL, NULL, '[{"id":"A","text":"$1220x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+61$, $v=5x-61$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$244x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+3721$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+61)^2 - (5x-61)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+61$, $v=5x-61$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(122)=1220x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $1220x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($244x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+3721$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7fa85b56-21ad-45cb-8c09-1ef862b52fec', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:8$ over 60 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1195$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1198$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1200$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×60×(4+8)=3600$. **Step 2:** A''s share $\\frac{4}{12}×3600=1200$."},{"id":"D","text":"$3600$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×60×(4+8)=3600$ tasks.
**Step 2:** A''s fraction $\frac{4}{12}$.
**Step 3:** $\frac{4}{12}×3600=1200$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1200$

**Distractor analysis:**
- **A** ($1195$): Underestimates A''s share of the total.
- **B** ($1198$): Close but ratio arithmetic is off.
- **D** ($3600$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e22fa117-8589-477a-9164-661a82ab7cea', 'If the original price is $960$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $960×1.25=1200$. **Step 2:** $1200×0.75=900$."},{"id":"B","text":"$960$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1200$","is_correct":false,"explanation":"Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$960$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $960$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $960×(1+25/100)=1200$.
**Step 2:** Discount on new price: $1200×(1-25/100)=900$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $900$

**Distractor analysis:**
- **B** ($960$): Ignores both percent changes.
- **C** ($1200$): Choice C ($1200$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($960$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c24f9bd3-105d-4b8a-b2f6-f45743bec53e', 'What is the missing score $x$?', 'Five test scores: 63, 67, 71, 75, and one score $x$ is unknown. The mean is 67.2.', 'passage', '[{"id":"A","text":"$57$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$60$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=67.2×5=336$. **Step 2:** $x=60$."},{"id":"C","text":"$63$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$67$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=67.2×5=336$.
**Step 2:** Known sum $=276$.
**Step 3:** $x=336-276=60$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $60$

**Distractor analysis:**
- **A** ($57$): Pulls the mean down too far.
- **C** ($63$): Too high for the given mean.
- **D** ($67$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b3727bf7-77c4-43af-a018-9ce0b1f14931', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(59,234)$ and $(67,266)$.

| Units | Cost ($) |
| --- | --- |
| 17 | 66 |
| 19 | 74 |
| 21 | 82 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{266-234}{67-59}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=266$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{266}{67}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=266$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{266}{67}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('64d3d901-3046-4d99-8c84-c94a8c2860cc', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 64 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{69}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{68}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{69}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{68}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 68. **Step 2:** P $=\\frac{4}{68}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 68 total.
**Step 2:** Conditional probability $=\frac{4}{68}$.
**Step 3:** Do not use $\frac{5}{69}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{4}{68}$

**Distractor analysis:**
- **A** ($\frac{5}{69}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{68}$): Uses original count in numerator.
- **C** ($\frac{5}{69}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b15f2fda-4b4e-4c1b-9584-4f57aa90dfb7', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 62 by 61 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3782$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3773$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7546$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3782-3^2=3773$. **Step 2:** Volume $=3773×2=7546$."},{"id":"D","text":"$7549$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $62×61=3782$.
**Step 2:** Remove corner: $3^2=9$ → base $3773$.
**Step 3:** Volume $=3773×2=7546$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $7546$

**Distractor analysis:**
- **A** ($3782$): Forgot to subtract the removed corner.
- **B** ($3773$): Area of base only, not volume.
- **D** ($7549$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1a5fad71-7a44-4dc0-a824-54e0e3356146', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 62 ft from a wall; the top is 69 ft high. The ladder length is 93 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">22 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">29 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">36 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{62}{93}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{69}{93}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=69$, hypotenuse $=93$. **Step 2:** $\\sin\\theta=\\frac{69}{93}≈0.742$."},{"id":"C","text":"$\\frac{93}{69}$","is_correct":false,"explanation":"Choice C ($\\frac{93}{69}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{62}{69}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=69$, hypotenuse $=93$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{69}{93}$.
**Step 3:** Pythagorean check: $62^2+69^2=93^2$.
**Step 4:** $\cos\theta=\frac{62}{93}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{69}{93}$

**Distractor analysis:**
- **A** ($\frac{62}{93}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{93}{69}$): Choice C ($\frac{93}{69}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{62}{69}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7bf786a3-9f12-46cd-84d0-99770f733e66', 'For what value of $k$ does $6(x-6)+2k = 348$ have solution $x=62$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=62$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$62$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-6)+2k = 348$ have solution $x=62$?

**Step 2 — Solve.** **Step 1:** Substitute $x=62$: $6(62-k)+2k=348$.
**Step 2:** Expand: $372-6k+2k=348$ → $372+-4k=348$.
**Step 3:** Isolate: $-4k=-24$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($62$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dd16f430-cc36-42b5-b772-c9b49c1ce30d', 'Linear function $f$ models temperature. $f(60)=54$ and $f(66)=72$. What is $f(-62)$?', NULL, NULL, '[{"id":"A","text":"$-309$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-316$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-312$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-62)=-312$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(60)=54$ and $f(66)=72$. What is $f(-62)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{72-54}{66-60}=3$.
**Step 2:** Point-slope: $f(-62)=3(-62-60)+(54)$.
**Step 3:** $f(-62)=-312$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-312$

**Distractor analysis:**
- **A** ($-309$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-316$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d27ab7be-63b1-4232-9903-f0f978635dea', 'If the vehicle continues at the same rate, what is $d$ when $t=69$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+59$. At $t=61$, $d=303$.', 'passage', '[{"id":"A","text":"$331$","is_correct":false,"explanation":"Choice A ($331$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$307$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=69$."},{"id":"C","text":"$335$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(69)+59$. **Step 2:** $d=335$."},{"id":"D","text":"$276$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=69$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $59$.
**Step 2:** $d=4(69)+59=335$.
**Step 3:** Cross-check via $(69-61)×4+303=335$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $335$

**Distractor analysis:**
- **A** ($331$): Choice A ($331$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($307$): Adds slope once instead of evaluating at $t=69$.
- **D** ($276$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('22e919c5-6f92-4729-9d02-b606a7705a83', 'Given $x+y=131$ and $4x-y=82$, what is $x$?', 'At an event, 131 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=82$.', 'passage', '[{"id":"A","text":"$71$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=355$. **Step 2:** $x=71$."},{"id":"B","text":"$70$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$60$","is_correct":false,"explanation":"Choice C ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$72$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=131$ and $4x-y=82$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=131+82$ → $5x=355$.
**Step 2:** $x=71$.
**Step 3:** Back-substitute: $y=60$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $71$

**Distractor analysis:**
- **B** ($70$): One less than the solution.
- **C** ($60$): Choice C ($60$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($72$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5ae1f7e8-1e3d-4084-9fb4-4fc772ba0743', 'Which integer value of $x$ satisfies $4x + 8 > 296$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 296 but stay at most 312 to trigger an alert.', 'passage', '[{"id":"A","text":"$70$","is_correct":false,"explanation":"Choice A ($70$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$71$","is_correct":false,"explanation":"Choice B ($71$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$72$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$73$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 72.00$. **Step 2:** Smallest integer: 73."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 296$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 288$.
**Step 2:** $x > 72.00$.
**Step 3:** Among choices, $73$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $73$

**Distractor analysis:**
- **A** ($70$): Choice A ($70$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($71$): Choice B ($71$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($72$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('da0e6ee8-3b0d-4af4-9a8f-658921a6aed6', 'What is the average rate of change of $h$ from $t=56$ to $t=63$?', 'Projectile height $h(t)=2(t-59)^2+61$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(56)=79$, $h(63)=93$. **Step 2:** $\\frac{93-79}{63-56}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$93$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=56$ to $t=63$?

**Step 2 — Solve.** **Step 1:** $h(56)=2(56-59)^2+61=79$.
**Step 2:** $h(63)=2(63-59)^2+61=93$.
**Step 3:** Avg rate $=\frac{93-79}{63-56}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($93$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('406cb5e1-43a0-4cd4-b599-69fad6bb4609', 'Which expression is equivalent to $(3x+62)^2 - (3x-62)^2$?', NULL, NULL, '[{"id":"A","text":"$744x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+62$, $v=3x-62$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$248x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+3844$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+62)^2 - (3x-62)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+62$, $v=3x-62$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(124)=744x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $744x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($248x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+3844$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8bfb2a67-eea4-47b3-867c-64660e400ba1', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:9$ over 61 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$910$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$913$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$915$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×61×(5+9)=2562$. **Step 2:** A''s share $\\frac{5}{14}×2562=915$."},{"id":"D","text":"$2562$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×61×(5+9)=2562$ tasks.
**Step 2:** A''s fraction $\frac{5}{14}$.
**Step 3:** $\frac{5}{14}×2562=915$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $915$

**Distractor analysis:**
- **A** ($910$): Underestimates A''s share of the total.
- **B** ($913$): Close but ratio arithmetic is off.
- **D** ($2562$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3644edbd-96ec-42d4-b8bb-76fc0e915776', 'If the original price is $975$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$1078$","is_correct":true,"explanation":"Correct (A). **Step 1:** $975×1.3=1268$. **Step 2:** $1268×0.85=1078$."},{"id":"B","text":"$975$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1268$","is_correct":false,"explanation":"Choice C ($1268$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1121$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $975$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $975×(1+30/100)=1268$.
**Step 2:** Discount on new price: $1268×(1-15/100)=1078$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $1078$

**Distractor analysis:**
- **B** ($975$): Ignores both percent changes.
- **C** ($1268$): Choice C ($1268$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1121$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4b4687d4-ca7c-44a7-954c-515d41cfc855', 'What is the missing score $x$?', 'Five test scores: 64, 68, 72, 76, and one score $x$ is unknown. The mean is 68.2.

| Student | Score |
| --- | --- |
| S1 | 29 |
| S2 | 32 |
| S3 | 35 |
| S4 | 38 |', 'table', '[{"id":"A","text":"$58$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$61$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=68.2×5=341$. **Step 2:** $x=61$."},{"id":"C","text":"$64$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$68$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=68.2×5=341$.
**Step 2:** Known sum $=280$.
**Step 3:** $x=341-280=61$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $61$

**Distractor analysis:**
- **A** ($58$): Pulls the mean down too far.
- **C** ($64$): Too high for the given mean.
- **D** ($68$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('38893767-f91d-4365-a15b-a8e934f157b4', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(60,238)$ and $(68,270)$.', 'passage', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{270-238}{68-60}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=270$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{270}{68}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=270$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{270}{68}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c7e45b14-3970-4a59-9be1-090fc2829e85', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 65 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{71}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{70}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{71}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{70}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 70. **Step 2:** P $=\\frac{5}{70}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 70 total.
**Step 2:** Conditional probability $=\frac{5}{70}$.
**Step 3:** Do not use $\frac{6}{71}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{5}{70}$

**Distractor analysis:**
- **A** ($\frac{6}{71}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{70}$): Uses original count in numerator.
- **C** ($\frac{6}{71}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('864a6941-b91e-40ba-bbda-8489c1c7d1d7', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 63 by 62 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3906$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3897$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7794$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3906-3^2=3897$. **Step 2:** Volume $=3897×2=7794$."},{"id":"D","text":"$7797$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $63×62=3906$.
**Step 2:** Remove corner: $3^2=9$ → base $3897$.
**Step 3:** Volume $=3897×2=7794$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $7794$

**Distractor analysis:**
- **A** ($3906$): Forgot to subtract the removed corner.
- **B** ($3897$): Area of base only, not volume.
- **D** ($7797$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('36b0ceba-5c73-4b61-b40c-f9fff97603d2', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 63 ft from a wall; the top is 70 ft high. The ladder length is 94 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">23 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">30 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">38 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{63}{94}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{70}{94}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=70$, hypotenuse $=94$. **Step 2:** $\\sin\\theta=\\frac{70}{94}≈0.745$."},{"id":"C","text":"$\\frac{94}{70}$","is_correct":false,"explanation":"Choice C ($\\frac{94}{70}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{63}{70}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=70$, hypotenuse $=94$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{70}{94}$.
**Step 3:** Pythagorean check: $63^2+70^2=94^2$.
**Step 4:** $\cos\theta=\frac{63}{94}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{70}{94}$

**Distractor analysis:**
- **A** ($\frac{63}{94}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{94}{70}$): Choice C ($\frac{94}{70}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{63}{70}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5cec41e2-5e28-4ac1-9639-27cc011f86f1', 'For what value of $k$ does $7(x-7)+2k = 406$ have solution $x=63$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=63$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$63$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-7)+2k = 406$ have solution $x=63$?

**Step 2 — Solve.** **Step 1:** Substitute $x=63$: $7(63-k)+2k=406$.
**Step 2:** Expand: $441-7k+2k=406$ → $441+-5k=406$.
**Step 3:** Isolate: $-5k=-35$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($63$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0b7b2534-e15f-4f9c-8aa0-fada30080c8f', 'Linear function $f$ models temperature. $f(61)=55$ and $f(67)=79$. What is $f(-63)$?', NULL, NULL, '[{"id":"A","text":"$-437$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-445$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-441$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-63)=-441$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(61)=55$ and $f(67)=79$. What is $f(-63)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{79-55}{67-61}=4$.
**Step 2:** Point-slope: $f(-63)=4(-63-61)+(55)$.
**Step 3:** $f(-63)=-441$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-441$

**Distractor analysis:**
- **A** ($-437$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-445$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
