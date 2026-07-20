BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('543e1a81-53f8-48cc-81c2-b7bab730dca0', 'If the vehicle continues at the same rate, what is $d$ when $t=21$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+11$. At $t=13$, $d=63$.', 'passage', '[{"id":"SPR","text":"95","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=21$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $11$.
**Step 2:** $d=4(21)+11=95$.
**Step 3:** Cross-check via $(21-13)×4+63=95$.

**Step 3 — Answer SPR.** 95', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('487a194b-4802-45db-ba58-eaf238c50d3e', 'If the vehicle continues at the same rate, what is $d$ when $t=22$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+12$. At $t=14$, $d=82$.', 'passage', '[{"id":"A","text":"$117$","is_correct":false,"explanation":"Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$87$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=22$."},{"id":"C","text":"$122$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(22)+12$. **Step 2:** $d=122$."},{"id":"D","text":"$110$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=22$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $12$.
**Step 2:** $d=5(22)+12=122$.
**Step 3:** Cross-check via $(22-14)×5+82=122$.

**Step 3 — Answer C.** $122$

**Distractor analysis:**
- **A** ($117$): Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($87$): Adds slope once instead of evaluating at $t=22$.
- **D** ($110$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b5780b93-070c-49d1-be67-9ac5de537d71', 'If the vehicle continues at the same rate, what is $d$ when $t=23$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+13$. At $t=15$, $d=103$.', 'passage', '[{"id":"A","text":"$145$","is_correct":false,"explanation":"Choice A ($145$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$109$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=23$."},{"id":"C","text":"$151$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(23)+13$. **Step 2:** $d=151$."},{"id":"D","text":"$138$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=23$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $13$.
**Step 2:** $d=6(23)+13=151$.
**Step 3:** Cross-check via $(23-15)×6+103=151$.

**Step 3 — Answer C.** $151$

**Distractor analysis:**
- **A** ($145$): Choice A ($145$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($109$): Adds slope once instead of evaluating at $t=23$.
- **D** ($138$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c4b8256-5c90-435d-9f70-7ca5f2ee4af9', 'If the vehicle continues at the same rate, what is $d$ when $t=24$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+14$. At $t=16$, $d=62$.', 'passage', '[{"id":"A","text":"$83$","is_correct":false,"explanation":"Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=24$."},{"id":"C","text":"$86$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(24)+14$. **Step 2:** $d=86$."},{"id":"D","text":"$72$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=24$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $14$.
**Step 2:** $d=3(24)+14=86$.
**Step 3:** Cross-check via $(24-16)×3+62=86$.

**Step 3 — Answer C.** $86$

**Distractor analysis:**
- **A** ($83$): Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($65$): Adds slope once instead of evaluating at $t=24$.
- **D** ($72$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5878c6d3-aafc-410a-80f0-e4f3a422d5b8', 'If the vehicle continues at the same rate, what is $d$ when $t=25$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+15$. At $t=17$, $d=83$.', 'passage', '[{"id":"SPR","text":"115","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=25$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $15$.
**Step 2:** $d=4(25)+15=115$.
**Step 3:** Cross-check via $(25-17)×4+83=115$.

**Step 3 — Answer SPR.** 115', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14ee9091-6f9b-4ec7-ae12-04104b6699ac', 'If the vehicle continues at the same rate, what is $d$ when $t=26$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+16$. At $t=18$, $d=106$.', 'passage', '[{"id":"A","text":"$141$","is_correct":false,"explanation":"Choice A ($141$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$111$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=26$."},{"id":"C","text":"$146$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(26)+16$. **Step 2:** $d=146$."},{"id":"D","text":"$130$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=26$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $16$.
**Step 2:** $d=5(26)+16=146$.
**Step 3:** Cross-check via $(26-18)×5+106=146$.

**Step 3 — Answer C.** $146$

**Distractor analysis:**
- **A** ($141$): Choice A ($141$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($111$): Adds slope once instead of evaluating at $t=26$.
- **D** ($130$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00ed79f1-10c9-4d91-8068-8a1c3e958a22', 'If the vehicle continues at the same rate, what is $d$ when $t=27$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+17$. At $t=19$, $d=131$.', 'passage', '[{"id":"A","text":"$173$","is_correct":false,"explanation":"Choice A ($173$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$137$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=27$."},{"id":"C","text":"$179$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(27)+17$. **Step 2:** $d=179$."},{"id":"D","text":"$162$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=27$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $17$.
**Step 2:** $d=6(27)+17=179$.
**Step 3:** Cross-check via $(27-19)×6+131=179$.

**Step 3 — Answer C.** $179$

**Distractor analysis:**
- **A** ($173$): Choice A ($173$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($137$): Adds slope once instead of evaluating at $t=27$.
- **D** ($162$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('87632afc-31cf-430e-84d5-d99bc64f2725', 'If the vehicle continues at the same rate, what is $d$ when $t=28$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+18$. At $t=20$, $d=78$.', 'passage', '[{"id":"A","text":"$99$","is_correct":false,"explanation":"Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=28$."},{"id":"C","text":"$102$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(28)+18$. **Step 2:** $d=102$."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=28$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $18$.
**Step 2:** $d=3(28)+18=102$.
**Step 3:** Cross-check via $(28-20)×3+78=102$.

**Step 3 — Answer C.** $102$

**Distractor analysis:**
- **A** ($99$): Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($81$): Adds slope once instead of evaluating at $t=28$.
- **D** ($84$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cb100f13-1e5c-4cbf-87c2-d906027810f9', 'If the vehicle continues at the same rate, what is $d$ when $t=29$? Enter your answer as a number.', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+19$. At $t=21$, $d=103$.', 'passage', '[{"id":"SPR","text":"135","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=29$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $19$.
**Step 2:** $d=4(29)+19=135$.
**Step 3:** Cross-check via $(29-21)×4+103=135$.

**Step 3 — Answer SPR.** 135', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('049bb7cd-85bb-497a-b6ac-bcd2dbf21a9c', 'If the vehicle continues at the same rate, what is $d$ when $t=30$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+20$. At $t=22$, $d=130$.', 'passage', '[{"id":"A","text":"$165$","is_correct":false,"explanation":"Choice A ($165$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$135$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=30$."},{"id":"C","text":"$170$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(30)+20$. **Step 2:** $d=170$."},{"id":"D","text":"$150$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=30$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $20$.
**Step 2:** $d=5(30)+20=170$.
**Step 3:** Cross-check via $(30-22)×5+130=170$.

**Step 3 — Answer C.** $170$

**Distractor analysis:**
- **A** ($165$): Choice A ($165$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($135$): Adds slope once instead of evaluating at $t=30$.
- **D** ($150$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3876271-76c5-48a9-bc48-58a034f224f2', 'If the vehicle continues at the same rate, what is $d$ when $t=31$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+21$. At $t=23$, $d=159$.', 'passage', '[{"id":"A","text":"$201$","is_correct":false,"explanation":"Choice A ($201$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$165$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=31$."},{"id":"C","text":"$207$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(31)+21$. **Step 2:** $d=207$."},{"id":"D","text":"$186$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=31$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $21$.
**Step 2:** $d=6(31)+21=207$.
**Step 3:** Cross-check via $(31-23)×6+159=207$.

**Step 3 — Answer C.** $207$

**Distractor analysis:**
- **A** ($201$): Choice A ($201$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($165$): Adds slope once instead of evaluating at $t=31$.
- **D** ($186$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21968abb-737e-49c9-bbb9-c921f515d1b3', 'If the vehicle continues at the same rate, what is $d$ when $t=32$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+22$. At $t=24$, $d=94$.', 'passage', '[{"id":"A","text":"$115$","is_correct":false,"explanation":"Choice A ($115$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$97$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=32$."},{"id":"C","text":"$118$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(32)+22$. **Step 2:** $d=118$."},{"id":"D","text":"$96$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=32$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $22$.
**Step 2:** $d=3(32)+22=118$.
**Step 3:** Cross-check via $(32-24)×3+94=118$.

**Step 3 — Answer C.** $118$

**Distractor analysis:**
- **A** ($115$): Choice A ($115$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($97$): Adds slope once instead of evaluating at $t=32$.
- **D** ($96$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
