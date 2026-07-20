BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7976932c-8020-407a-8e40-99d557789f8a', 'For what value of $k$ does $8(x-4)+2k = 168$ have solution $x=24$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=24$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$24$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-4)+2k = 168$ have solution $x=24$?

**Step 2 — Solve.** **Step 1:** Substitute $x=24$: $8(24-k)+2k=168$.
**Step 2:** Expand: $192-8k+2k=168$ → $192+-6k=168$.
**Step 3:** Isolate: $-6k=-24$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($24$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":19,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('26946250-f469-4c4e-9a51-7c9878b95072', 'Linear function $f$ models temperature. $f(39)=33$ and $f(45)=51$. What is $f(-41)$?', '', NULL, '[{"id":"A","text":"$-204$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-211$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-207$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-41)=-207$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(39)=33$ and $f(45)=51$. What is $f(-41)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{51-33}{45-39}=3$.
**Step 2:** Point-slope: $f(-41)=3(-41-39)+(33)$.
**Step 3:** $f(-41)=-207$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-207$

**Distractor analysis:**
- **A** ($-204$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-211$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":20,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7a29f9fa-47af-4ac0-a13c-6e2a63d7f6ef', 'If the delivery van continues at the same rate, what is $d$ when $t=42$?', 'A delivery van''s distance $d$ (miles) after $t$ hours is $d=5t+32$. At $t=34$, $d=202$.', 'passage', '[{"id":"A","text":"$237$","is_correct":false,"explanation":"Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$207$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=42$."},{"id":"C","text":"$242$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(42)+32$. **Step 2:** $d=242$."},{"id":"D","text":"$210$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=42$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $32$.
**Step 2:** $d=5(42)+32=242$.
**Step 3:** Cross-check via $(42-34)×5+202=242$.

**Step 3 — Answer C.** $242$

**Distractor analysis:**
- **A** ($237$): Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($207$): Adds slope once instead of evaluating at $t=42$.
- **D** ($210$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_easy","slot":21,"filter_section":"math","module_index":2,"m2_variant":"easy","form_hardness":2,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d88cc35f-c6dd-48dd-b840-5c0ceb89d4cd', 'Solve for $x$: $2x + 4 = 18$', '', NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$6$","is_correct":false,"explanation":"Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 4. **Step 2:** Divide by 2."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $2x + 4 = 18$

**Step 2 — Solve.** **Step 1:** $2x = 14$
**Step 2:** $x = 7$

**Step 3 — Answer C.** $7$

**Distractor analysis:**
- **A** ($5$): Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($6$): Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($8$): Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":0,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('47df6d55-a7be-441f-9df2-681137d434f0', 'Linear function $f$ models temperature. $f(15)=9$ and $f(21)=27$. What is $f(-17)$?', '', NULL, '[{"id":"A","text":"$-84$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-91$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-87$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-17)=-87$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(15)=9$ and $f(21)=27$. What is $f(-17)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{27-9}{21-15}=3$.
**Step 2:** Point-slope: $f(-17)=3(-17-15)+(9)$.
**Step 3:** $f(-17)=-87$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-87$

**Distractor analysis:**
- **A** ($-84$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-91$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":1,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"easy"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4982382c-17e6-431c-b378-febb83b6147a', 'If the delivery van continues at the same rate, what is $d$ when $t=18$?', 'A delivery van''s distance $d$ (miles) after $t$ hours is $d=5t+8$. At $t=10$, $d=58$.', 'passage', '[{"id":"A","text":"$93$","is_correct":false,"explanation":"Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=18$."},{"id":"C","text":"$98$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(18)+8$. **Step 2:** $d=98$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=18$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $8$.
**Step 2:** $d=5(18)+8=98$.
**Step 3:** Cross-check via $(18-10)×5+58=98$.

**Step 3 — Answer C.** $98$

**Distractor analysis:**
- **A** ($93$): Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($63$): Adds slope once instead of evaluating at $t=18$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":2,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('09182cfe-89ce-4ca3-9a2b-fd869d536f6e', 'Given $x+y=101$ and $3x-y=55$, what is $x$?', 'At an event, 101 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=55$.', 'passage', '[{"id":"A","text":"$52$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=208$. **Step 2:** $x=52$."},{"id":"B","text":"$51$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$53$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=101$ and $3x-y=55$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=101+55$ → $4x=208$.
**Step 2:** $x=52$.
**Step 3:** Back-substitute: $y=49$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $52$

**Distractor analysis:**
- **B** ($51$): One less than the solution.
- **C** ($49$): Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($53$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":3,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('24c2e7e7-81eb-4470-9485-72650e10b01d', 'Which integer value of $x$ satisfies $6x + 8 > 70$ and is the smallest feasible reading?', 'A signal strength $R=ax+b$ must exceed 70 but stay at most 86 to trigger an alert.', 'passage', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Choice A ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$9$","is_correct":false,"explanation":"Choice B ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$11$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 10.33$. **Step 2:** Smallest integer: 11."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 70$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 62$.
**Step 2:** $x > 10.33$.
**Step 3:** Among choices, $11$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Step 3 — Answer D.** $11$

**Distractor analysis:**
- **A** ($8$): Choice A ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($9$): Choice B ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($10$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":4,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e43fa66b-22ae-4228-bdb2-4679627a9bd0', 'What is the average rate of change of $h$ from $t=19$ to $t=26$?', 'Projectile height $h(t)=4(t-22)^2+24$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(19)=60$, $h(26)=88$. **Step 2:** $\\frac{88-60}{26-19}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$88$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=19$ to $t=26$?

**Step 2 — Solve.** **Step 1:** $h(19)=4(19-22)^2+24=60$.
**Step 2:** $h(26)=4(26-22)^2+24=88$.
**Step 3:** Avg rate $=\frac{88-60}{26-19}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($88$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":5,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('496d2042-3ae6-441f-8c93-c5650e6a2852', 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)', '', NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)

**Step 2 — Solve.** **Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":6,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f602e0cf-d4bd-4383-8058-0c838fa4f99b', 'Which expression is equivalent to $(3x+59)^2 - (3x-59)^2$?', '', NULL, '[{"id":"A","text":"$708x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+59$, $v=3x-59$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$236x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+3481$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+59)^2 - (3x-59)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+59$, $v=3x-59$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(118)=708x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $708x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($236x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+3481$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":7,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"medium"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3869b117-889a-40f8-9112-57624866383c', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:8$ over 15 hours at 5 tasks/hour combined.', 'passage', '[{"id":"A","text":"$520$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$523$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$525$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×15×(7+8)=1125$. **Step 2:** A''s share $\\frac{7}{15}×1125=525$."},{"id":"D","text":"$1125$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1 — Understand.** How many tasks did the first worker complete?

**Step 2 — Solve.** **Step 1:** Combined output $=5×15×(7+8)=1125$ tasks.
**Step 2:** A''s fraction $\frac{7}{15}$.
**Step 3:** $\frac{7}{15}×1125=525$ tasks.

**Step 3 — Answer C.** $525$

**Distractor analysis:**
- **A** ($520$): Underestimates A''s share of the total.
- **B** ($523$): Close but ratio arithmetic is off.
- **D** ($1125$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":8,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c057ddf4-249f-4ffd-b937-70e724d0bf2a', 'If the original subscription fee is $540$, what is the final subscription fee after both changes?', 'A subscription fee is marked up 25%, then discounted 20% on the new subscription fee.', 'passage', '[{"id":"A","text":"$540$","is_correct":true,"explanation":"Correct (A). **Step 1:** $540×1.25=675$. **Step 2:** $675×0.8=540$."},{"id":"B","text":"$540$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$675$","is_correct":false,"explanation":"Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$567$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb, 'A', '**Step 1 — Understand.** If the original price is $540$, what is the final price after both changes?

**Step 2 — Solve.** **Step 1:** Markup: $540×(1+25/100)=675$.
**Step 2:** Discount on new price: $675×(1-20/100)=540$.
**Step 3:** Do not net the percents — order matters.

**Step 3 — Answer A.** $540$

**Distractor analysis:**
- **B** ($540$): Ignores both percent changes.
- **C** ($675$): Choice C ($675$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($567$): Subtracting percentages directly is invalid for sequential changes.', NULL, 'Problem-Solving and Data Analysis', 'Percentages', 'math', 'psda', 'PER', 'PER', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":9,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1cd74d7f-6c0d-4d34-adeb-f994137e8d69', 'What must $x$ be for the set described?', 'Five test scores: 29, 33, 37, 41, and one score $x$ is unknown. The mean is 33.2.', 'passage', '[{"id":"A","text":"$23$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$26$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=33.2×5=166$. **Step 2:** $x=26$."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$33$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=33.2×5=166$.
**Step 2:** Known sum $=140$.
**Step 3:** $x=166-140=26$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $26$

**Distractor analysis:**
- **A** ($23$): Pulls the mean down too far.
- **C** ($29$): Too high for the given mean.
- **D** ($33$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":10,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e9b446ad-4be7-4193-8c7d-794607c5f695', 'Which equation models the line, and what does its slope mean in context?', 'A line models cost vs. units, passing through $(5,18)$ and $(13,50)$.

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
- **D** ($y=\frac{50}{13}x$; average cost per unit from origin): Slope from origin is not the line''s slope.', NULL, 'Problem-Solving and Data Analysis', 'Two-variable data', 'math', 'psda', 'TVA', 'TVA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, false, true, 'exam_simulator', '{"exam_simulator_v1":true,"simulator_form":2,"module_key":"math_module_2_hard","slot":11,"filter_section":"math","module_index":2,"m2_variant":"hard","form_hardness":2,"difficulty_band":"hard"}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
