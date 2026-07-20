BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59179eda-93d3-49cf-9072-a0ba0fa4f79f', 'What is the average rate of change of $h$ from $t=41$ to $t=48$?', 'Projectile height $h(t)=2(t-44)^2+46$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(41)=64$, $h(48)=78$. **Step 2:** $\\frac{78-64}{48-41}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$78$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=41$ to $t=48$?

**Step 2 — Solve.** **Step 1:** $h(41)=2(41-44)^2+46=64$.
**Step 2:** $h(48)=2(48-44)^2+46=78$.
**Step 3:** Avg rate $=\frac{78-64}{48-41}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($78$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dc03ae03-063c-452f-8098-73581b804220', 'What is the average rate of change of $h$ from $t=42$ to $t=49$?', 'Projectile height $h(t)=3(t-45)^2+47$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(42)=74$, $h(49)=95$. **Step 2:** $\\frac{95-74}{49-42}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$95$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=42$ to $t=49$?

**Step 2 — Solve.** **Step 1:** $h(42)=3(42-45)^2+47=74$.
**Step 2:** $h(49)=3(49-45)^2+47=95$.
**Step 3:** Avg rate $=\frac{95-74}{49-42}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($95$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c512fe7a-1406-40b0-93b9-bc55f56b33cc', 'What is the average rate of change of $h$ from $t=43$ to $t=50$?', 'Projectile height $h(t)=4(t-46)^2+48$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(43)=84$, $h(50)=112$. **Step 2:** $\\frac{112-84}{50-43}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$112$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=43$ to $t=50$?

**Step 2 — Solve.** **Step 1:** $h(43)=4(43-46)^2+48=84$.
**Step 2:** $h(50)=4(50-46)^2+48=112$.
**Step 3:** Avg rate $=\frac{112-84}{50-43}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($112$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ccc2867f-c718-4941-91d2-a37fb1fbcfe9', 'What is the average rate of change of $h$ from $t=44$ to $t=51$? Enter your answer as a number.', 'Projectile height $h(t)=2(t-47)^2+49$ (feet, $t$ in seconds).', 'passage', '[{"id":"SPR","text":"2","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=44$ to $t=51$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $h(44)=2(44-47)^2+49=67$.
**Step 2:** $h(51)=2(51-47)^2+49=81$.
**Step 3:** Avg rate $=\frac{81-67}{51-44}=2$ ft/s.

**Step 3 — Answer SPR.** 2', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd46b4a7-25f1-41c5-8907-7a5adcc90a29', 'What is the average rate of change of $h$ from $t=45$ to $t=52$?', 'Projectile height $h(t)=3(t-48)^2+50$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(45)=77$, $h(52)=98$. **Step 2:** $\\frac{98-77}{52-45}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$98$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=45$ to $t=52$?

**Step 2 — Solve.** **Step 1:** $h(45)=3(45-48)^2+50=77$.
**Step 2:** $h(52)=3(52-48)^2+50=98$.
**Step 3:** Avg rate $=\frac{98-77}{52-45}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($98$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3a29b617-b35b-4b35-9329-af7c4562fdfe', 'What is the average rate of change of $h$ from $t=46$ to $t=53$?', 'Projectile height $h(t)=4(t-49)^2+51$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(46)=87$, $h(53)=115$. **Step 2:** $\\frac{115-87}{53-46}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$115$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=46$ to $t=53$?

**Step 2 — Solve.** **Step 1:** $h(46)=4(46-49)^2+51=87$.
**Step 2:** $h(53)=4(53-49)^2+51=115$.
**Step 3:** Avg rate $=\frac{115-87}{53-46}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($115$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e66dca1b-4426-44ab-876c-38ac7e50d722', 'What is the average rate of change of $h$ from $t=47$ to $t=54$?', 'Projectile height $h(t)=2(t-50)^2+52$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(47)=70$, $h(54)=84$. **Step 2:** $\\frac{84-70}{54-47}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=47$ to $t=54$?

**Step 2 — Solve.** **Step 1:** $h(47)=2(47-50)^2+52=70$.
**Step 2:** $h(54)=2(54-50)^2+52=84$.
**Step 3:** Avg rate $=\frac{84-70}{54-47}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($84$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2987e9c1-35c7-470c-84cc-2ac0c6b42d84', 'What is the average rate of change of $h$ from $t=48$ to $t=55$? Enter your answer as a number.', 'Projectile height $h(t)=3(t-51)^2+53$ (feet, $t$ in seconds).', 'passage', '[{"id":"SPR","text":"3","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=48$ to $t=55$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $h(48)=3(48-51)^2+53=80$.
**Step 2:** $h(55)=3(55-51)^2+53=101$.
**Step 3:** Avg rate $=\frac{101-80}{55-48}=3$ ft/s.

**Step 3 — Answer SPR.** 3', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d48bec46-4a95-4826-b19d-8d314af21fa8', 'What is the average rate of change of $h$ from $t=49$ to $t=56$?', 'Projectile height $h(t)=4(t-52)^2+54$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(49)=90$, $h(56)=118$. **Step 2:** $\\frac{118-90}{56-49}=4$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$118$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=49$ to $t=56$?

**Step 2 — Solve.** **Step 1:** $h(49)=4(49-52)^2+54=90$.
**Step 2:** $h(56)=4(56-52)^2+54=118$.
**Step 3:** Avg rate $=\frac{118-90}{56-49}=4$ ft/s.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Off by 2 ft/s from correct difference quotient.
- **C** ($4$): That is the leading coefficient, not average rate.
- **D** ($118$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('feb1c2fa-f906-488e-92f1-e2a20c2694fc', 'What is the average rate of change of $h$ from $t=50$ to $t=57$?', 'Projectile height $h(t)=2(t-53)^2+55$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$0$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(50)=73$, $h(57)=87$. **Step 2:** $\\frac{87-73}{57-50}=2$."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$87$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=50$ to $t=57$?

**Step 2 — Solve.** **Step 1:** $h(50)=2(50-53)^2+55=73$.
**Step 2:** $h(57)=2(57-53)^2+55=87$.
**Step 3:** Avg rate $=\frac{87-73}{57-50}=2$ ft/s.

**Step 3 — Answer B.** $2$

**Distractor analysis:**
- **A** ($0$): Off by 2 ft/s from correct difference quotient.
- **C** ($2$): That is the leading coefficient, not average rate.
- **D** ($87$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ccc9c29c-e8b3-4f61-b3c8-4a832c1ae89c', 'What is the average rate of change of $h$ from $t=51$ to $t=58$?', 'Projectile height $h(t)=3(t-54)^2+56$ (feet, $t$ in seconds).', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Off by 2 ft/s from correct difference quotient."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** $h(51)=83$, $h(58)=104$. **Step 2:** $\\frac{104-83}{58-51}=3$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"That is the leading coefficient, not average rate."},{"id":"D","text":"$104$","is_correct":false,"explanation":"Height at $t=${t1}$, not the rate."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=51$ to $t=58$?

**Step 2 — Solve.** **Step 1:** $h(51)=3(51-54)^2+56=83$.
**Step 2:** $h(58)=3(58-54)^2+56=104$.
**Step 3:** Avg rate $=\frac{104-83}{58-51}=3$ ft/s.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Off by 2 ft/s from correct difference quotient.
- **C** ($3$): That is the leading coefficient, not average rate.
- **D** ($104$): Height at $t=${t1}$, not the rate.', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcd350e5-bb54-4db3-b323-b85c3c782e44', 'What is the average rate of change of $h$ from $t=52$ to $t=59$? Enter your answer as a number.', 'Projectile height $h(t)=4(t-55)^2+57$ (feet, $t$ in seconds).', 'passage', '[{"id":"SPR","text":"4","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the average rate of change of $h$ from $t=52$ to $t=59$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $h(52)=4(52-55)^2+57=93$.
**Step 2:** $h(59)=4(59-55)^2+57=121$.
**Step 3:** Avg rate $=\frac{121-93}{59-52}=4$ ft/s.

**Step 3 — Answer SPR.** 4', NULL, 'Advanced Math', 'Nonlinear functions', 'math', 'advanced', 'NRM', 'NRM', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"NRM","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
