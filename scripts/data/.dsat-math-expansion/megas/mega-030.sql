BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('45845797-34d2-4424-8049-845a12e6ee46', 'Linear function $f$ models temperature. $f(37)=31$ and $f(43)=55$. What is $f(-39)$?', NULL, NULL, '[{"id":"A","text":"$-269$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-277$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-273$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-39)=-273$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(37)=31$ and $f(43)=55$. What is $f(-39)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{55-31}{43-37}=4$.
**Step 2:** Point-slope: $f(-39)=4(-39-37)+(31)$.
**Step 3:** $f(-39)=-273$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-273$

**Distractor analysis:**
- **A** ($-269$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-277$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a7e843e1-a088-42ce-b88d-075e9bd6fa7d', 'Linear function $f$ models temperature. $f(38)=32$ and $f(44)=62$. What is $f(-40)$?', NULL, NULL, '[{"id":"A","text":"$-353$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-362$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-358$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-40)=-358$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(38)=32$ and $f(44)=62$. What is $f(-40)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{62-32}{44-38}=5$.
**Step 2:** Point-slope: $f(-40)=5(-40-38)+(32)$.
**Step 3:** $f(-40)=-358$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-358$

**Distractor analysis:**
- **A** ($-353$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-362$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('06ef0ab2-6142-45ba-a252-ca912f7e8570', 'Linear function $f$ models temperature. $f(39)=33$ and $f(45)=51$. What is $f(-41)$?', NULL, NULL, '[{"id":"A","text":"$-204$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-211$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-207$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-41)=-207$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(39)=33$ and $f(45)=51$. What is $f(-41)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{51-33}{45-39}=3$.
**Step 2:** Point-slope: $f(-41)=3(-41-39)+(33)$.
**Step 3:** $f(-41)=-207$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-207$

**Distractor analysis:**
- **A** ($-204$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-211$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f218962a-92c6-42ae-9411-ee996c00f803', 'Linear function $f$ models temperature. $f(40)=34$ and $f(46)=58$. What is $f(-42)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-294","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(40)=34$ and $f(46)=58$. What is $f(-42)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{58-34}{46-40}=4$.
**Step 2:** Point-slope: $f(-42)=4(-42-40)+(34)$.
**Step 3:** $f(-42)=-294$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -294', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('81cb2184-19fb-43f5-80cf-b69eadf005e9', 'Linear function $f$ models temperature. $f(41)=35$ and $f(47)=65$. What is $f(-43)$?', NULL, NULL, '[{"id":"A","text":"$-380$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-389$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-385$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-43)=-385$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(41)=35$ and $f(47)=65$. What is $f(-43)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{65-35}{47-41}=5$.
**Step 2:** Point-slope: $f(-43)=5(-43-41)+(35)$.
**Step 3:** $f(-43)=-385$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-385$

**Distractor analysis:**
- **A** ($-380$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-389$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('df6bb12c-9449-4790-bc30-24b4b4f799ac', 'Linear function $f$ models temperature. $f(42)=36$ and $f(48)=54$. What is $f(-44)$?', NULL, NULL, '[{"id":"A","text":"$-219$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-226$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-222$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-44)=-222$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(42)=36$ and $f(48)=54$. What is $f(-44)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{54-36}{48-42}=3$.
**Step 2:** Point-slope: $f(-44)=3(-44-42)+(36)$.
**Step 3:** $f(-44)=-222$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-222$

**Distractor analysis:**
- **A** ($-219$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-226$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d2e9ce88-d8b9-481e-b4e7-e0b820060711', 'Linear function $f$ models temperature. $f(43)=37$ and $f(49)=61$. What is $f(-45)$?', NULL, NULL, '[{"id":"A","text":"$-311$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-319$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-315$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-45)=-315$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(43)=37$ and $f(49)=61$. What is $f(-45)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{61-37}{49-43}=4$.
**Step 2:** Point-slope: $f(-45)=4(-45-43)+(37)$.
**Step 3:** $f(-45)=-315$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-315$

**Distractor analysis:**
- **A** ($-311$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-319$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eb747963-1754-4661-9de1-4bd1597a4d5b', 'Linear function $f$ models temperature. $f(44)=38$ and $f(50)=68$. What is $f(-46)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-412","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(44)=38$ and $f(50)=68$. What is $f(-46)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{68-38}{50-44}=5$.
**Step 2:** Point-slope: $f(-46)=5(-46-44)+(38)$.
**Step 3:** $f(-46)=-412$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -412', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a818ab2f-f863-4279-9e61-0c1bc99b25ac', 'Linear function $f$ models temperature. $f(45)=39$ and $f(51)=57$. What is $f(-47)$?', NULL, NULL, '[{"id":"A","text":"$-234$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-241$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-237$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-47)=-237$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(45)=39$ and $f(51)=57$. What is $f(-47)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{57-39}{51-45}=3$.
**Step 2:** Point-slope: $f(-47)=3(-47-45)+(39)$.
**Step 3:** $f(-47)=-237$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-237$

**Distractor analysis:**
- **A** ($-234$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-241$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1c6d211a-6b36-4f64-921d-af2d04cad51d', 'Linear function $f$ models temperature. $f(46)=40$ and $f(52)=64$. What is $f(-48)$?', NULL, NULL, '[{"id":"A","text":"$-332$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-340$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-336$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-48)=-336$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(46)=40$ and $f(52)=64$. What is $f(-48)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{64-40}{52-46}=4$.
**Step 2:** Point-slope: $f(-48)=4(-48-46)+(40)$.
**Step 3:** $f(-48)=-336$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-336$

**Distractor analysis:**
- **A** ($-332$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-340$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('46472120-c799-4222-84dd-bce1d5c8f02a', 'Linear function $f$ models temperature. $f(47)=41$ and $f(53)=71$. What is $f(-49)$?', NULL, NULL, '[{"id":"A","text":"$-434$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-443$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-439$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-49)=-439$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(47)=41$ and $f(53)=71$. What is $f(-49)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{71-41}{53-47}=5$.
**Step 2:** Point-slope: $f(-49)=5(-49-47)+(41)$.
**Step 3:** $f(-49)=-439$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-439$

**Distractor analysis:**
- **A** ($-434$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-443$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3f1422af-5764-4813-80f8-99b5295e71af', 'Linear function $f$ models temperature. $f(48)=42$ and $f(54)=60$. What is $f(-50)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-252","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(48)=42$ and $f(54)=60$. What is $f(-50)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{60-42}{54-48}=3$.
**Step 2:** Point-slope: $f(-50)=3(-50-48)+(42)$.
**Step 3:** $f(-50)=-252$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -252', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
