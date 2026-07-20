BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b835720-3c33-43ea-a120-092f19fa7620', 'Linear function $f$ models temperature. $f(49)=43$ and $f(55)=67$. What is $f(-51)$?', NULL, NULL, '[{"id":"A","text":"$-353$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-361$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-357$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-51)=-357$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(49)=43$ and $f(55)=67$. What is $f(-51)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{67-43}{55-49}=4$.
**Step 2:** Point-slope: $f(-51)=4(-51-49)+(43)$.
**Step 3:** $f(-51)=-357$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-357$

**Distractor analysis:**
- **A** ($-353$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-361$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('70593696-4cdd-42c6-84d9-c22fd1caa26b', 'Linear function $f$ models temperature. $f(50)=44$ and $f(56)=74$. What is $f(-52)$?', NULL, NULL, '[{"id":"A","text":"$-461$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-470$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-466$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-52)=-466$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(50)=44$ and $f(56)=74$. What is $f(-52)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{74-44}{56-50}=5$.
**Step 2:** Point-slope: $f(-52)=5(-52-50)+(44)$.
**Step 3:** $f(-52)=-466$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-466$

**Distractor analysis:**
- **A** ($-461$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-470$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6d7e64c7-90ab-48a9-b6e1-b96341e8b329', 'Linear function $f$ models temperature. $f(51)=45$ and $f(57)=63$. What is $f(-53)$?', NULL, NULL, '[{"id":"A","text":"$-264$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-271$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-267$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-53)=-267$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(51)=45$ and $f(57)=63$. What is $f(-53)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{63-45}{57-51}=3$.
**Step 2:** Point-slope: $f(-53)=3(-53-51)+(45)$.
**Step 3:** $f(-53)=-267$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-267$

**Distractor analysis:**
- **A** ($-264$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-271$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('436ca7aa-4c67-46b3-9a93-8e7ef7fb7ab0', 'Linear function $f$ models temperature. $f(52)=46$ and $f(58)=70$. What is $f(-54)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-378","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(52)=46$ and $f(58)=70$. What is $f(-54)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{70-46}{58-52}=4$.
**Step 2:** Point-slope: $f(-54)=4(-54-52)+(46)$.
**Step 3:** $f(-54)=-378$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -378', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7edc604a-8156-4012-a382-757a385a54ae', 'Linear function $f$ models temperature. $f(53)=47$ and $f(59)=77$. What is $f(-55)$?', NULL, NULL, '[{"id":"A","text":"$-488$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-497$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-493$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-55)=-493$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(53)=47$ and $f(59)=77$. What is $f(-55)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{77-47}{59-53}=5$.
**Step 2:** Point-slope: $f(-55)=5(-55-53)+(47)$.
**Step 3:** $f(-55)=-493$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-493$

**Distractor analysis:**
- **A** ($-488$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-497$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f70a3f11-f7bd-4504-86af-6af864c7c059', 'Linear function $f$ models temperature. $f(54)=48$ and $f(60)=66$. What is $f(-56)$?', NULL, NULL, '[{"id":"A","text":"$-279$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-286$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-282$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-56)=-282$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(54)=48$ and $f(60)=66$. What is $f(-56)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{66-48}{60-54}=3$.
**Step 2:** Point-slope: $f(-56)=3(-56-54)+(48)$.
**Step 3:** $f(-56)=-282$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-282$

**Distractor analysis:**
- **A** ($-279$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-286$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a3f5a024-208b-4206-a4f0-b729b22662eb', 'Linear function $f$ models temperature. $f(55)=49$ and $f(61)=73$. What is $f(-57)$?', NULL, NULL, '[{"id":"A","text":"$-395$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-403$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-399$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-57)=-399$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(55)=49$ and $f(61)=73$. What is $f(-57)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{73-49}{61-55}=4$.
**Step 2:** Point-slope: $f(-57)=4(-57-55)+(49)$.
**Step 3:** $f(-57)=-399$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-399$

**Distractor analysis:**
- **A** ($-395$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-403$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ea04a43b-be4a-4d05-af6f-2a04a6430eab', 'Linear function $f$ models temperature. $f(56)=50$ and $f(62)=80$. What is $f(-58)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-520","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(56)=50$ and $f(62)=80$. What is $f(-58)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{80-50}{62-56}=5$.
**Step 2:** Point-slope: $f(-58)=5(-58-56)+(50)$.
**Step 3:** $f(-58)=-520$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -520', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b627cc2c-11dc-46ef-ab62-a0382f504e3f', 'Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?', NULL, NULL, '[{"id":"A","text":"$-294$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-301$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-297$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-59)=-297$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(57)=51$ and $f(63)=69$. What is $f(-59)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{69-51}{63-57}=3$.
**Step 2:** Point-slope: $f(-59)=3(-59-57)+(51)$.
**Step 3:** $f(-59)=-297$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-297$

**Distractor analysis:**
- **A** ($-294$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-301$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('50f8b720-1855-44a6-ae16-c5488baa0398', 'Linear function $f$ models temperature. $f(58)=52$ and $f(64)=76$. What is $f(-60)$?', NULL, NULL, '[{"id":"A","text":"$-416$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-424$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-420$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-60)=-420$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(58)=52$ and $f(64)=76$. What is $f(-60)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{76-52}{64-58}=4$.
**Step 2:** Point-slope: $f(-60)=4(-60-58)+(52)$.
**Step 3:** $f(-60)=-420$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-420$

**Distractor analysis:**
- **A** ($-416$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-424$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('10565b33-e9d1-473e-910a-d80b82c0fe61', 'Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?', NULL, NULL, '[{"id":"A","text":"$-542$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-551$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-547$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-61)=-547$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{83-53}{65-59}=5$.
**Step 2:** Point-slope: $f(-61)=5(-61-59)+(53)$.
**Step 3:** $f(-61)=-547$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-547$

**Distractor analysis:**
- **A** ($-542$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-551$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a8dc63b4-d72a-4fd0-9307-14687d7ab564', 'Linear function $f$ models temperature. $f(60)=54$ and $f(66)=72$. What is $f(-62)$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"-312","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(60)=54$ and $f(66)=72$. What is $f(-62)$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{72-54}{66-60}=3$.
**Step 2:** Point-slope: $f(-62)=3(-62-60)+(54)$.
**Step 3:** $f(-62)=-312$.
**Step 4:** Verify with second point.

**Step 3 — Answer SPR.** -312', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
