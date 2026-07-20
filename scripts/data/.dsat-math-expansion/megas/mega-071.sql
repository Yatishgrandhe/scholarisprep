BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b8e0af9-8735-4f6c-b484-c24e53b20d22', 'If the vehicle continues at the same rate, what is $d$ when $t=33$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+23$. At $t=25$, $d=123$.', 'passage', '[{"id":"SPR","text":"155","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=33$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $23$.
**Step 2:** $d=4(33)+23=155$.
**Step 3:** Cross-check via $(33-25)×4+123=155$.

**Step 3 — Answer SPR.** 155', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2057c4cb-a59a-4831-9630-dcd4d1829ad7', 'If the vehicle continues at the same rate, what is $d$ when $t=34$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+24$. At $t=26$, $d=154$.', 'passage', '[{"id":"A","text":"$189$","is_correct":false,"explanation":"Choice A ($189$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$159$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=34$."},{"id":"C","text":"$194$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(34)+24$. **Step 2:** $d=194$."},{"id":"D","text":"$170$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=34$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $24$.
**Step 2:** $d=5(34)+24=194$.
**Step 3:** Cross-check via $(34-26)×5+154=194$.

**Step 3 — Answer C.** $194$

**Distractor analysis:**
- **A** ($189$): Choice A ($189$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($159$): Adds slope once instead of evaluating at $t=34$.
- **D** ($170$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8dd03199-1c5c-46c7-93ab-ce088e62105d', 'If the vehicle continues at the same rate, what is $d$ when $t=35$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+25$. At $t=27$, $d=187$.', 'passage', '[{"id":"A","text":"$229$","is_correct":false,"explanation":"Choice A ($229$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$193$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=35$."},{"id":"C","text":"$235$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(35)+25$. **Step 2:** $d=235$."},{"id":"D","text":"$210$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=35$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $25$.
**Step 2:** $d=6(35)+25=235$.
**Step 3:** Cross-check via $(35-27)×6+187=235$.

**Step 3 — Answer C.** $235$

**Distractor analysis:**
- **A** ($229$): Choice A ($229$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($193$): Adds slope once instead of evaluating at $t=35$.
- **D** ($210$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('35ca60ef-1e95-484c-8b25-2a471ad69bd9', 'If the vehicle continues at the same rate, what is $d$ when $t=36$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+26$. At $t=28$, $d=110$.', 'passage', '[{"id":"A","text":"$131$","is_correct":false,"explanation":"Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$113$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=36$."},{"id":"C","text":"$134$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(36)+26$. **Step 2:** $d=134$."},{"id":"D","text":"$108$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=36$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $26$.
**Step 2:** $d=3(36)+26=134$.
**Step 3:** Cross-check via $(36-28)×3+110=134$.

**Step 3 — Answer C.** $134$

**Distractor analysis:**
- **A** ($131$): Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($113$): Adds slope once instead of evaluating at $t=36$.
- **D** ($108$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8cae17b2-0192-4eae-ad17-731291d59cda', 'If the vehicle continues at the same rate, what is $d$ when $t=37$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+27$. At $t=29$, $d=143$.', 'passage', '[{"id":"SPR","text":"175","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=37$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $27$.
**Step 2:** $d=4(37)+27=175$.
**Step 3:** Cross-check via $(37-29)×4+143=175$.

**Step 3 — Answer SPR.** 175', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4f2265a2-e0cf-470d-80d8-0713581db303', 'If the vehicle continues at the same rate, what is $d$ when $t=38$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+28$. At $t=30$, $d=178$.', 'passage', '[{"id":"A","text":"$213$","is_correct":false,"explanation":"Choice A ($213$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$183$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=38$."},{"id":"C","text":"$218$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(38)+28$. **Step 2:** $d=218$."},{"id":"D","text":"$190$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=38$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $28$.
**Step 2:** $d=5(38)+28=218$.
**Step 3:** Cross-check via $(38-30)×5+178=218$.

**Step 3 — Answer C.** $218$

**Distractor analysis:**
- **A** ($213$): Choice A ($213$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($183$): Adds slope once instead of evaluating at $t=38$.
- **D** ($190$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1030434-3d8e-4bc4-abb6-68856c061204', 'If the vehicle continues at the same rate, what is $d$ when $t=39$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+29$. At $t=31$, $d=215$.', 'passage', '[{"id":"A","text":"$257$","is_correct":false,"explanation":"Choice A ($257$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$221$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=39$."},{"id":"C","text":"$263$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(39)+29$. **Step 2:** $d=263$."},{"id":"D","text":"$234$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=39$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $29$.
**Step 2:** $d=6(39)+29=263$.
**Step 3:** Cross-check via $(39-31)×6+215=263$.

**Step 3 — Answer C.** $263$

**Distractor analysis:**
- **A** ($257$): Choice A ($257$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($221$): Adds slope once instead of evaluating at $t=39$.
- **D** ($234$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('da02db8d-3f99-4926-aa20-007e0c86bebb', 'If the vehicle continues at the same rate, what is $d$ when $t=40$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+30$. At $t=32$, $d=126$.', 'passage', '[{"id":"A","text":"$147$","is_correct":false,"explanation":"Choice A ($147$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$129$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=40$."},{"id":"C","text":"$150$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(40)+30$. **Step 2:** $d=150$."},{"id":"D","text":"$120$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=40$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $30$.
**Step 2:** $d=3(40)+30=150$.
**Step 3:** Cross-check via $(40-32)×3+126=150$.

**Step 3 — Answer C.** $150$

**Distractor analysis:**
- **A** ($147$): Choice A ($147$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($129$): Adds slope once instead of evaluating at $t=40$.
- **D** ($120$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb9f3257-3951-4404-95c3-f4c3c1bdd11a', 'If the vehicle continues at the same rate, what is $d$ when $t=41$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+31$. At $t=33$, $d=163$.', 'passage', '[{"id":"SPR","text":"195","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=41$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $31$.
**Step 2:** $d=4(41)+31=195$.
**Step 3:** Cross-check via $(41-33)×4+163=195$.

**Step 3 — Answer SPR.** 195', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('34d5557e-238d-4219-b27d-fb1575af5769', 'If the vehicle continues at the same rate, what is $d$ when $t=42$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+32$. At $t=34$, $d=202$.', 'passage', '[{"id":"A","text":"$237$","is_correct":false,"explanation":"Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$207$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=42$."},{"id":"C","text":"$242$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(42)+32$. **Step 2:** $d=242$."},{"id":"D","text":"$210$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=42$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $32$.
**Step 2:** $d=5(42)+32=242$.
**Step 3:** Cross-check via $(42-34)×5+202=242$.

**Step 3 — Answer C.** $242$

**Distractor analysis:**
- **A** ($237$): Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($207$): Adds slope once instead of evaluating at $t=42$.
- **D** ($210$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('61449bb2-abac-49dd-a43b-e15f8dbeb543', 'If the vehicle continues at the same rate, what is $d$ when $t=43$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+33$. At $t=35$, $d=243$.', 'passage', '[{"id":"A","text":"$285$","is_correct":false,"explanation":"Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$249$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=43$."},{"id":"C","text":"$291$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(43)+33$. **Step 2:** $d=291$."},{"id":"D","text":"$258$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=43$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $33$.
**Step 2:** $d=6(43)+33=291$.
**Step 3:** Cross-check via $(43-35)×6+243=291$.

**Step 3 — Answer C.** $291$

**Distractor analysis:**
- **A** ($285$): Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($249$): Adds slope once instead of evaluating at $t=43$.
- **D** ($258$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('486baaaa-c913-4fb4-8a69-ba04d07dbc8a', 'If the vehicle continues at the same rate, what is $d$ when $t=44$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+34$. At $t=36$, $d=142$.', 'passage', '[{"id":"A","text":"$163$","is_correct":false,"explanation":"Choice A ($163$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$145$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=44$."},{"id":"C","text":"$166$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(44)+34$. **Step 2:** $d=166$."},{"id":"D","text":"$132$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=44$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $34$.
**Step 2:** $d=3(44)+34=166$.
**Step 3:** Cross-check via $(44-36)×3+142=166$.

**Step 3 — Answer C.** $166$

**Distractor analysis:**
- **A** ($163$): Choice A ($163$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($145$): Adds slope once instead of evaluating at $t=44$.
- **D** ($132$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
