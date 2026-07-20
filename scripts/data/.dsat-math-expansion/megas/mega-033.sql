BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aaba0401-fa09-4389-befb-b168f5bb4ebe', 'Linear function $f$ models temperature. $f(13)=7$ and $f(19)=31$. What is $f(-15)$?', NULL, NULL, '[{"id":"A","text":"$-101$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-109$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-105$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-15)=-105$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(13)=7$ and $f(19)=31$. What is $f(-15)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{31-7}{19-13}=4$.
**Step 2:** Point-slope: $f(-15)=4(-15-13)+(7)$.
**Step 3:** $f(-15)=-105$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-105$

**Distractor analysis:**
- **A** ($-101$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-109$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0a125b6d-8576-48dd-9ffe-38cd09cbc537', 'Linear function $f$ models temperature. $f(14)=8$ and $f(20)=38$. What is $f(-16)$?', NULL, NULL, '[{"id":"A","text":"$-137$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-146$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-142$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-16)=-142$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(14)=8$ and $f(20)=38$. What is $f(-16)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{38-8}{20-14}=5$.
**Step 2:** Point-slope: $f(-16)=5(-16-14)+(8)$.
**Step 3:** $f(-16)=-142$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-142$

**Distractor analysis:**
- **A** ($-137$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-146$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('015888af-675f-4698-aa69-74a4de9731e5', 'Linear function $f$ models temperature. $f(15)=9$ and $f(21)=27$. What is $f(-17)$?', NULL, NULL, '[{"id":"A","text":"$-84$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-91$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-87$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-17)=-87$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(15)=9$ and $f(21)=27$. What is $f(-17)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{27-9}{21-15}=3$.
**Step 2:** Point-slope: $f(-17)=3(-17-15)+(9)$.
**Step 3:** $f(-17)=-87$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-87$

**Distractor analysis:**
- **A** ($-84$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-91$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0568fb13-60ee-4615-b81b-a47fa3a2eb2a', 'Linear function $f$ models temperature. $f(16)=10$ and $f(22)=34$. What is $f(-18)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-126","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(16)=10$ and $f(22)=34$. What is $f(-18)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{34-10}{22-16}=4$.
**Step 2:** Point-slope: $f(-18)=4(-18-16)+(10)$.
**Step 3:** $f(-18)=-126$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -126', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bdc94ce3-09fe-425d-96ab-2a4df751a19e', 'Linear function $f$ models temperature. $f(17)=11$ and $f(23)=41$. What is $f(-19)$?', NULL, NULL, '[{"id":"A","text":"$-164$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-173$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-169$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-19)=-169$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(17)=11$ and $f(23)=41$. What is $f(-19)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{41-11}{23-17}=5$.
**Step 2:** Point-slope: $f(-19)=5(-19-17)+(11)$.
**Step 3:** $f(-19)=-169$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-169$

**Distractor analysis:**
- **A** ($-164$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-173$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04fcd23d-1781-4300-acde-7649226a5c56', 'Linear function $f$ models temperature. $f(18)=12$ and $f(24)=30$. What is $f(-20)$?', NULL, NULL, '[{"id":"A","text":"$-99$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-106$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-102$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-20)=-102$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(18)=12$ and $f(24)=30$. What is $f(-20)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{30-12}{24-18}=3$.
**Step 2:** Point-slope: $f(-20)=3(-20-18)+(12)$.
**Step 3:** $f(-20)=-102$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-102$

**Distractor analysis:**
- **A** ($-99$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-106$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f37d52d8-07dd-48dd-8ee5-0913d3ebb15d', 'Linear function $f$ models temperature. $f(19)=13$ and $f(25)=37$. What is $f(-21)$?', NULL, NULL, '[{"id":"A","text":"$-143$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-151$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-147$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-21)=-147$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(19)=13$ and $f(25)=37$. What is $f(-21)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{37-13}{25-19}=4$.
**Step 2:** Point-slope: $f(-21)=4(-21-19)+(13)$.
**Step 3:** $f(-21)=-147$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-147$

**Distractor analysis:**
- **A** ($-143$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-151$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('305c94ae-8360-4bdb-a343-788896eb8317', 'Linear function $f$ models temperature. $f(20)=14$ and $f(26)=44$. What is $f(-22)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-196","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(20)=14$ and $f(26)=44$. What is $f(-22)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{44-14}{26-20}=5$.
**Step 2:** Point-slope: $f(-22)=5(-22-20)+(14)$.
**Step 3:** $f(-22)=-196$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -196', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9f14d7e3-ee96-4510-b45c-167219e5d442', 'Linear function $f$ models temperature. $f(21)=15$ and $f(27)=33$. What is $f(-23)$?', NULL, NULL, '[{"id":"A","text":"$-114$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-121$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-117$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-23)=-117$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(21)=15$ and $f(27)=33$. What is $f(-23)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{33-15}{27-21}=3$.
**Step 2:** Point-slope: $f(-23)=3(-23-21)+(15)$.
**Step 3:** $f(-23)=-117$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-117$

**Distractor analysis:**
- **A** ($-114$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-121$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e082c3f7-1778-4419-862b-e4821b7d4a1a', 'Linear function $f$ models temperature. $f(22)=16$ and $f(28)=40$. What is $f(-24)$?', NULL, NULL, '[{"id":"A","text":"$-164$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-172$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-168$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-24)=-168$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(22)=16$ and $f(28)=40$. What is $f(-24)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{40-16}{28-22}=4$.
**Step 2:** Point-slope: $f(-24)=4(-24-22)+(16)$.
**Step 3:** $f(-24)=-168$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-168$

**Distractor analysis:**
- **A** ($-164$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-172$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b448594b-a49d-4bba-9db7-9c172919a64d', 'Linear function $f$ models temperature. $f(23)=17$ and $f(29)=47$. What is $f(-25)$?', NULL, NULL, '[{"id":"A","text":"$-218$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-227$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-223$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-25)=-223$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(23)=17$ and $f(29)=47$. What is $f(-25)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{47-17}{29-23}=5$.
**Step 2:** Point-slope: $f(-25)=5(-25-23)+(17)$.
**Step 3:** $f(-25)=-223$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-223$

**Distractor analysis:**
- **A** ($-218$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-227$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1f750662-0437-4153-ba56-b8a418a026b8', 'Linear function $f$ models temperature. $f(24)=18$ and $f(30)=36$. What is $f(-26)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-132","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(24)=18$ and $f(30)=36$. What is $f(-26)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{36-18}{30-24}=3$.
**Step 2:** Point-slope: $f(-26)=3(-26-24)+(18)$.
**Step 3:** $f(-26)=-132$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -132', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
