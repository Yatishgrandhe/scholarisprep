BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ccbd55a6-b809-4bcb-b2e2-7138bbde76c2', 'Linear function $f$ models temperature. $f(25)=19$ and $f(31)=43$. What is $f(-27)$?', NULL, NULL, '[{"id":"A","text":"$-185$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-193$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-189$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-27)=-189$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(25)=19$ and $f(31)=43$. What is $f(-27)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{43-19}{31-25}=4$.
**Step 2:** Point-slope: $f(-27)=4(-27-25)+(19)$.
**Step 3:** $f(-27)=-189$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-189$

**Distractor analysis:**
- **A** ($-185$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-193$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('31a41a7c-54fe-45a0-ba08-6644187f73e5', 'Linear function $f$ models temperature. $f(26)=20$ and $f(32)=50$. What is $f(-28)$?', NULL, NULL, '[{"id":"A","text":"$-245$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-254$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-250$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-28)=-250$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(26)=20$ and $f(32)=50$. What is $f(-28)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{50-20}{32-26}=5$.
**Step 2:** Point-slope: $f(-28)=5(-28-26)+(20)$.
**Step 3:** $f(-28)=-250$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-250$

**Distractor analysis:**
- **A** ($-245$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-254$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ea826390-030d-4497-be91-c9d27214b9b7', 'Linear function $f$ models temperature. $f(27)=21$ and $f(33)=39$. What is $f(-29)$?', NULL, NULL, '[{"id":"A","text":"$-144$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-151$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-147$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-29)=-147$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(27)=21$ and $f(33)=39$. What is $f(-29)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{39-21}{33-27}=3$.
**Step 2:** Point-slope: $f(-29)=3(-29-27)+(21)$.
**Step 3:** $f(-29)=-147$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-147$

**Distractor analysis:**
- **A** ($-144$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-151$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e86c118f-cfcf-4c43-93ff-051318b755da', 'Linear function $f$ models temperature. $f(28)=22$ and $f(34)=46$. What is $f(-30)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-210","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(28)=22$ and $f(34)=46$. What is $f(-30)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{46-22}{34-28}=4$.
**Step 2:** Point-slope: $f(-30)=4(-30-28)+(22)$.
**Step 3:** $f(-30)=-210$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -210', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb8ddab9-6b61-4daa-a0e9-dfaeead91144', 'Linear function $f$ models temperature. $f(29)=23$ and $f(35)=53$. What is $f(-31)$?', NULL, NULL, '[{"id":"A","text":"$-272$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-281$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-277$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-31)=-277$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(29)=23$ and $f(35)=53$. What is $f(-31)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{53-23}{35-29}=5$.
**Step 2:** Point-slope: $f(-31)=5(-31-29)+(23)$.
**Step 3:** $f(-31)=-277$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-277$

**Distractor analysis:**
- **A** ($-272$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-281$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8cef6e2b-fc7d-4002-9fe7-28cff00356b7', 'Linear function $f$ models temperature. $f(30)=24$ and $f(36)=42$. What is $f(-32)$?', NULL, NULL, '[{"id":"A","text":"$-159$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-166$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-162$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-32)=-162$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(30)=24$ and $f(36)=42$. What is $f(-32)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{42-24}{36-30}=3$.
**Step 2:** Point-slope: $f(-32)=3(-32-30)+(24)$.
**Step 3:** $f(-32)=-162$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-162$

**Distractor analysis:**
- **A** ($-159$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-166$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e855caad-2e9e-4588-90a0-78c1f5c71bd9', 'Linear function $f$ models temperature. $f(31)=25$ and $f(37)=49$. What is $f(-33)$?', NULL, NULL, '[{"id":"A","text":"$-227$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-235$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-231$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-33)=-231$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(31)=25$ and $f(37)=49$. What is $f(-33)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{49-25}{37-31}=4$.
**Step 2:** Point-slope: $f(-33)=4(-33-31)+(25)$.
**Step 3:** $f(-33)=-231$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-231$

**Distractor analysis:**
- **A** ($-227$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-235$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c3e206a4-684f-4f03-a307-3ee314881aba', 'Linear function $f$ models temperature. $f(32)=26$ and $f(38)=56$. What is $f(-34)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-304","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(32)=26$ and $f(38)=56$. What is $f(-34)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{56-26}{38-32}=5$.
**Step 2:** Point-slope: $f(-34)=5(-34-32)+(26)$.
**Step 3:** $f(-34)=-304$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -304', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e4040b14-01e0-4d49-8e64-5036035d60a9', 'Linear function $f$ models temperature. $f(33)=27$ and $f(39)=45$. What is $f(-35)$?', NULL, NULL, '[{"id":"A","text":"$-174$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-181$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-177$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-35)=-177$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(33)=27$ and $f(39)=45$. What is $f(-35)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{45-27}{39-33}=3$.
**Step 2:** Point-slope: $f(-35)=3(-35-33)+(27)$.
**Step 3:** $f(-35)=-177$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-177$

**Distractor analysis:**
- **A** ($-174$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-181$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2fcc6d15-9b5f-4560-a6b6-39f0baee9e17', 'Linear function $f$ models temperature. $f(34)=28$ and $f(40)=52$. What is $f(-36)$?', NULL, NULL, '[{"id":"A","text":"$-248$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-256$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-252$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-36)=-252$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(34)=28$ and $f(40)=52$. What is $f(-36)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{52-28}{40-34}=4$.
**Step 2:** Point-slope: $f(-36)=4(-36-34)+(28)$.
**Step 3:** $f(-36)=-252$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-252$

**Distractor analysis:**
- **A** ($-248$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-256$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('150fd1a7-17ca-4088-8e0c-352e7c5fce27', 'Linear function $f$ models temperature. $f(35)=29$ and $f(41)=59$. What is $f(-37)$?', NULL, NULL, '[{"id":"A","text":"$-326$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-335$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-331$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-37)=-331$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(35)=29$ and $f(41)=59$. What is $f(-37)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{59-29}{41-35}=5$.
**Step 2:** Point-slope: $f(-37)=5(-37-35)+(29)$.
**Step 3:** $f(-37)=-331$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-331$

**Distractor analysis:**
- **A** ($-326$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-335$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7034dfce-e600-4409-baa1-a900abe0cfd6', 'Linear function $f$ models temperature. $f(36)=30$ and $f(42)=48$. What is $f(-38)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-192","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(36)=30$ and $f(42)=48$. What is $f(-38)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{48-30}{42-36}=3$.
**Step 2:** Point-slope: $f(-38)=3(-38-36)+(30)$.
**Step 3:** $f(-38)=-192$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -192', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
