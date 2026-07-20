BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1f0b448c-ace7-49c6-a002-29a8550ed18b', 'What is the average rate of change of $h$ from $t=5$ to $t=12$?', 'Projectile height $h(t)=2(t-8)^2+10$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(5)=28$, $h(12)=42$. **Step 2:** $\\frac{42-28}{12-5}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$42$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=5$ to $t=12$?

**Step 2 — Solve.** **Step 1:** $h(5)=2(5-8)^2+10=28$.
**Step 2:** $h(12)=2(12-8)^2+10=42$.
**Step 3:** Avg rate $=\frac{42-28}{12-5}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($42$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('94b3e638-dea4-4c5a-9cbd-c2b9fabcc4c5', 'What is the average rate of change of $h$ from $t=6$ to $t=13$?', 'Projectile height $h(t)=3(t-9)^2+11$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(6)=38$, $h(13)=59$. **Step 2:** $\\frac{59-38}{13-6}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$59$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=6$ to $t=13$?

**Step 2 — Solve.** **Step 1:** $h(6)=3(6-9)^2+11=38$.
**Step 2:** $h(13)=3(13-9)^2+11=59$.
**Step 3:** Avg rate $=\frac{59-38}{13-6}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($59$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('85d01d1f-3151-4fbc-a6fa-dee65c68821b', 'What is the average rate of change of $h$ from $t=7$ to $t=14$?', 'Projectile height $h(t)=4(t-10)^2+12$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(7)=48$, $h(14)=76$. **Step 2:** $\\frac{76-48}{14-7}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$76$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=7$ to $t=14$?

**Step 2 — Solve.** **Step 1:** $h(7)=4(7-10)^2+12=48$.
**Step 2:** $h(14)=4(14-10)^2+12=76$.
**Step 3:** Avg rate $=\frac{76-48}{14-7}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($76$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21616245-c170-4fe0-8e15-cbaaa2eeff4f', 'What is the average rate of change of $h$ from $t=8$ to $t=15$?', 'Projectile height $h(t)=2(t-11)^2+13$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(8)=31$, $h(15)=45$. **Step 2:** $\\frac{45-31}{15-8}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=8$ to $t=15$?

**Step 2 — Solve.** **Step 1:** $h(8)=2(8-11)^2+13=31$.
**Step 2:** $h(15)=2(15-11)^2+13=45$.
**Step 3:** Avg rate $=\frac{45-31}{15-8}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($45$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5b5bab8-0c49-4411-aa20-ca330f3cab8c', 'What is the average rate of change of $h$ from $t=9$ to $t=16$?', 'Projectile height $h(t)=3(t-12)^2+14$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(9)=41$, $h(16)=62$. **Step 2:** $\\frac{62-41}{16-9}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$62$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=9$ to $t=16$?

**Step 2 — Solve.** **Step 1:** $h(9)=3(9-12)^2+14=41$.
**Step 2:** $h(16)=3(16-12)^2+14=62$.
**Step 3:** Avg rate $=\frac{62-41}{16-9}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($62$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('faaf1f04-18a2-4fbc-abf0-c58910f779e1', 'What is the average rate of change of $h$ from $t=10$ to $t=17$?', 'Projectile height $h(t)=4(t-13)^2+15$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(10)=51$, $h(17)=79$. **Step 2:** $\\frac{79-51}{17-10}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$79$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=10$ to $t=17$?

**Step 2 — Solve.** **Step 1:** $h(10)=4(10-13)^2+15=51$.
**Step 2:** $h(17)=4(17-13)^2+15=79$.
**Step 3:** Avg rate $=\frac{79-51}{17-10}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($79$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b35fd088-3e7f-4551-b078-2892415b35dc', 'What is the average rate of change of $h$ from $t=11$ to $t=18$?', 'Projectile height $h(t)=2(t-14)^2+16$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(11)=34$, $h(18)=48$. **Step 2:** $\\frac{48-34}{18-11}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$48$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=11$ to $t=18$?

**Step 2 — Solve.** **Step 1:** $h(11)=2(11-14)^2+16=34$.
**Step 2:** $h(18)=2(18-14)^2+16=48$.
**Step 3:** Avg rate $=\frac{48-34}{18-11}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($48$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3fdad687-053f-429b-a908-d93096acd3df', 'What is the average rate of change of $h$ from $t=12$ to $t=19$?', 'Projectile height $h(t)=3(t-15)^2+17$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(12)=44$, $h(19)=65$. **Step 2:** $\\frac{65-44}{19-12}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$65$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=12$ to $t=19$?

**Step 2 — Solve.** **Step 1:** $h(12)=3(12-15)^2+17=44$.
**Step 2:** $h(19)=3(19-15)^2+17=65$.
**Step 3:** Avg rate $=\frac{65-44}{19-12}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($65$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b6fca7d6-b052-44be-9edc-abbb05a286ba', 'What is the average rate of change of $h$ from $t=13$ to $t=20$?', 'Projectile height $h(t)=4(t-16)^2+18$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(13)=54$, $h(20)=82$. **Step 2:** $\\frac{82-54}{20-13}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$82$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=13$ to $t=20$?

**Step 2 — Solve.** **Step 1:** $h(13)=4(13-16)^2+18=54$.
**Step 2:** $h(20)=4(20-16)^2+18=82$.
**Step 3:** Avg rate $=\frac{82-54}{20-13}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($82$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8f1507a-c766-44c0-80b9-3d3a235ed170', 'What is the average rate of change of $h$ from $t=14$ to $t=21$?', 'Projectile height $h(t)=2(t-17)^2+19$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(14)=37$, $h(21)=51$. **Step 2:** $\\frac{51-37}{21-14}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$51$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=14$ to $t=21$?

**Step 2 — Solve.** **Step 1:** $h(14)=2(14-17)^2+19=37$.
**Step 2:** $h(21)=2(21-17)^2+19=51$.
**Step 3:** Avg rate $=\frac{51-37}{21-14}=2$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($51$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('db59e9d2-8bde-40ad-827b-d27cceffb309', 'What is the average rate of change of $h$ from $t=15$ to $t=22$?', 'Projectile height $h(t)=3(t-18)^2+20$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(15)=47$, $h(22)=68$. **Step 2:** $\\frac{68-47}{22-15}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$68$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=15$ to $t=22$?

**Step 2 — Solve.** **Step 1:** $h(15)=3(15-18)^2+20=47$.
**Step 2:** $h(22)=3(22-18)^2+20=68$.
**Step 3:** Avg rate $=\frac{68-47}{22-15}=3$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($68$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f6a40fb-ef43-45ae-aeb2-2a464568d0c5', 'What is the average rate of change of $h$ from $t=16$ to $t=23$?', 'Projectile height $h(t)=4(t-19)^2+21$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(16)=57$, $h(23)=85$. **Step 2:** $\\frac{85-57}{23-16}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$85$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=16$ to $t=23$?

**Step 2 — Solve.** **Step 1:** $h(16)=4(16-19)^2+21=57$.
**Step 2:** $h(23)=4(23-19)^2+21=85$.
**Step 3:** Avg rate $=\frac{85-57}{23-16}=4$ ft/s.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($85$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
