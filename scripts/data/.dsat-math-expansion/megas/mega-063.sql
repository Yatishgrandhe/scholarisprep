BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('34d43c46-b285-478e-87c6-ee1a2afdabde', 'If the vehicle continues at the same rate, what is $d$ when $t=57$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+47$. At $t=49$, $d=243$.', 'passage', '[{"id":"SPR","text":"275","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=57$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $47$.
**Step 2:** $d=4(57)+47=275$.
**Step 3:** Cross-check via $(57-49)×4+243=275$.

**Step 3 — Answer SPR.** 275', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d0d0c331-c4f4-4995-bab2-8e60bd1fc82d', 'If the vehicle continues at the same rate, what is $d$ when $t=58$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+48$. At $t=50$, $d=298$.', 'passage', '[{"id":"A","text":"$333$","is_correct":false,"explanation":"Choice A ($333$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$303$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=58$."},{"id":"C","text":"$338$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(58)+48$. **Step 2:** $d=338$."},{"id":"D","text":"$290$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=58$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $48$.
**Step 2:** $d=5(58)+48=338$.
**Step 3:** Cross-check via $(58-50)×5+298=338$.

**Step 3 — Answer C.** $338$

**Distractor analysis:**
- **A** ($333$): Choice A ($333$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($303$): Adds slope once instead of evaluating at $t=58$.
- **D** ($290$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('466ba1ba-0b9c-4267-a27e-7ba01356b617', 'If the vehicle continues at the same rate, what is $d$ when $t=59$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+49$. At $t=51$, $d=355$.', 'passage', '[{"id":"A","text":"$397$","is_correct":false,"explanation":"Choice A ($397$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$361$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=59$."},{"id":"C","text":"$403$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(59)+49$. **Step 2:** $d=403$."},{"id":"D","text":"$354$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=59$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $49$.
**Step 2:** $d=6(59)+49=403$.
**Step 3:** Cross-check via $(59-51)×6+355=403$.

**Step 3 — Answer C.** $403$

**Distractor analysis:**
- **A** ($397$): Choice A ($397$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($361$): Adds slope once instead of evaluating at $t=59$.
- **D** ($354$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('35e786a9-ad61-4981-b310-bd9dde5a0252', 'If the vehicle continues at the same rate, what is $d$ when $t=60$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+50$. At $t=52$, $d=206$.', 'passage', '[{"id":"A","text":"$227$","is_correct":false,"explanation":"Choice A ($227$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$209$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=60$."},{"id":"C","text":"$230$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(60)+50$. **Step 2:** $d=230$."},{"id":"D","text":"$180$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=60$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $50$.
**Step 2:** $d=3(60)+50=230$.
**Step 3:** Cross-check via $(60-52)×3+206=230$.

**Step 3 — Answer C.** $230$

**Distractor analysis:**
- **A** ($227$): Choice A ($227$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($209$): Adds slope once instead of evaluating at $t=60$.
- **D** ($180$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6afcd522-e8dc-4f78-bc55-70b3c97bcd0d', 'If the vehicle continues at the same rate, what is $d$ when $t=61$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+51$. At $t=53$, $d=263$.', 'passage', '[{"id":"SPR","text":"295","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=61$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $51$.
**Step 2:** $d=4(61)+51=295$.
**Step 3:** Cross-check via $(61-53)×4+263=295$.

**Step 3 — Answer SPR.** 295', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5acb3cc3-0b91-4bd6-a9a7-7d9942158ee6', 'If the vehicle continues at the same rate, what is $d$ when $t=62$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+52$. At $t=54$, $d=322$.', 'passage', '[{"id":"A","text":"$357$","is_correct":false,"explanation":"Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$327$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=62$."},{"id":"C","text":"$362$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(62)+52$. **Step 2:** $d=362$."},{"id":"D","text":"$310$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=62$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $52$.
**Step 2:** $d=5(62)+52=362$.
**Step 3:** Cross-check via $(62-54)×5+322=362$.

**Step 3 — Answer C.** $362$

**Distractor analysis:**
- **A** ($357$): Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($327$): Adds slope once instead of evaluating at $t=62$.
- **D** ($310$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce265db4-4578-4c32-b49a-3bfa6db50a01', 'If the vehicle continues at the same rate, what is $d$ when $t=63$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+53$. At $t=55$, $d=383$.', 'passage', '[{"id":"A","text":"$425$","is_correct":false,"explanation":"Choice A ($425$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$389$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=63$."},{"id":"C","text":"$431$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(63)+53$. **Step 2:** $d=431$."},{"id":"D","text":"$378$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=63$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $53$.
**Step 2:** $d=6(63)+53=431$.
**Step 3:** Cross-check via $(63-55)×6+383=431$.

**Step 3 — Answer C.** $431$

**Distractor analysis:**
- **A** ($425$): Choice A ($425$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($389$): Adds slope once instead of evaluating at $t=63$.
- **D** ($378$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f81a8e80-fe70-446a-882a-ac16ab71f228', 'If the vehicle continues at the same rate, what is $d$ when $t=64$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+54$. At $t=56$, $d=222$.', 'passage', '[{"id":"A","text":"$243$","is_correct":false,"explanation":"Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$225$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=64$."},{"id":"C","text":"$246$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(64)+54$. **Step 2:** $d=246$."},{"id":"D","text":"$192$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=64$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $54$.
**Step 2:** $d=3(64)+54=246$.
**Step 3:** Cross-check via $(64-56)×3+222=246$.

**Step 3 — Answer C.** $246$

**Distractor analysis:**
- **A** ($243$): Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($225$): Adds slope once instead of evaluating at $t=64$.
- **D** ($192$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('596bcc5d-9a12-4587-8747-6cb5e15f402a', 'If the vehicle continues at the same rate, what is $d$ when $t=65$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+55$. At $t=57$, $d=283$.', 'passage', '[{"id":"SPR","text":"315","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=65$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $55$.
**Step 2:** $d=4(65)+55=315$.
**Step 3:** Cross-check via $(65-57)×4+283=315$.

**Step 3 — Answer SPR.** 315', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('45afc187-26bf-4db6-b87f-abec8cf2b161', 'If the vehicle continues at the same rate, what is $d$ when $t=66$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+56$. At $t=58$, $d=346$.', 'passage', '[{"id":"A","text":"$381$","is_correct":false,"explanation":"Choice A ($381$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$351$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=66$."},{"id":"C","text":"$386$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(66)+56$. **Step 2:** $d=386$."},{"id":"D","text":"$330$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=66$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $56$.
**Step 2:** $d=5(66)+56=386$.
**Step 3:** Cross-check via $(66-58)×5+346=386$.

**Step 3 — Answer C.** $386$

**Distractor analysis:**
- **A** ($381$): Choice A ($381$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($351$): Adds slope once instead of evaluating at $t=66$.
- **D** ($330$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6378acb7-d86b-4870-a3aa-a80cbe5efddf', 'If the vehicle continues at the same rate, what is $d$ when $t=67$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+57$. At $t=59$, $d=411$.', 'passage', '[{"id":"A","text":"$453$","is_correct":false,"explanation":"Choice A ($453$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$417$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=67$."},{"id":"C","text":"$459$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(67)+57$. **Step 2:** $d=459$."},{"id":"D","text":"$402$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=67$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $57$.
**Step 2:** $d=6(67)+57=459$.
**Step 3:** Cross-check via $(67-59)×6+411=459$.

**Step 3 — Answer C.** $459$

**Distractor analysis:**
- **A** ($453$): Choice A ($453$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($417$): Adds slope once instead of evaluating at $t=67$.
- **D** ($402$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('885f69ed-299b-4bdb-9b80-8a3647eccfc1', 'If the vehicle continues at the same rate, what is $d$ when $t=68$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+58$. At $t=60$, $d=238$.', 'passage', '[{"id":"A","text":"$259$","is_correct":false,"explanation":"Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$241$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=68$."},{"id":"C","text":"$262$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(68)+58$. **Step 2:** $d=262$."},{"id":"D","text":"$204$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=68$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $58$.
**Step 2:** $d=3(68)+58=262$.
**Step 3:** Cross-check via $(68-60)×3+238=262$.

**Step 3 — Answer C.** $262$

**Distractor analysis:**
- **A** ($259$): Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($241$): Adds slope once instead of evaluating at $t=68$.
- **D** ($204$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
