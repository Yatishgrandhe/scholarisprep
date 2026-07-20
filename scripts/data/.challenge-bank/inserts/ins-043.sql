BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9f0bfb77-26e5-4606-8213-d2b675875380', 'Which expression is equivalent to $(4x+57)^2 - (4x-57)^2$?', NULL, NULL, '[{"id":"A","text":"$912x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+57$, $v=4x-57$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$228x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+3249$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+57)^2 - (4x-57)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+57$, $v=4x-57$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(114)=912x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $912x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($228x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+3249$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f94b269a-ba99-4f33-bfcb-c9c92a9f74a1', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:9$ over 56 hours at 4 tasks/hour combined.', 'passage', '[{"id":"A","text":"$891$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$894$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$896$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×56×(4+9)=2912$. **Step 2:** A''s share $\\frac{4}{13}×2912=896$."},{"id":"D","text":"$2912$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=4×56×(4+9)=2912$ tasks.
**Step 2:** A''s fraction $\frac{4}{13}$.
**Step 3:** $\frac{4}{13}×2912=896$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $896$

**Distractor analysis:**
- **A** ($891$): Underestimates A''s share of the total.
- **B** ($894$): Close but ratio arithmetic is off.
- **D** ($2912$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d9584efc-8c12-4e16-afd5-76ac4a9e8b5b', 'If the original price is $900$, what is the final price after both changes?', 'A price is marked up 25%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $900×1.25=1125$. **Step 2:** $1125×0.8=900$."},{"id":"B","text":"$900$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1125$","is_correct":false,"explanation":"Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$945$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $900$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $900×(1+25/100)=1125$.
**Step 2:** Discount on new price: $1125×(1-20/100)=900$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $900$

**Distractor analysis:**
- **B** ($900$): Ignores both percent changes.
- **C** ($1125$): Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($945$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9ab1bed9-6946-4b29-96db-24a8854b58a1', 'What is the missing score $x$?', 'Five test scores: 59, 63, 67, 71, and one score $x$ is unknown. The mean is 63.2.', 'passage', '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$56$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=63.2×5=316$. **Step 2:** $x=56$."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$63$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=63.2×5=316$.
**Step 2:** Known sum $=260$.
**Step 3:** $x=316-260=56$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $56$

**Distractor analysis:**
- **A** ($53$): Pulls the mean down too far.
- **C** ($59$): Too high for the given mean.
- **D** ($63$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('873764ac-2590-4902-a39f-be78528446b0', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(55,218)$ and $(63,250)$.

| Units | Cost ($) |
| --- | --- |
| 13 | 50 |
| 15 | 58 |
| 17 | 66 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{250-218}{63-55}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=250$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{250}{63}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=250$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{250}{63}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6acd4af2-dc81-4f9c-9024-5cfb16dd91f3', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 60 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{65}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{64}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{65}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{64}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 64. **Step 2:** P $=\\frac{4}{64}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 64 total.
**Step 2:** Conditional probability $=\frac{4}{64}$.
**Step 3:** Do not use $\frac{5}{65}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{4}{64}$

**Distractor analysis:**
- **A** ($\frac{5}{65}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{64}$): Uses original count in numerator.
- **C** ($\frac{5}{65}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9f9d2ccc-83a2-4841-baa6-69fe69c6a73c', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 58 by 57 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3306$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3297$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6594$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3306-3^2=3297$. **Step 2:** Volume $=3297×2=6594$."},{"id":"D","text":"$6597$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $58×57=3306$.
**Step 2:** Remove corner: $3^2=9$ → base $3297$.
**Step 3:** Volume $=3297×2=6594$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $6594$

**Distractor analysis:**
- **A** ($3306$): Forgot to subtract the removed corner.
- **B** ($3297$): Area of base only, not volume.
- **D** ($6597$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7dfeea48-b217-4b7d-aef3-f77cf2a7e581', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 58 ft from a wall; the top is 65 ft high. The ladder length is 87 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">18 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">25 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">31 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{58}{87}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{65}{87}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=65$, hypotenuse $=87$. **Step 2:** $\\sin\\theta=\\frac{65}{87}≈0.747$."},{"id":"C","text":"$\\frac{87}{65}$","is_correct":false,"explanation":"Choice C ($\\frac{87}{65}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{58}{65}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=65$, hypotenuse $=87$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{65}{87}$.
**Step 3:** Pythagorean check: $58^2+65^2=87^2$.
**Step 4:** $\cos\theta=\frac{58}{87}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{65}{87}$

**Distractor analysis:**
- **A** ($\frac{58}{87}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{87}{65}$): Choice C ($\frac{87}{65}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{58}{65}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ac48e1df-5e76-44a7-8f64-7a081a9e0bfd', 'For what value of $k$ does $7(x-8)+2k = 366$ have solution $x=58$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=58$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$58$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-8)+2k = 366$ have solution $x=58$?

**Step 2 — Solve.** **Step 1:** Substitute $x=58$: $7(58-k)+2k=366$.
**Step 2:** Expand: $406-7k+2k=366$ → $406+-5k=366$.
**Step 3:** Isolate: $-5k=-40$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($58$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('39962cf2-9ffe-455c-8ffb-83a3c7a355a1', 'Linear function $f$ models temperature. $f(56)=50$ and $f(62)=80$. What is $f(-58)$?', NULL, NULL, '[{"id":"A","text":"$-515$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-524$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-520$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-58)=-520$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(56)=50$ and $f(62)=80$. What is $f(-58)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{80-50}{62-56}=5$.
**Step 2:** Point-slope: $f(-58)=5(-58-56)+(50)$.
**Step 3:** $f(-58)=-520$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-520$

**Distractor analysis:**
- **A** ($-515$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-524$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d6516a48-6747-4daf-800a-e961e4ec8380', 'If the vehicle continues at the same rate, what is $d$ when $t=65$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+55$. At $t=57$, $d=283$.', 'passage', '[{"id":"A","text":"$311$","is_correct":false,"explanation":"Choice A ($311$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$287$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=65$."},{"id":"C","text":"$315$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(65)+55$. **Step 2:** $d=315$."},{"id":"D","text":"$260$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=65$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $55$.
**Step 2:** $d=4(65)+55=315$.
**Step 3:** Cross-check via $(65-57)×4+283=315$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $315$

**Distractor analysis:**
- **A** ($311$): Choice A ($311$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($287$): Adds slope once instead of evaluating at $t=65$.
- **D** ($260$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cfd9be1c-3e26-43b2-b6c8-8f02830afff2', 'Given $x+y=123$ and $4x-y=78$, what is $x$?', 'At an event, 123 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=78$.', 'passage', '[{"id":"A","text":"$67$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=335$. **Step 2:** $x=67$."},{"id":"B","text":"$66$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$56$","is_correct":false,"explanation":"Choice C ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$68$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=123$ and $4x-y=78$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=123+78$ → $5x=335$.
**Step 2:** $x=67$.
**Step 3:** Back-substitute: $y=56$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $67$

**Distractor analysis:**
- **B** ($66$): One less than the solution.
- **C** ($56$): Choice C ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($68$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a7636c2a-0489-4e61-8027-f7d82f645dd5', 'Which integer value of $x$ satisfies $4x + 10 > 282$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 282 but stay at most 298 to trigger an alert.', 'passage', '[{"id":"A","text":"$66$","is_correct":false,"explanation":"Too small: $4(66)+10=274$."},{"id":"B","text":"$67$","is_correct":false,"explanation":"Choice B ($67$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$68$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$69$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 68.00$. **Step 2:** Smallest integer: 69."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 282$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 272$.
**Step 2:** $x > 68.00$.
**Step 3:** Among choices, $69$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $69$

**Distractor analysis:**
- **A** ($66$): Too small: $4(66)+10=274$.
- **B** ($67$): Choice B ($67$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($68$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4901d851-0196-4244-8415-b72b30b8a205', 'What is the average rate of change of $h$ from $t=52$ to $t=59$?', 'Projectile height $h(t)=4(t-55)^2+57$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(52)=93$, $h(59)=121$. **Step 2:** $\\frac{121-93}{59-52}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$121$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=52$ to $t=59$?

**Step 2 — Solve.** **Step 1:** $h(52)=4(52-55)^2+57=93$.
**Step 2:** $h(59)=4(59-55)^2+57=121$.
**Step 3:** Avg rate $=\frac{121-93}{59-52}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($121$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('baa9e15b-d12f-4d98-8f60-47ec0760460b', 'Which expression is equivalent to $(5x+58)^2 - (5x-58)^2$?', NULL, NULL, '[{"id":"A","text":"$1160x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+58$, $v=5x-58$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$232x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+3364$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+58)^2 - (5x-58)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+58$, $v=5x-58$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(116)=1160x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $1160x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($232x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+3364$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a85ba240-e9b8-4772-b12f-b444281e4dbd', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:10$ over 57 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1420$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1423$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1425$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×57×(5+10)=4275$. **Step 2:** A''s share $\\frac{5}{15}×4275=1425$."},{"id":"D","text":"$4275$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×57×(5+10)=4275$ tasks.
**Step 2:** A''s fraction $\frac{5}{15}$.
**Step 3:** $\frac{5}{15}×4275=1425$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1425$

**Distractor analysis:**
- **A** ($1420$): Underestimates A''s share of the total.
- **B** ($1423$): Close but ratio arithmetic is off.
- **D** ($4275$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a8d3b107-2ee6-4161-a42b-59c1c85666dd', 'If the original price is $915$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$893$","is_correct":true,"explanation":"Correct (A). **Step 1:** $915×1.3=1190$. **Step 2:** $1190×0.75=893$."},{"id":"B","text":"$915$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1190$","is_correct":false,"explanation":"Choice C ($1190$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$961$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $915$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $915×(1+30/100)=1190$.
**Step 2:** Discount on new price: $1190×(1-25/100)=893$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $893$

**Distractor analysis:**
- **B** ($915$): Ignores both percent changes.
- **C** ($1190$): Choice C ($1190$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($961$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dda87941-24fd-4b08-a0e2-d7f4075cf042', 'What is the missing score $x$?', 'Five test scores: 60, 64, 68, 72, and one score $x$ is unknown. The mean is 64.2.', 'passage', '[{"id":"A","text":"$54$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$57$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=64.2×5=321$. **Step 2:** $x=57$."},{"id":"C","text":"$60$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$64$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=64.2×5=321$.
**Step 2:** Known sum $=264$.
**Step 3:** $x=321-264=57$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $57$

**Distractor analysis:**
- **A** ($54$): Pulls the mean down too far.
- **C** ($60$): Too high for the given mean.
- **D** ($64$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('48917bb4-33df-4fac-93a1-e5665a8c67b7', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(56,222)$ and $(64,254)$.', 'passage', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{254-222}{64-56}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=254$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{254}{64}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=254$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{254}{64}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('daaec5af-bc49-418e-9e0c-8e60f4adb6ff', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 61 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{67}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{66}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{67}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{66}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 66. **Step 2:** P $=\\frac{5}{66}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 66 total.
**Step 2:** Conditional probability $=\frac{5}{66}$.
**Step 3:** Do not use $\frac{6}{67}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{5}{66}$

**Distractor analysis:**
- **A** ($\frac{6}{67}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{66}$): Uses original count in numerator.
- **C** ($\frac{6}{67}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4b0b30be-d01e-47f6-b725-6fb839ee4f93', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 59 by 58 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3422$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3413$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6826$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3422-3^2=3413$. **Step 2:** Volume $=3413×2=6826$."},{"id":"D","text":"$6829$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $59×58=3422$.
**Step 2:** Remove corner: $3^2=9$ → base $3413$.
**Step 3:** Volume $=3413×2=6826$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $6826$

**Distractor analysis:**
- **A** ($3422$): Forgot to subtract the removed corner.
- **B** ($3413$): Area of base only, not volume.
- **D** ($6829$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('11807362-4802-452d-b7de-1c26879acb5c', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 59 ft from a wall; the top is 66 ft high. The ladder length is 89 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">19 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">26 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">32 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{59}{89}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{66}{89}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=66$, hypotenuse $=89$. **Step 2:** $\\sin\\theta=\\frac{66}{89}≈0.742$."},{"id":"C","text":"$\\frac{89}{66}$","is_correct":false,"explanation":"Choice C ($\\frac{89}{66}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{59}{66}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=66$, hypotenuse $=89$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{66}{89}$.
**Step 3:** Pythagorean check: $59^2+66^2=89^2$.
**Step 4:** $\cos\theta=\frac{59}{89}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{66}{89}$

**Distractor analysis:**
- **A** ($\frac{59}{89}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{89}{66}$): Choice C ($\frac{89}{66}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{59}{66}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5b39def5-605d-439e-a575-296310094bf1', 'For what value of $k$ does $8(x-3)+2k = 454$ have solution $x=59$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=59$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$59$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-3)+2k = 454$ have solution $x=59$?

**Step 2 — Solve.** **Step 1:** Substitute $x=59$: $8(59-k)+2k=454$.
**Step 2:** Expand: $472-8k+2k=454$ → $472+-6k=454$.
**Step 3:** Isolate: $-6k=-18$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($59$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('526aa555-78c8-4290-b7d1-ca466ffd5370', 'Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?', NULL, NULL, '[{"id":"A","text":"$-294$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-301$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-297$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-59)=-297$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{69-51}{63-57}=3$.
**Step 2:** Point-slope: $f(-59)=3(-59-57)+(51)$.
**Step 3:** $f(-59)=-297$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-297$

**Distractor analysis:**
- **A** ($-294$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-301$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fcc86f4c-89b6-40fd-8fc2-bb6ed759cd98', 'If the vehicle continues at the same rate, what is $d$ when $t=66$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+56$. At $t=58$, $d=346$.', 'passage', '[{"id":"A","text":"$381$","is_correct":false,"explanation":"Choice A ($381$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$351$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=66$."},{"id":"C","text":"$386$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(66)+56$. **Step 2:** $d=386$."},{"id":"D","text":"$330$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=66$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $56$.
**Step 2:** $d=5(66)+56=386$.
**Step 3:** Cross-check via $(66-58)×5+346=386$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $386$

**Distractor analysis:**
- **A** ($381$): Choice A ($381$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($351$): Adds slope once instead of evaluating at $t=66$.
- **D** ($330$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a29e0d3e-a9ff-493f-8407-456dcc6df44d', 'Given $x+y=125$ and $3x-y=79$, what is $x$?', 'At an event, 125 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=79$.', 'passage', '[{"id":"A","text":"$68$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=272$. **Step 2:** $x=68$."},{"id":"B","text":"$67$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Choice C ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$69$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=125$ and $3x-y=79$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=125+79$ → $4x=272$.
**Step 2:** $x=68$.
**Step 3:** Back-substitute: $y=57$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $68$

**Distractor analysis:**
- **B** ($67$): One less than the solution.
- **C** ($57$): Choice C ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($69$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('63fceaec-dadf-484f-84ac-a1a18fa2167f', 'Which integer value of $x$ satisfies $5x + 5 > 351$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 351 but stay at most 367 to trigger an alert.', 'passage', '[{"id":"A","text":"$67$","is_correct":false,"explanation":"Choice A ($67$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$68$","is_correct":false,"explanation":"Choice B ($68$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$69$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$70$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 69.20$. **Step 2:** Smallest integer: 70."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 351$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 346$.
**Step 2:** $x > 69.20$.
**Step 3:** Among choices, $70$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $70$

**Distractor analysis:**
- **A** ($67$): Choice A ($67$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($68$): Choice B ($68$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($69$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('10851ef3-beca-4ef7-856f-f06e0340dfc3', 'What is the average rate of change of $h$ from $t=53$ to $t=60$?', 'Projectile height $h(t)=2(t-56)^2+58$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(53)=76$, $h(60)=90$. **Step 2:** $\\frac{90-76}{60-53}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=53$ to $t=60$?

**Step 2 — Solve.** **Step 1:** $h(53)=2(53-56)^2+58=76$.
**Step 2:** $h(60)=2(60-56)^2+58=90$.
**Step 3:** Avg rate $=\frac{90-76}{60-53}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($90$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bd351197-b25e-44ec-9082-b81c6fc15d59', 'Which expression is equivalent to $(3x+59)^2 - (3x-59)^2$?', NULL, NULL, '[{"id":"A","text":"$708x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+59$, $v=3x-59$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$236x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+3481$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+59)^2 - (3x-59)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+59$, $v=3x-59$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(118)=708x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $708x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($236x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+3481$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9d9f2f91-7488-4444-b32a-f0c6462235cb', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:11$ over 58 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1039$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1042$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1044$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×58×(6+11)=2958$. **Step 2:** A''s share $\\frac{6}{17}×2958=1044$."},{"id":"D","text":"$2958$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×58×(6+11)=2958$ tasks.
**Step 2:** A''s fraction $\frac{6}{17}$.
**Step 3:** $\frac{6}{17}×2958=1044$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1044$

**Distractor analysis:**
- **A** ($1039$): Underestimates A''s share of the total.
- **B** ($1042$): Close but ratio arithmetic is off.
- **D** ($2958$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9945c134-7ccc-4b5c-881f-74c33c7e2ed3', 'If the original price is $930$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$1068$","is_correct":true,"explanation":"Correct (A). **Step 1:** $930×1.35=1256$. **Step 2:** $1256×0.85=1068$."},{"id":"B","text":"$930$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1256$","is_correct":false,"explanation":"Choice C ($1256$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1116$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $930$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $930×(1+35/100)=1256$.
**Step 2:** Discount on new price: $1256×(1-15/100)=1068$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $1068$

**Distractor analysis:**
- **B** ($930$): Ignores both percent changes.
- **C** ($1256$): Choice C ($1256$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1116$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7b8635da-9259-4350-9ac4-fe91d56bd15c', 'What is the missing score $x$?', 'Five test scores: 61, 65, 69, 73, and one score $x$ is unknown. The mean is 65.2.

| Student | Score |
| --- | --- |
| S1 | 26 |
| S2 | 29 |
| S3 | 32 |
| S4 | 35 |', 'table', '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$58$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=65.2×5=326$. **Step 2:** $x=58$."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$65$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=65.2×5=326$.
**Step 2:** Known sum $=268$.
**Step 3:** $x=326-268=58$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $58$

**Distractor analysis:**
- **A** ($55$): Pulls the mean down too far.
- **C** ($61$): Too high for the given mean.
- **D** ($65$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('67bd422d-6347-4a93-83ad-f582c9ffa693', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(57,226)$ and $(65,258)$.

| Units | Cost ($) |
| --- | --- |
| 15 | 58 |
| 17 | 66 |
| 19 | 74 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{258-226}{65-57}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=258$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{258}{65}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=258$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{258}{65}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('086038e9-8254-4f04-869b-d265b44a8f18', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 62 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{69}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{68}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{69}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{68}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 68. **Step 2:** P $=\\frac{6}{68}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 68 total.
**Step 2:** Conditional probability $=\frac{6}{68}$.
**Step 3:** Do not use $\frac{7}{69}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{6}{68}$

**Distractor analysis:**
- **A** ($\frac{7}{69}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{68}$): Uses original count in numerator.
- **C** ($\frac{7}{69}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2927e304-62a7-4738-ad85-2e55fbf5bc50', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 20 by 19">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">20 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">19 in</text>
</svg>

A rectangular sheet is 60 by 59 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$3540$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3531$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$7062$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3540-3^2=3531$. **Step 2:** Volume $=3531×2=7062$."},{"id":"D","text":"$7065$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $60×59=3540$.
**Step 2:** Remove corner: $3^2=9$ → base $3531$.
**Step 3:** Volume $=3531×2=7062$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $7062$

**Distractor analysis:**
- **A** ($3540$): Forgot to subtract the removed corner.
- **B** ($3531$): Area of base only, not volume.
- **D** ($7065$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2f2ab845-ec63-4077-a97b-33572bad03c0', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 60 ft from a wall; the top is 67 ft high. The ladder length is 90 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">20 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">27 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">34 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{60}{90}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{67}{90}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=67$, hypotenuse $=90$. **Step 2:** $\\sin\\theta=\\frac{67}{90}≈0.744$."},{"id":"C","text":"$\\frac{90}{67}$","is_correct":false,"explanation":"Choice C ($\\frac{90}{67}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{60}{67}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=67$, hypotenuse $=90$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{67}{90}$.
**Step 3:** Pythagorean check: $60^2+67^2=90^2$.
**Step 4:** $\cos\theta=\frac{60}{90}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{67}{90}$

**Distractor analysis:**
- **A** ($\frac{60}{90}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{90}{67}$): Choice C ($\frac{90}{67}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{60}{67}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4b759b41-bc10-46a5-a42b-07b3be58bd6b', 'For what value of $k$ does $4(x-4)+2k = 232$ have solution $x=60$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=60$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$60$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-4)+2k = 232$ have solution $x=60$?

**Step 2 — Solve.** **Step 1:** Substitute $x=60$: $4(60-k)+2k=232$.
**Step 2:** Expand: $240-4k+2k=232$ → $240+-2k=232$.
**Step 3:** Isolate: $-2k=-8$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($60$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7345aa0e-ad93-4be1-9ce0-931f978e99bf', 'Linear function $f$ models temperature. $f(58)=52$ and $f(64)=76$. What is $f(-60)$?', NULL, NULL, '[{"id":"A","text":"$-416$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-424$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-420$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-60)=-420$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(58)=52$ and $f(64)=76$. What is $f(-60)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{76-52}{64-58}=4$.
**Step 2:** Point-slope: $f(-60)=4(-60-58)+(52)$.
**Step 3:** $f(-60)=-420$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-420$

**Distractor analysis:**
- **A** ($-416$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-424$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('391e0cdc-9673-4c72-84ab-47667ddc4c2a', 'If the vehicle continues at the same rate, what is $d$ when $t=67$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+57$. At $t=59$, $d=411$.', 'passage', '[{"id":"A","text":"$453$","is_correct":false,"explanation":"Choice A ($453$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$417$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=67$."},{"id":"C","text":"$459$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(67)+57$. **Step 2:** $d=459$."},{"id":"D","text":"$402$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=67$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $57$.
**Step 2:** $d=6(67)+57=459$.
**Step 3:** Cross-check via $(67-59)×6+411=459$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $459$

**Distractor analysis:**
- **A** ($453$): Choice A ($453$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($417$): Adds slope once instead of evaluating at $t=67$.
- **D** ($402$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4aba2c5d-eebd-4fd5-babd-f4e5c0a6055b', 'Given $x+y=127$ and $4x-y=80$, what is $x$?', 'At an event, 127 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=80$.', 'passage', '[{"id":"A","text":"$69$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=345$. **Step 2:** $x=69$."},{"id":"B","text":"$68$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Choice C ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$70$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=127$ and $4x-y=80$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=127+80$ → $5x=345$.
**Step 2:** $x=69$.
**Step 3:** Back-substitute: $y=58$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $69$

**Distractor analysis:**
- **B** ($68$): One less than the solution.
- **C** ($58$): Choice C ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($70$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
