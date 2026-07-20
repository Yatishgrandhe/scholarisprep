BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f1f1a120-e0c7-46f0-952b-c5c21546ec73', 'If the original price is $855$, what is the final price after both changes?', 'A price is marked up 30%, then discounted 20% on the new price.', 'passage', '[{"id":"A","text":"$890$","is_correct":true,"explanation":"Correct (A). **Step 1:** $855×1.3=1112$. **Step 2:** $1112×0.8=890$."},{"id":"B","text":"$855$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1112$","is_correct":false,"explanation":"Choice C ($1112$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$941$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $855$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $855×(1+30/100)=1112$.
**Step 2:** Discount on new price: $1112×(1-20/100)=890$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $890$

**Distractor analysis:**
- **B** ($855$): Ignores both percent changes.
- **C** ($1112$): Choice C ($1112$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($941$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('34bbd2c7-6e12-4c3e-9783-eaf1d54491dc', 'What is the missing score $x$?', 'Five test scores: 56, 60, 64, 68, and one score $x$ is unknown. The mean is 60.2.', 'passage', '[{"id":"A","text":"$50$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$53$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=60.2×5=301$. **Step 2:** $x=53$."},{"id":"C","text":"$56$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$60$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=60.2×5=301$.
**Step 2:** Known sum $=248$.
**Step 3:** $x=301-248=53$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $53$

**Distractor analysis:**
- **A** ($50$): Pulls the mean down too far.
- **C** ($56$): Too high for the given mean.
- **D** ($60$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9812e8a7-1ae7-49af-a4c4-be9f2aa26e69', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(52,206)$ and $(60,238)$.', 'passage', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{238-206}{60-52}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=238$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{238}{60}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=238$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{238}{60}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ebb84c16-fe48-45fc-8be2-b30a24cb8839', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 57 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{63}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{62}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{63}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{62}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 62. **Step 2:** P $=\\frac{5}{62}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 62 total.
**Step 2:** Conditional probability $=\frac{5}{62}$.
**Step 3:** Do not use $\frac{6}{63}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{5}{62}$

**Distractor analysis:**
- **A** ($\frac{6}{63}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{62}$): Uses original count in numerator.
- **C** ($\frac{6}{63}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c8f094d2-9409-411c-accc-fe076488c82f', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 55 by 54 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$2970$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$2961$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$5922$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $2970-3^2=2961$. **Step 2:** Volume $=2961×2=5922$."},{"id":"D","text":"$5925$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $55×54=2970$.
**Step 2:** Remove corner: $3^2=9$ → base $2961$.
**Step 3:** Volume $=2961×2=5922$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $5922$

**Distractor analysis:**
- **A** ($2970$): Forgot to subtract the removed corner.
- **B** ($2961$): Area of base only, not volume.
- **D** ($5925$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a2d4ae3c-be49-4210-91ae-752bead1adfd', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 55 ft from a wall; the top is 62 ft high. The ladder length is 83 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">15 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">22 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">27 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{55}{83}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{62}{83}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=62$, hypotenuse $=83$. **Step 2:** $\\sin\\theta=\\frac{62}{83}≈0.747$."},{"id":"C","text":"$\\frac{83}{62}$","is_correct":false,"explanation":"Choice C ($\\frac{83}{62}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{55}{62}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=62$, hypotenuse $=83$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{62}{83}$.
**Step 3:** Pythagorean check: $55^2+62^2=83^2$.
**Step 4:** $\cos\theta=\frac{55}{83}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{62}{83}$

**Distractor analysis:**
- **A** ($\frac{55}{83}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{83}{62}$): Choice C ($\frac{83}{62}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{55}{62}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('490c908b-1d87-4cd0-88c4-0e6446df1b43', 'For what value of $k$ does $4(x-5)+2k = 210$ have solution $x=55$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=55$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$55$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-5)+2k = 210$ have solution $x=55$?

**Step 2 — Solve.** **Step 1:** Substitute $x=55$: $4(55-k)+2k=210$.
**Step 2:** Expand: $220-4k+2k=210$ → $220+-2k=210$.
**Step 3:** Isolate: $-2k=-10$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($55$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0d375f41-6dd2-4194-9a0e-542f5a3bc7ff', 'Linear function $f$ models temperature. $f(53)=47$ and $f(59)=77$. What is $f(-55)$?', NULL, NULL, '[{"id":"A","text":"$-488$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-497$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-493$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-55)=-493$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(53)=47$ and $f(59)=77$. What is $f(-55)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{77-47}{59-53}=5$.
**Step 2:** Point-slope: $f(-55)=5(-55-53)+(47)$.
**Step 3:** $f(-55)=-493$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-493$

**Distractor analysis:**
- **A** ($-488$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-497$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0ec9f6e9-7d85-45d7-9865-897080da7fae', 'If the vehicle continues at the same rate, what is $d$ when $t=62$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+52$. At $t=54$, $d=322$.', 'passage', '[{"id":"A","text":"$357$","is_correct":false,"explanation":"Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$327$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=62$."},{"id":"C","text":"$362$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(62)+52$. **Step 2:** $d=362$."},{"id":"D","text":"$310$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=62$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $52$.
**Step 2:** $d=5(62)+52=362$.
**Step 3:** Cross-check via $(62-54)×5+322=362$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $362$

**Distractor analysis:**
- **A** ($357$): Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($327$): Adds slope once instead of evaluating at $t=62$.
- **D** ($310$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fdbd2c76-a759-4c04-b9d4-975fc44c63d5', 'Given $x+y=117$ and $3x-y=75$, what is $x$?', 'At an event, 117 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=75$.', 'passage', '[{"id":"A","text":"$64$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=256$. **Step 2:** $x=64$."},{"id":"B","text":"$63$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Choice C ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$65$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=117$ and $3x-y=75$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=117+75$ → $4x=256$.
**Step 2:** $x=64$.
**Step 3:** Back-substitute: $y=53$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $64$

**Distractor analysis:**
- **B** ($63$): One less than the solution.
- **C** ($53$): Choice C ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($65$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('34f193e8-2aa2-4757-894a-ac5828d1bf8b', 'Which integer value of $x$ satisfies $5x + 7 > 333$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 333 but stay at most 349 to trigger an alert.', 'passage', '[{"id":"A","text":"$63$","is_correct":false,"explanation":"Choice A ($63$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64$","is_correct":false,"explanation":"Choice B ($64$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$65$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$66$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 65.20$. **Step 2:** Smallest integer: 66."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 333$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 326$.
**Step 2:** $x > 65.20$.
**Step 3:** Among choices, $66$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $66$

**Distractor analysis:**
- **A** ($63$): Choice A ($63$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64$): Choice B ($64$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($65$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('02ec270b-d1ec-4cb2-84bf-bbe7da04944f', 'What is the average rate of change of $h$ from $t=49$ to $t=56$?', 'Projectile height $h(t)=4(t-52)^2+54$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(49)=90$, $h(56)=118$. **Step 2:** $\\frac{118-90}{56-49}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$118$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=49$ to $t=56$?

**Step 2 — Solve.** **Step 1:** $h(49)=4(49-52)^2+54=90$.
**Step 2:** $h(56)=4(56-52)^2+54=118$.
**Step 3:** Avg rate $=\frac{118-90}{56-49}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($118$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0339b33b-b336-4649-9d00-09bf1e232e7c', 'Which expression is equivalent to $(5x+55)^2 - (5x-55)^2$?', NULL, NULL, '[{"id":"A","text":"$1100x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+55$, $v=5x-55$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$220x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+3025$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+55)^2 - (5x-55)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+55$, $v=5x-55$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(110)=1100x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $1100x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($220x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+3025$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4a245f3a-2449-496e-876c-d121cdea8002', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:7$ over 54 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1615$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1618$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1620$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×54×(6+7)=3510$. **Step 2:** A''s share $\\frac{6}{13}×3510=1620$."},{"id":"D","text":"$3510$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×54×(6+7)=3510$ tasks.
**Step 2:** A''s fraction $\frac{6}{13}$.
**Step 3:** $\frac{6}{13}×3510=1620$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1620$

**Distractor analysis:**
- **A** ($1615$): Underestimates A''s share of the total.
- **B** ($1618$): Close but ratio arithmetic is off.
- **D** ($3510$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f13b1e38-f927-42ee-8199-a7c426b6c5c8', 'If the original price is $870$, what is the final price after both changes?', 'A price is marked up 35%, then discounted 25% on the new price.', 'passage', '[{"id":"A","text":"$881$","is_correct":true,"explanation":"Correct (A). **Step 1:** $870×1.35=1175$. **Step 2:** $1175×0.75=881$."},{"id":"B","text":"$870$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1175$","is_correct":false,"explanation":"Choice C ($1175$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$957$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $870$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $870×(1+35/100)=1175$.
**Step 2:** Discount on new price: $1175×(1-25/100)=881$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $881$

**Distractor analysis:**
- **B** ($870$): Ignores both percent changes.
- **C** ($1175$): Choice C ($1175$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($957$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0b31a65f-43bb-473e-aa52-d676c9b54783', 'What is the missing score $x$?', 'Five test scores: 57, 61, 65, 69, and one score $x$ is unknown. The mean is 61.2.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$54$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=61.2×5=306$. **Step 2:** $x=54$."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$61$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=61.2×5=306$.
**Step 2:** Known sum $=252$.
**Step 3:** $x=306-252=54$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $54$

**Distractor analysis:**
- **A** ($51$): Pulls the mean down too far.
- **C** ($57$): Too high for the given mean.
- **D** ($61$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('91363bd0-f27a-4dff-9961-6f4ac2c00d58', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(53,210)$ and $(61,242)$.

| Units | Cost ($) |
| --- | --- |
| 11 | 42 |
| 13 | 50 |
| 15 | 58 |', 'table', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{242-210}{61-53}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=242$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{242}{61}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=242$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{242}{61}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b371d0fb-d54a-459f-9513-a247a758bd91', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 58 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{65}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{64}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{65}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{64}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 64. **Step 2:** P $=\\frac{6}{64}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 64 total.
**Step 2:** Conditional probability $=\frac{6}{64}$.
**Step 3:** Do not use $\frac{7}{65}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{6}{64}$

**Distractor analysis:**
- **A** ($\frac{7}{65}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{64}$): Uses original count in numerator.
- **C** ($\frac{7}{65}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('87905fcf-626a-4c09-8c58-6d29b1847f5f', 'What is the volume of the box, in cubic inches?', '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle 16 by 15">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">16 in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">15 in</text>
</svg>

A rectangular sheet is 56 by 55 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'figure', '[{"id":"A","text":"$3080$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3071$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6142$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3080-3^2=3071$. **Step 2:** Volume $=3071×2=6142$."},{"id":"D","text":"$6145$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $56×55=3080$.
**Step 2:** Remove corner: $3^2=9$ → base $3071$.
**Step 3:** Volume $=3071×2=6142$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $6142$

**Distractor analysis:**
- **A** ($3080$): Forgot to subtract the removed corner.
- **B** ($3071$): Area of base only, not volume.
- **D** ($6145$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c51f78c4-b5d4-4991-89cc-1ce48592d3df', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 56 ft from a wall; the top is 63 ft high. The ladder length is 84 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">16 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">23 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">28 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{56}{84}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{63}{84}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=63$, hypotenuse $=84$. **Step 2:** $\\sin\\theta=\\frac{63}{84}≈0.750$."},{"id":"C","text":"$\\frac{84}{63}$","is_correct":false,"explanation":"Choice C ($\\frac{84}{63}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{56}{63}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=63$, hypotenuse $=84$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{63}{84}$.
**Step 3:** Pythagorean check: $56^2+63^2=84^2$.
**Step 4:** $\cos\theta=\frac{56}{84}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{63}{84}$

**Distractor analysis:**
- **A** ($\frac{56}{84}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{84}{63}$): Choice C ($\frac{84}{63}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{56}{63}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('830040d9-35b1-4f8e-9c8a-c33e78cfeff0', 'For what value of $k$ does $5(x-6)+2k = 262$ have solution $x=56$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=56$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$56$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-6)+2k = 262$ have solution $x=56$?

**Step 2 — Solve.** **Step 1:** Substitute $x=56$: $5(56-k)+2k=262$.
**Step 2:** Expand: $280-5k+2k=262$ → $280+-3k=262$.
**Step 3:** Isolate: $-3k=-18$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($56$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('eb6d0dd9-d2b0-4ba6-a356-7e8721cbb52d', 'Linear function $f$ models temperature. $f(54)=48$ and $f(60)=66$. What is $f(-56)$?', NULL, NULL, '[{"id":"A","text":"$-279$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-286$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-282$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-56)=-282$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(54)=48$ and $f(60)=66$. What is $f(-56)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{66-48}{60-54}=3$.
**Step 2:** Point-slope: $f(-56)=3(-56-54)+(48)$.
**Step 3:** $f(-56)=-282$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-282$

**Distractor analysis:**
- **A** ($-279$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-286$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f91425c6-1116-400e-a27a-a7a6558bbd9b', 'If the vehicle continues at the same rate, what is $d$ when $t=63$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+53$. At $t=55$, $d=383$.', 'passage', '[{"id":"A","text":"$425$","is_correct":false,"explanation":"Choice A ($425$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$389$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=63$."},{"id":"C","text":"$431$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(63)+53$. **Step 2:** $d=431$."},{"id":"D","text":"$378$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=63$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $53$.
**Step 2:** $d=6(63)+53=431$.
**Step 3:** Cross-check via $(63-55)×6+383=431$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $431$

**Distractor analysis:**
- **A** ($425$): Choice A ($425$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($389$): Adds slope once instead of evaluating at $t=63$.
- **D** ($378$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4c7fb907-8ca3-471d-97e3-d442f0fb2945', 'Given $x+y=119$ and $4x-y=76$, what is $x$?', 'At an event, 119 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=76$.', 'passage', '[{"id":"A","text":"$65$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=325$. **Step 2:** $x=65$."},{"id":"B","text":"$64$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Choice C ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$66$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=119$ and $4x-y=76$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=119+76$ → $5x=325$.
**Step 2:** $x=65$.
**Step 3:** Back-substitute: $y=54$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $65$

**Distractor analysis:**
- **B** ($64$): One less than the solution.
- **C** ($54$): Choice C ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($66$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a45aea58-fe26-408a-8db2-6da6a35522e4', 'Which integer value of $x$ satisfies $6x + 8 > 406$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 406 but stay at most 422 to trigger an alert.', 'passage', '[{"id":"A","text":"$64$","is_correct":false,"explanation":"Choice A ($64$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Choice B ($65$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$67$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 66.33$. **Step 2:** Smallest integer: 67."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 406$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 398$.
**Step 2:** $x > 66.33$.
**Step 3:** Among choices, $67$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $67$

**Distractor analysis:**
- **A** ($64$): Choice A ($64$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($65$): Choice B ($65$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($66$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('787bea9d-41cd-4d4e-bb43-00fdb4096a6d', 'What is the average rate of change of $h$ from $t=50$ to $t=57$?', 'Projectile height $h(t)=2(t-53)^2+55$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(50)=73$, $h(57)=87$. **Step 2:** $\\frac{87-73}{57-50}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$87$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=50$ to $t=57$?

**Step 2 — Solve.** **Step 1:** $h(50)=2(50-53)^2+55=73$.
**Step 2:** $h(57)=2(57-53)^2+55=87$.
**Step 3:** Avg rate $=\frac{87-73}{57-50}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($87$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('222afe35-eb3b-44c0-9bd6-9cf66e2ac017', 'Which expression is equivalent to $(3x+56)^2 - (3x-56)^2$?', NULL, NULL, '[{"id":"A","text":"$672x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+56$, $v=3x-56$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$224x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+3136$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+56)^2 - (3x-56)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+56$, $v=3x-56$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(112)=672x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $672x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($224x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+3136$): Adds squares; not equivalent.', NULL, 'Algebra', NULL, 'math', NULL, 'EQS', 'EQS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c5afc5e8-734a-4564-8cf5-4084536434a5', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:8$ over 55 hours at 3 tasks/hour combined.', 'passage', '[{"id":"A","text":"$1150$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1153$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1155$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×55×(7+8)=2475$. **Step 2:** A''s share $\\frac{7}{15}×2475=1155$."},{"id":"D","text":"$2475$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=3×55×(7+8)=2475$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×2475=1155$ tasks.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $1155$

**Distractor analysis:**
- **A** ($1150$): Underestimates A''s share of the total.
- **B** ($1153$): Close but ratio arithmetic is off.
- **D** ($2475$): That is the combined total, not worker A''s count.', NULL, 'Algebra', NULL, 'math', NULL, 'RAT', 'RAT', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RAT","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2cbbd1ec-18a2-4d2b-a84d-82a4e71888ca', 'If the original price is $885$, what is the final price after both changes?', 'A price is marked up 40%, then discounted 15% on the new price.', 'passage', '[{"id":"A","text":"$1053$","is_correct":true,"explanation":"Correct (A). **Step 1:** $885×1.4=1239$. **Step 2:** $1239×0.85=1053$."},{"id":"B","text":"$885$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1239$","is_correct":false,"explanation":"Choice C ($1239$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1106$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $885$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $885×(1+40/100)=1239$.
**Step 2:** Discount on new price: $1239×(1-15/100)=1053$.
**Step 3:** Do not net the percents — order matters.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $1053$

**Distractor analysis:**
- **B** ($885$): Ignores both percent changes.
- **C** ($1239$): Choice C ($1239$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1106$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Algebra', NULL, 'math', NULL, 'PER', 'PER', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PER","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('13c5c09b-aa3d-4cbb-8063-449aa9872564', 'What is the missing score $x$?', 'Five test scores: 58, 62, 66, 70, and one score $x$ is unknown. The mean is 62.2.

| Student | Score |
| --- | --- |
| S1 | 23 |
| S2 | 26 |
| S3 | 29 |
| S4 | 32 |', 'table', '[{"id":"A","text":"$52$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$55$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=62.2×5=311$. **Step 2:** $x=55$."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$62$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=62.2×5=311$.
**Step 2:** Known sum $=256$.
**Step 3:** $x=311-256=55$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $55$

**Distractor analysis:**
- **A** ($52$): Pulls the mean down too far.
- **C** ($58$): Too high for the given mean.
- **D** ($62$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('18133a82-8d2d-40b0-9497-73d6192994a0', 'Which equation models the line, and what does the slope represent?', 'A line models cost vs. units, passing through $(54,214)$ and $(62,246)$.', 'passage', '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{246-214}{62-54}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=246$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{246}{62}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb, 'A', '**Step 1 — Understand.** Which equation models the line, and what does the slope represent?

**Step 2 — Solve.** **Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $y=4x-2$; cost increases $4$ per unit

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=246$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{246}{62}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Algebra', NULL, 'math', NULL, 'TVA', 'TVA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"TVA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b3b9b567-6420-4af8-8093-c1a7266a246d', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 59 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{67}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{66}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{67}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{66}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 66. **Step 2:** P $=\\frac{7}{66}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 66 total.
**Step 2:** Conditional probability $=\frac{7}{66}$.
**Step 3:** Do not use $\frac{8}{67}$ — that ignores the first draw.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $\frac{7}{66}$

**Distractor analysis:**
- **A** ($\frac{8}{67}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{66}$): Uses original count in numerator.
- **C** ($\frac{8}{67}$): Wrong numerator after first draw.', NULL, 'Algebra', NULL, 'math', NULL, 'PRO', 'PRO', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d0a267a4-f45e-4753-beed-9535fcb7fdbc', 'What is the volume of the box, in cubic inches?', 'A rectangular sheet is 57 by 56 inches. A square corner of side 3 inches is removed, then the remainder is folded into a box 2 inches tall.', 'passage', '[{"id":"A","text":"$3192$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$3183$","is_correct":false,"explanation":"Area of base only, not volume."},{"id":"C","text":"$6366$","is_correct":true,"explanation":"Correct (C). **Step 1:** Base area $3192-3^2=3183$. **Step 2:** Volume $=3183×2=6366$."},{"id":"D","text":"$6369$","is_correct":false,"explanation":"Adds corner length instead of using height."}]'::jsonb, 'C', '**Step 1 — Understand.** What is the volume of the box, in cubic inches?

**Step 2 — Solve.** **Step 1:** Rectangle: $57×56=3192$.
**Step 2:** Remove corner: $3^2=9$ → base $3183$.
**Step 3:** Volume $=3183×2=6366$ cu in.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $6366$

**Distractor analysis:**
- **A** ($3192$): Forgot to subtract the removed corner.
- **B** ($3183$): Area of base only, not volume.
- **D** ($6369$): Adds corner length instead of using height.', NULL, 'Algebra', NULL, 'math', NULL, 'ARE', 'ARE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"ARE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5f808bb6-4d9c-49ad-965b-da7771d27708', 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?', 'A ladder''s foot is 57 ft from a wall; the top is 64 ft high. The ladder length is 86 ft.

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">17 ft</text>
  <text x="12" y="82" font-size="11" fill="#374151">24 ft</text>
  <text x="95" y="72" font-size="11" fill="#374151">29 ft</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>', 'figure', '[{"id":"A","text":"$\\frac{57}{86}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{64}{86}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=64$, hypotenuse $=86$. **Step 2:** $\\sin\\theta=\\frac{64}{86}≈0.744$."},{"id":"C","text":"$\\frac{86}{64}$","is_correct":false,"explanation":"Choice C ($\\frac{86}{64}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{57}{64}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb, 'B', '**Step 1 — Understand.** What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?

**Step 2 — Solve.** **Step 1:** Right triangle: opposite $=64$, hypotenuse $=86$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{64}{86}$.
**Step 3:** Pythagorean check: $57^2+64^2=86^2$.
**Step 4:** $\cos\theta=\frac{57}{86}$, not the answer.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $\frac{64}{86}$

**Distractor analysis:**
- **A** ($\frac{57}{86}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{86}{64}$): Choice C ($\frac{86}{64}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{57}{64}$): Uses a leg ratio, not sine.', NULL, 'Algebra', NULL, 'math', NULL, 'RIG', 'RIG', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"RIG","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fdd1c261-e434-4d6a-a34e-118aba631e88', 'For what value of $k$ does $6(x-7)+2k = 314$ have solution $x=57$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=57$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$57$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-7)+2k = 314$ have solution $x=57$?

**Step 2 — Solve.** **Step 1:** Substitute $x=57$: $6(57-k)+2k=314$.
**Step 2:** Expand: $342-6k+2k=314$ → $342+-4k=314$.
**Step 3:** Isolate: $-4k=-28$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($57$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bfb0a496-4d51-4af8-9820-181fdd0036ec', 'Linear function $f$ models temperature. $f(55)=49$ and $f(61)=73$. What is $f(-57)$?', NULL, NULL, '[{"id":"A","text":"$-395$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-403$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-399$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-57)=-399$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(55)=49$ and $f(61)=73$. What is $f(-57)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{73-49}{61-55}=4$.
**Step 2:** Point-slope: $f(-57)=4(-57-55)+(49)$.
**Step 3:** $f(-57)=-399$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-399$

**Distractor analysis:**
- **A** ($-395$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-403$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('79e90613-62b7-4b8b-8326-e8f8c4f1126b', 'If the vehicle continues at the same rate, what is $d$ when $t=64$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+54$. At $t=56$, $d=222$.', 'passage', '[{"id":"A","text":"$243$","is_correct":false,"explanation":"Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$225$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=64$."},{"id":"C","text":"$246$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(64)+54$. **Step 2:** $d=246$."},{"id":"D","text":"$192$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=64$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $54$.
**Step 2:** $d=3(64)+54=246$.
**Step 3:** Cross-check via $(64-56)×3+222=246$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $246$

**Distractor analysis:**
- **A** ($243$): Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($225$): Adds slope once instead of evaluating at $t=64$.
- **D** ($192$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e86baf00-673d-416d-a438-c25784494f01', 'Given $x+y=121$ and $3x-y=77$, what is $x$?', 'At an event, 121 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=77$.', 'passage', '[{"id":"A","text":"$66$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=264$. **Step 2:** $x=66$."},{"id":"B","text":"$65$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Choice C ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$67$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=121$ and $3x-y=77$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=121+77$ → $4x=264$.
**Step 2:** $x=66$.
**Step 3:** Back-substitute: $y=55$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $66$

**Distractor analysis:**
- **B** ($65$): One less than the solution.
- **C** ($55$): Choice C ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($67$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7572fefd-b309-4ab1-8344-c4377df78115', 'Which integer value of $x$ satisfies $3x + 9 > 209$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 209 but stay at most 225 to trigger an alert.', 'passage', '[{"id":"A","text":"$65$","is_correct":false,"explanation":"Choice A ($65$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$66$","is_correct":false,"explanation":"Choice B ($66$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$67$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$68$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 66.67$. **Step 2:** Smallest integer: 68."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 209$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 200$.
**Step 2:** $x > 66.67$.
**Step 3:** Among choices, $68$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $68$

**Distractor analysis:**
- **A** ($65$): Choice A ($65$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($66$): Choice B ($66$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($67$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('511a5761-3eda-4b13-9361-19e684103cba', 'What is the average rate of change of $h$ from $t=51$ to $t=58$?', 'Projectile height $h(t)=3(t-54)^2+56$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(51)=83$, $h(58)=104$. **Step 2:** $\\frac{104-83}{58-51}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$104$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=51$ to $t=58$?

**Step 2 — Solve.** **Step 1:** $h(51)=3(51-54)^2+56=83$.
**Step 2:** $h(58)=3(58-54)^2+56=104$.
**Step 3:** Avg rate $=\frac{104-83}{58-51}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($104$): Height at $t=${t1}$, not the rate.', NULL, 'Algebra', NULL, 'math', NULL, 'NRM', 'NRM', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
