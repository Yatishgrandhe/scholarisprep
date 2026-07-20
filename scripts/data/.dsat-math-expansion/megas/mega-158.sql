BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('391228dc-9acf-46d0-bd6d-095f84d81ba5', 'What is the average rate of change of $h$ from $t=29$ to $t=36$?', 'Projectile height $h(t)=2(t-32)^2+34$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(29)=52$, $h(36)=66$. **Step 2:** $\\frac{66-52}{36-29}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$66$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=29$ to $t=36$?

**Step 2 — Solve.** **Step 1:** $h(29)=2(29-32)^2+34=52$.
**Step 2:** $h(36)=2(36-32)^2+34=66$.
**Step 3:** Avg rate $=\frac{66-52}{36-29}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($66$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f9b8a349-f5ba-4c26-b9d9-14644b3410f2', 'What is the average rate of change of $h$ from $t=30$ to $t=37$?', 'Projectile height $h(t)=3(t-33)^2+35$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(30)=62$, $h(37)=83$. **Step 2:** $\\frac{83-62}{37-30}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$83$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=30$ to $t=37$?

**Step 2 — Solve.** **Step 1:** $h(30)=3(30-33)^2+35=62$.
**Step 2:** $h(37)=3(37-33)^2+35=83$.
**Step 3:** Avg rate $=\frac{83-62}{37-30}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($83$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c9be2b04-0fee-4ea7-9b00-3a48caede51f', 'What is the average rate of change of $h$ from $t=31$ to $t=38$?', 'Projectile height $h(t)=4(t-34)^2+36$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(31)=72$, $h(38)=100$. **Step 2:** $\\frac{100-72}{38-31}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$100$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=31$ to $t=38$?

**Step 2 — Solve.** **Step 1:** $h(31)=4(31-34)^2+36=72$.
**Step 2:** $h(38)=4(38-34)^2+36=100$.
**Step 3:** Avg rate $=\frac{100-72}{38-31}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($100$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('869896e5-b306-4892-b542-8f58157e5506', 'What is the average rate of change of $h$ from $t=32$ to $t=39$? Enter your answer as a number.', 'Projectile height $h(t)=2(t-35)^2+37$ (feet, $t$ in seconds).', 'passage', '[{"id":"SPR","text":"2","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=32$ to $t=39$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $h(32)=2(32-35)^2+37=55$.
**Step 2:** $h(39)=2(39-35)^2+37=69$.
**Step 3:** Avg rate $=\frac{69-55}{39-32}=2$ ft/s.

**Step 3 — Answer SPR.** 2', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e05051ce-4aa0-4bcf-a45a-8c502995393c', 'What is the average rate of change of $h$ from $t=33$ to $t=40$?', 'Projectile height $h(t)=3(t-36)^2+38$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(33)=65$, $h(40)=86$. **Step 2:** $\\frac{86-65}{40-33}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$86$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=33$ to $t=40$?

**Step 2 — Solve.** **Step 1:** $h(33)=3(33-36)^2+38=65$.
**Step 2:** $h(40)=3(40-36)^2+38=86$.
**Step 3:** Avg rate $=\frac{86-65}{40-33}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($86$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba4e3793-b459-43ba-8c59-3e5321fa95b0', 'What is the average rate of change of $h$ from $t=34$ to $t=41$?', 'Projectile height $h(t)=4(t-37)^2+39$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(34)=75$, $h(41)=103$. **Step 2:** $\\frac{103-75}{41-34}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$103$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=34$ to $t=41$?

**Step 2 — Solve.** **Step 1:** $h(34)=4(34-37)^2+39=75$.
**Step 2:** $h(41)=4(41-37)^2+39=103$.
**Step 3:** Avg rate $=\frac{103-75}{41-34}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($103$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('07108a86-d4a8-4346-ba75-debb3837050e', 'What is the average rate of change of $h$ from $t=35$ to $t=42$?', 'Projectile height $h(t)=2(t-38)^2+40$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(35)=58$, $h(42)=72$. **Step 2:** $\\frac{72-58}{42-35}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$72$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=35$ to $t=42$?

**Step 2 — Solve.** **Step 1:** $h(35)=2(35-38)^2+40=58$.
**Step 2:** $h(42)=2(42-38)^2+40=72$.
**Step 3:** Avg rate $=\frac{72-58}{42-35}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($72$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d8987d67-7732-43a5-9afe-816e6c37d357', 'What is the average rate of change of $h$ from $t=36$ to $t=43$? Enter your answer as a number.', 'Projectile height $h(t)=3(t-39)^2+41$ (feet, $t$ in seconds).', 'passage', '[{"id":"SPR","text":"3","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=36$ to $t=43$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $h(36)=3(36-39)^2+41=68$.
**Step 2:** $h(43)=3(43-39)^2+41=89$.
**Step 3:** Avg rate $=\frac{89-68}{43-36}=3$ ft/s.

**Step 3 — Answer SPR.** 3', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6907725-90f4-402e-824d-334c0dcdcd43', 'What is the average rate of change of $h$ from $t=37$ to $t=44$?', 'Projectile height $h(t)=4(t-40)^2+42$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(37)=78$, $h(44)=106$. **Step 2:** $\\frac{106-78}{44-37}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$106$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=37$ to $t=44$?

**Step 2 — Solve.** **Step 1:** $h(37)=4(37-40)^2+42=78$.
**Step 2:** $h(44)=4(44-40)^2+42=106$.
**Step 3:** Avg rate $=\frac{106-78}{44-37}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($106$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8b4c8e25-27f1-4e41-aead-f44efccefd92', 'What is the average rate of change of $h$ from $t=38$ to $t=45$?', 'Projectile height $h(t)=2(t-41)^2+43$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(38)=61$, $h(45)=75$. **Step 2:** $\\frac{75-61}{45-38}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$75$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=38$ to $t=45$?

**Step 2 — Solve.** **Step 1:** $h(38)=2(38-41)^2+43=61$.
**Step 2:** $h(45)=2(45-41)^2+43=75$.
**Step 3:** Avg rate $=\frac{75-61}{45-38}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($75$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ec98c77-0510-4cd3-a747-a8585968af8d', 'What is the average rate of change of $h$ from $t=39$ to $t=46$?', 'Projectile height $h(t)=3(t-42)^2+44$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(39)=71$, $h(46)=92$. **Step 2:** $\\frac{92-71}{46-39}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$92$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=39$ to $t=46$?

**Step 2 — Solve.** **Step 1:** $h(39)=3(39-42)^2+44=71$.
**Step 2:** $h(46)=3(46-42)^2+44=92$.
**Step 3:** Avg rate $=\frac{92-71}{46-39}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($92$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b54dccd6-de62-4b42-a287-6f4073d25826', 'What is the average rate of change of $h$ from $t=40$ to $t=47$? Enter your answer as a number.', 'Projectile height $h(t)=4(t-43)^2+45$ (feet, $t$ in seconds).', 'passage', '[{"id":"SPR","text":"4","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=40$ to $t=47$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $h(40)=4(40-43)^2+45=81$.
**Step 2:** $h(47)=4(47-43)^2+45=109$.
**Step 3:** Avg rate $=\frac{109-81}{47-40}=4$ ft/s.

**Step 3 — Answer SPR.** 4', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
