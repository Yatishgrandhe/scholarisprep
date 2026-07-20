BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('27fea98f-3228-4927-bea1-95e79711f616', 'If the vehicle continues at the same rate, what is $d$ when $t=69$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+59$. At $t=61$, $d=303$.', 'passage', '[{"id":"SPR","text":"335","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=69$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $59$.
**Step 2:** $d=4(69)+59=335$.
**Step 3:** Cross-check via $(69-61)×4+303=335$.

**Step 3 — Answer SPR.** 335', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d8588bc0-8c05-4dc4-b5d7-3108039dc9a1', 'If the vehicle continues at the same rate, what is $d$ when $t=70$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+60$. At $t=62$, $d=370$.', 'passage', '[{"id":"A","text":"$405$","is_correct":false,"explanation":"Choice A ($405$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$375$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=70$."},{"id":"C","text":"$410$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(70)+60$. **Step 2:** $d=410$."},{"id":"D","text":"$350$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=70$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $60$.
**Step 2:** $d=5(70)+60=410$.
**Step 3:** Cross-check via $(70-62)×5+370=410$.

**Step 3 — Answer C.** $410$

**Distractor analysis:**
- **A** ($405$): Choice A ($405$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($375$): Adds slope once instead of evaluating at $t=70$.
- **D** ($350$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('864c85cb-42e7-4621-9441-93c864afd42e', 'If the vehicle continues at the same rate, what is $d$ when $t=71$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+61$. At $t=63$, $d=439$.', 'passage', '[{"id":"A","text":"$481$","is_correct":false,"explanation":"Choice A ($481$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$445$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=71$."},{"id":"C","text":"$487$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(71)+61$. **Step 2:** $d=487$."},{"id":"D","text":"$426$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=71$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $61$.
**Step 2:** $d=6(71)+61=487$.
**Step 3:** Cross-check via $(71-63)×6+439=487$.

**Step 3 — Answer C.** $487$

**Distractor analysis:**
- **A** ($481$): Choice A ($481$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($445$): Adds slope once instead of evaluating at $t=71$.
- **D** ($426$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4be85759-d4a1-4e09-8a97-f6f9eed911ad', 'If the vehicle continues at the same rate, what is $d$ when $t=12$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+2$. At $t=4$, $d=14$.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=12$."},{"id":"C","text":"$38$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(12)+2$. **Step 2:** $d=38$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=12$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $2$.
**Step 2:** $d=3(12)+2=38$.
**Step 3:** Cross-check via $(12-4)×3+14=38$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $38$

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($17$): Adds slope once instead of evaluating at $t=12$.
- **D** ($36$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a49f64ce-8b23-4252-8027-3b67849cf9ca', 'If the vehicle continues at the same rate, what is $d$ when $t=13$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+3$. At $t=5$, $d=23$.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=13$."},{"id":"C","text":"$55$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(13)+3$. **Step 2:** $d=55$."},{"id":"D","text":"$52$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=13$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $3$.
**Step 2:** $d=4(13)+3=55$.
**Step 3:** Cross-check via $(13-5)×4+23=55$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $55$

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($27$): Adds slope once instead of evaluating at $t=13$.
- **D** ($52$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('47d9cb23-a197-4930-93d9-1498e961cf53', 'If the vehicle continues at the same rate, what is $d$ when $t=14$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+4$. At $t=6$, $d=34$.', 'passage', '[{"id":"A","text":"$69$","is_correct":false,"explanation":"Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$39$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=14$."},{"id":"C","text":"$74$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(14)+4$. **Step 2:** $d=74$."},{"id":"D","text":"$70$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=14$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $4$.
**Step 2:** $d=5(14)+4=74$.
**Step 3:** Cross-check via $(14-6)×5+34=74$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $74$

**Distractor analysis:**
- **A** ($69$): Choice A ($69$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($39$): Adds slope once instead of evaluating at $t=14$.
- **D** ($70$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5a4e0b2e-5ba0-495f-89d2-24e37e467ab2', 'If the vehicle continues at the same rate, what is $d$ when $t=15$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+5$. At $t=7$, $d=47$.', 'passage', '[{"id":"A","text":"$89$","is_correct":false,"explanation":"Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=15$."},{"id":"C","text":"$95$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(15)+5$. **Step 2:** $d=95$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=15$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $5$.
**Step 2:** $d=6(15)+5=95$.
**Step 3:** Cross-check via $(15-7)×6+47=95$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $95$

**Distractor analysis:**
- **A** ($89$): Choice A ($89$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($53$): Adds slope once instead of evaluating at $t=15$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a7892a44-6359-450e-a42a-934f7a5d2e31', 'If the vehicle continues at the same rate, what is $d$ when $t=16$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+6$. At $t=8$, $d=30$.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=16$."},{"id":"C","text":"$54$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(16)+6$. **Step 2:** $d=54$."},{"id":"D","text":"$48$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=16$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $6$.
**Step 2:** $d=3(16)+6=54$.
**Step 3:** Cross-check via $(16-8)×3+30=54$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $54$

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($33$): Adds slope once instead of evaluating at $t=16$.
- **D** ($48$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('de6a4d43-8fa4-4638-9453-a1cd0735ba80', 'If the vehicle continues at the same rate, what is $d$ when $t=17$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+7$. At $t=9$, $d=43$.', 'passage', '[{"id":"A","text":"$71$","is_correct":false,"explanation":"Choice A ($71$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$47$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=17$."},{"id":"C","text":"$75$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(17)+7$. **Step 2:** $d=75$."},{"id":"D","text":"$68$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=17$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $7$.
**Step 2:** $d=4(17)+7=75$.
**Step 3:** Cross-check via $(17-9)×4+43=75$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $75$

**Distractor analysis:**
- **A** ($71$): Choice A ($71$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($47$): Adds slope once instead of evaluating at $t=17$.
- **D** ($68$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('28b5e7ec-026c-461a-9ac0-8bc1b0d918e5', 'If the vehicle continues at the same rate, what is $d$ when $t=18$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+8$. At $t=10$, $d=58$.', 'passage', '[{"id":"A","text":"$93$","is_correct":false,"explanation":"Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=18$."},{"id":"C","text":"$98$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(18)+8$. **Step 2:** $d=98$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=18$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $8$.
**Step 2:** $d=5(18)+8=98$.
**Step 3:** Cross-check via $(18-10)×5+58=98$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $98$

**Distractor analysis:**
- **A** ($93$): Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($63$): Adds slope once instead of evaluating at $t=18$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0e88a0e-4408-4aaa-ac62-7435fdee6ffc', 'If the vehicle continues at the same rate, what is $d$ when $t=19$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+9$. At $t=11$, $d=75$.', 'passage', '[{"id":"A","text":"$117$","is_correct":false,"explanation":"Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=19$."},{"id":"C","text":"$123$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(19)+9$. **Step 2:** $d=123$."},{"id":"D","text":"$114$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=19$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $9$.
**Step 2:** $d=6(19)+9=123$.
**Step 3:** Cross-check via $(19-11)×6+75=123$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $123$

**Distractor analysis:**
- **A** ($117$): Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($81$): Adds slope once instead of evaluating at $t=19$.
- **D** ($114$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ac48f554-abf7-4fbb-b72c-2dd96e458562', 'If the vehicle continues at the same rate, what is $d$ when $t=20$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+10$. At $t=12$, $d=46$.', 'passage', '[{"id":"A","text":"$67$","is_correct":false,"explanation":"Choice A ($67$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=20$."},{"id":"C","text":"$70$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(20)+10$. **Step 2:** $d=70$."},{"id":"D","text":"$60$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=20$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $10$.
**Step 2:** $d=3(20)+10=70$.
**Step 3:** Cross-check via $(20-12)×3+46=70$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $70$

**Distractor analysis:**
- **A** ($67$): Choice A ($67$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($49$): Adds slope once instead of evaluating at $t=20$.
- **D** ($60$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
