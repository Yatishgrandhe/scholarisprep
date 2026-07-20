BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c26815f-3eda-42f5-9e75-4ee7e0712395', 'If the vehicle continues at the same rate, what is $d$ when $t=21$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+11$. At $t=13$, $d=63$.', 'passage', '[{"id":"A","text":"$91$","is_correct":false,"explanation":"Choice A ($91$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$67$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=21$."},{"id":"C","text":"$95$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(21)+11$. **Step 2:** $d=95$."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=21$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $11$.
**Step 2:** $d=4(21)+11=95$.
**Step 3:** Cross-check via $(21-13)×4+63=95$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $95$

**Distractor analysis:**
- **A** ($91$): Choice A ($91$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($67$): Adds slope once instead of evaluating at $t=21$.
- **D** ($84$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ff0acadb-7b01-4934-b131-ec2831324f62', 'If the vehicle continues at the same rate, what is $d$ when $t=22$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+12$. At $t=14$, $d=82$.', 'passage', '[{"id":"A","text":"$117$","is_correct":false,"explanation":"Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$87$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=22$."},{"id":"C","text":"$122$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(22)+12$. **Step 2:** $d=122$."},{"id":"D","text":"$110$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=22$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $12$.
**Step 2:** $d=5(22)+12=122$.
**Step 3:** Cross-check via $(22-14)×5+82=122$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $122$

**Distractor analysis:**
- **A** ($117$): Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($87$): Adds slope once instead of evaluating at $t=22$.
- **D** ($110$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a59414e1-2f4c-49a3-b813-fbf5d7942683', 'If the vehicle continues at the same rate, what is $d$ when $t=23$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+13$. At $t=15$, $d=103$.', 'passage', '[{"id":"A","text":"$145$","is_correct":false,"explanation":"Choice A ($145$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$109$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=23$."},{"id":"C","text":"$151$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(23)+13$. **Step 2:** $d=151$."},{"id":"D","text":"$138$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=23$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $13$.
**Step 2:** $d=6(23)+13=151$.
**Step 3:** Cross-check via $(23-15)×6+103=151$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $151$

**Distractor analysis:**
- **A** ($145$): Choice A ($145$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($109$): Adds slope once instead of evaluating at $t=23$.
- **D** ($138$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d7b2e07-4f8a-4a99-8349-3a4c80c198ce', 'If the vehicle continues at the same rate, what is $d$ when $t=24$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+14$. At $t=16$, $d=62$.', 'passage', '[{"id":"A","text":"$83$","is_correct":false,"explanation":"Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=24$."},{"id":"C","text":"$86$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(24)+14$. **Step 2:** $d=86$."},{"id":"D","text":"$72$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=24$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $14$.
**Step 2:** $d=3(24)+14=86$.
**Step 3:** Cross-check via $(24-16)×3+62=86$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $86$

**Distractor analysis:**
- **A** ($83$): Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($65$): Adds slope once instead of evaluating at $t=24$.
- **D** ($72$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5acbe0b2-06cd-482f-a3a3-a3ac71fc0f83', 'If the vehicle continues at the same rate, what is $d$ when $t=25$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+15$. At $t=17$, $d=83$.', 'passage', '[{"id":"A","text":"$111$","is_correct":false,"explanation":"Choice A ($111$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$87$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=25$."},{"id":"C","text":"$115$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(25)+15$. **Step 2:** $d=115$."},{"id":"D","text":"$100$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=25$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $15$.
**Step 2:** $d=4(25)+15=115$.
**Step 3:** Cross-check via $(25-17)×4+83=115$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $115$

**Distractor analysis:**
- **A** ($111$): Choice A ($111$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($87$): Adds slope once instead of evaluating at $t=25$.
- **D** ($100$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('26c11cf5-d28e-4869-958e-8d758a3e0e3c', 'If the vehicle continues at the same rate, what is $d$ when $t=26$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+16$. At $t=18$, $d=106$.', 'passage', '[{"id":"A","text":"$141$","is_correct":false,"explanation":"Choice A ($141$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$111$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=26$."},{"id":"C","text":"$146$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(26)+16$. **Step 2:** $d=146$."},{"id":"D","text":"$130$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=26$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $16$.
**Step 2:** $d=5(26)+16=146$.
**Step 3:** Cross-check via $(26-18)×5+106=146$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $146$

**Distractor analysis:**
- **A** ($141$): Choice A ($141$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($111$): Adds slope once instead of evaluating at $t=26$.
- **D** ($130$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6612194-52e3-44b6-98bc-d50f301df37d', 'If the vehicle continues at the same rate, what is $d$ when $t=27$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+17$. At $t=19$, $d=131$.', 'passage', '[{"id":"A","text":"$173$","is_correct":false,"explanation":"Choice A ($173$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$137$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=27$."},{"id":"C","text":"$179$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(27)+17$. **Step 2:** $d=179$."},{"id":"D","text":"$162$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=27$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $17$.
**Step 2:** $d=6(27)+17=179$.
**Step 3:** Cross-check via $(27-19)×6+131=179$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $179$

**Distractor analysis:**
- **A** ($173$): Choice A ($173$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($137$): Adds slope once instead of evaluating at $t=27$.
- **D** ($162$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5f9b6add-c943-4b93-85d1-df61dcaf4aff', 'If the vehicle continues at the same rate, what is $d$ when $t=28$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+18$. At $t=20$, $d=78$.', 'passage', '[{"id":"A","text":"$99$","is_correct":false,"explanation":"Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=28$."},{"id":"C","text":"$102$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(28)+18$. **Step 2:** $d=102$."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=28$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $18$.
**Step 2:** $d=3(28)+18=102$.
**Step 3:** Cross-check via $(28-20)×3+78=102$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $102$

**Distractor analysis:**
- **A** ($99$): Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($81$): Adds slope once instead of evaluating at $t=28$.
- **D** ($84$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d90fcc3-81df-4609-a203-1854ac93be01', 'If the vehicle continues at the same rate, what is $d$ when $t=29$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+19$. At $t=21$, $d=103$.', 'passage', '[{"id":"A","text":"$131$","is_correct":false,"explanation":"Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$107$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=29$."},{"id":"C","text":"$135$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(29)+19$. **Step 2:** $d=135$."},{"id":"D","text":"$116$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=29$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $19$.
**Step 2:** $d=4(29)+19=135$.
**Step 3:** Cross-check via $(29-21)×4+103=135$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $135$

**Distractor analysis:**
- **A** ($131$): Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($107$): Adds slope once instead of evaluating at $t=29$.
- **D** ($116$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb655259-7f63-48ea-bd9c-23766a101129', 'If the vehicle continues at the same rate, what is $d$ when $t=30$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+20$. At $t=22$, $d=130$.', 'passage', '[{"id":"A","text":"$165$","is_correct":false,"explanation":"Choice A ($165$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$135$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=30$."},{"id":"C","text":"$170$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(30)+20$. **Step 2:** $d=170$."},{"id":"D","text":"$150$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=30$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $20$.
**Step 2:** $d=5(30)+20=170$.
**Step 3:** Cross-check via $(30-22)×5+130=170$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $170$

**Distractor analysis:**
- **A** ($165$): Choice A ($165$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($135$): Adds slope once instead of evaluating at $t=30$.
- **D** ($150$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce2e4b4e-6c8d-4599-bba8-31b59956fed4', 'If the vehicle continues at the same rate, what is $d$ when $t=31$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+21$. At $t=23$, $d=159$.', 'passage', '[{"id":"A","text":"$201$","is_correct":false,"explanation":"Choice A ($201$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$165$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=31$."},{"id":"C","text":"$207$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(31)+21$. **Step 2:** $d=207$."},{"id":"D","text":"$186$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=31$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $21$.
**Step 2:** $d=6(31)+21=207$.
**Step 3:** Cross-check via $(31-23)×6+159=207$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $207$

**Distractor analysis:**
- **A** ($201$): Choice A ($201$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($165$): Adds slope once instead of evaluating at $t=31$.
- **D** ($186$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8b4309c5-049e-4cd9-8965-1e968f13bd0d', 'If the vehicle continues at the same rate, what is $d$ when $t=32$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+22$. At $t=24$, $d=94$.', 'passage', '[{"id":"A","text":"$115$","is_correct":false,"explanation":"Choice A ($115$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$97$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=32$."},{"id":"C","text":"$118$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(32)+22$. **Step 2:** $d=118$."},{"id":"D","text":"$96$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=32$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $22$.
**Step 2:** $d=3(32)+22=118$.
**Step 3:** Cross-check via $(32-24)×3+94=118$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $118$

**Distractor analysis:**
- **A** ($115$): Choice A ($115$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($97$): Adds slope once instead of evaluating at $t=32$.
- **D** ($96$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
