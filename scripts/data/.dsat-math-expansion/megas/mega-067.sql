BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('174eb733-af31-45c0-9359-96692f0fe2a0', 'If the vehicle continues at the same rate, what is $d$ when $t=45$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+35$. At $t=37$, $d=183$.', 'passage', '[{"id":"SPR","text":"215","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=45$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $35$.
**Step 2:** $d=4(45)+35=215$.
**Step 3:** Cross-check via $(45-37)×4+183=215$.

**Step 3 — Answer SPR.** 215', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('258581c1-4e8e-4ec5-8cbe-972ce3357554', 'If the vehicle continues at the same rate, what is $d$ when $t=46$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+36$. At $t=38$, $d=226$.', 'passage', '[{"id":"A","text":"$261$","is_correct":false,"explanation":"Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$231$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=46$."},{"id":"C","text":"$266$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(46)+36$. **Step 2:** $d=266$."},{"id":"D","text":"$230$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=46$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $36$.
**Step 2:** $d=5(46)+36=266$.
**Step 3:** Cross-check via $(46-38)×5+226=266$.

**Step 3 — Answer C.** $266$

**Distractor analysis:**
- **A** ($261$): Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($231$): Adds slope once instead of evaluating at $t=46$.
- **D** ($230$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ae30c89f-4e37-42e9-9985-b8b2010eb8e2', 'If the vehicle continues at the same rate, what is $d$ when $t=47$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+37$. At $t=39$, $d=271$.', 'passage', '[{"id":"A","text":"$313$","is_correct":false,"explanation":"Choice A ($313$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$277$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=47$."},{"id":"C","text":"$319$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(47)+37$. **Step 2:** $d=319$."},{"id":"D","text":"$282$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=47$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $37$.
**Step 2:** $d=6(47)+37=319$.
**Step 3:** Cross-check via $(47-39)×6+271=319$.

**Step 3 — Answer C.** $319$

**Distractor analysis:**
- **A** ($313$): Choice A ($313$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($277$): Adds slope once instead of evaluating at $t=47$.
- **D** ($282$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2968e89e-03c4-41b0-b8e8-5206aa8c0b72', 'If the vehicle continues at the same rate, what is $d$ when $t=48$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+38$. At $t=40$, $d=158$.', 'passage', '[{"id":"A","text":"$179$","is_correct":false,"explanation":"Choice A ($179$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$161$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=48$."},{"id":"C","text":"$182$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(48)+38$. **Step 2:** $d=182$."},{"id":"D","text":"$144$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=48$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $38$.
**Step 2:** $d=3(48)+38=182$.
**Step 3:** Cross-check via $(48-40)×3+158=182$.

**Step 3 — Answer C.** $182$

**Distractor analysis:**
- **A** ($179$): Choice A ($179$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($161$): Adds slope once instead of evaluating at $t=48$.
- **D** ($144$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('09ce4e8d-472b-4e25-8e8c-6ad1aa66cddc', 'If the vehicle continues at the same rate, what is $d$ when $t=49$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+39$. At $t=41$, $d=203$.', 'passage', '[{"id":"SPR","text":"235","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=49$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $39$.
**Step 2:** $d=4(49)+39=235$.
**Step 3:** Cross-check via $(49-41)×4+203=235$.

**Step 3 — Answer SPR.** 235', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e96cfc06-9aef-4765-9bfe-cb7f6d27643a', 'If the vehicle continues at the same rate, what is $d$ when $t=50$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+40$. At $t=42$, $d=250$.', 'passage', '[{"id":"A","text":"$285$","is_correct":false,"explanation":"Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$255$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=50$."},{"id":"C","text":"$290$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(50)+40$. **Step 2:** $d=290$."},{"id":"D","text":"$250$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=50$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $40$.
**Step 2:** $d=5(50)+40=290$.
**Step 3:** Cross-check via $(50-42)×5+250=290$.

**Step 3 — Answer C.** $290$

**Distractor analysis:**
- **A** ($285$): Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($255$): Adds slope once instead of evaluating at $t=50$.
- **D** ($250$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b43aa61c-80b4-47bd-b4b0-1ee2c19641f8', 'If the vehicle continues at the same rate, what is $d$ when $t=51$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+41$. At $t=43$, $d=299$.', 'passage', '[{"id":"A","text":"$341$","is_correct":false,"explanation":"Choice A ($341$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$305$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=51$."},{"id":"C","text":"$347$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(51)+41$. **Step 2:** $d=347$."},{"id":"D","text":"$306$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=51$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $41$.
**Step 2:** $d=6(51)+41=347$.
**Step 3:** Cross-check via $(51-43)×6+299=347$.

**Step 3 — Answer C.** $347$

**Distractor analysis:**
- **A** ($341$): Choice A ($341$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($305$): Adds slope once instead of evaluating at $t=51$.
- **D** ($306$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3882d006-5219-43b3-beb0-7eef074a3f7d', 'If the vehicle continues at the same rate, what is $d$ when $t=52$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+42$. At $t=44$, $d=174$.', 'passage', '[{"id":"A","text":"$195$","is_correct":false,"explanation":"Choice A ($195$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$177$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=52$."},{"id":"C","text":"$198$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(52)+42$. **Step 2:** $d=198$."},{"id":"D","text":"$156$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=52$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $42$.
**Step 2:** $d=3(52)+42=198$.
**Step 3:** Cross-check via $(52-44)×3+174=198$.

**Step 3 — Answer C.** $198$

**Distractor analysis:**
- **A** ($195$): Choice A ($195$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($177$): Adds slope once instead of evaluating at $t=52$.
- **D** ($156$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7873a77c-8f74-4f65-9ff2-7691031b5a86', 'If the vehicle continues at the same rate, what is $d$ when $t=53$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+43$. At $t=45$, $d=223$.', 'passage', '[{"id":"SPR","text":"255","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=53$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $43$.
**Step 2:** $d=4(53)+43=255$.
**Step 3:** Cross-check via $(53-45)×4+223=255$.

**Step 3 — Answer SPR.** 255', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6511b891-f941-4b26-b475-0a2046c5033c', 'If the vehicle continues at the same rate, what is $d$ when $t=54$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+44$. At $t=46$, $d=274$.', 'passage', '[{"id":"A","text":"$309$","is_correct":false,"explanation":"Choice A ($309$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$279$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=54$."},{"id":"C","text":"$314$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(54)+44$. **Step 2:** $d=314$."},{"id":"D","text":"$270$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=54$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $44$.
**Step 2:** $d=5(54)+44=314$.
**Step 3:** Cross-check via $(54-46)×5+274=314$.

**Step 3 — Answer C.** $314$

**Distractor analysis:**
- **A** ($309$): Choice A ($309$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($279$): Adds slope once instead of evaluating at $t=54$.
- **D** ($270$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('52a56e42-b947-410a-b29c-a697649bc1d6', 'If the vehicle continues at the same rate, what is $d$ when $t=55$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+45$. At $t=47$, $d=327$.', 'passage', '[{"id":"A","text":"$369$","is_correct":false,"explanation":"Choice A ($369$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$333$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=55$."},{"id":"C","text":"$375$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(55)+45$. **Step 2:** $d=375$."},{"id":"D","text":"$330$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=55$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $45$.
**Step 2:** $d=6(55)+45=375$.
**Step 3:** Cross-check via $(55-47)×6+327=375$.

**Step 3 — Answer C.** $375$

**Distractor analysis:**
- **A** ($369$): Choice A ($369$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($333$): Adds slope once instead of evaluating at $t=55$.
- **D** ($330$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('061add3b-fa53-4790-b967-5f84baa2e690', 'If the vehicle continues at the same rate, what is $d$ when $t=56$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+46$. At $t=48$, $d=190$.', 'passage', '[{"id":"A","text":"$211$","is_correct":false,"explanation":"Choice A ($211$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$193$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=56$."},{"id":"C","text":"$214$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(56)+46$. **Step 2:** $d=214$."},{"id":"D","text":"$168$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=56$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $46$.
**Step 2:** $d=3(56)+46=214$.
**Step 3:** Cross-check via $(56-48)×3+190=214$.

**Step 3 — Answer C.** $214$

**Distractor analysis:**
- **A** ($211$): Choice A ($211$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($193$): Adds slope once instead of evaluating at $t=56$.
- **D** ($168$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
