BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d551be84-3aeb-419b-939f-98954f7a3c3c', 'If the vehicle continues at the same rate, what is $d$ when $t=16$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+6$. At $t=8$, $d=30$.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=16$."},{"id":"C","text":"$54$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(16)+6$. **Step 2:** $d=54$."},{"id":"D","text":"$48$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=16$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $6$.
**Step 2:** $d=3(16)+6=54$.
**Step 3:** Cross-check via $(16-8)×3+30=54$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $54$

**Distractor analysis:**
- **A** ($51$): Choice A ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($33$): Adds slope once instead of evaluating at $t=16$.
- **D** ($48$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b85f582b-9c2a-471d-b8b7-d417b3714e8b', 'If the vehicle continues at the same rate, what is $d$ when $t=17$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+7$. At $t=9$, $d=43$.', 'passage', '[{"id":"A","text":"$71$","is_correct":false,"explanation":"Choice A ($71$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$47$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=17$."},{"id":"C","text":"$75$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(17)+7$. **Step 2:** $d=75$."},{"id":"D","text":"$68$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=17$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $7$.
**Step 2:** $d=4(17)+7=75$.
**Step 3:** Cross-check via $(17-9)×4+43=75$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $75$

**Distractor analysis:**
- **A** ($71$): Choice A ($71$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($47$): Adds slope once instead of evaluating at $t=17$.
- **D** ($68$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6374321c-6ae5-473b-b471-47645c82e5fd', 'If the vehicle continues at the same rate, what is $d$ when $t=18$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+8$. At $t=10$, $d=58$.', 'passage', '[{"id":"A","text":"$93$","is_correct":false,"explanation":"Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$63$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=18$."},{"id":"C","text":"$98$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(18)+8$. **Step 2:** $d=98$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=18$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $8$.
**Step 2:** $d=5(18)+8=98$.
**Step 3:** Cross-check via $(18-10)×5+58=98$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $98$

**Distractor analysis:**
- **A** ($93$): Choice A ($93$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($63$): Adds slope once instead of evaluating at $t=18$.
- **D** ($90$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9d4aec6d-103a-4636-83d1-a417f6df7d25', 'If the vehicle continues at the same rate, what is $d$ when $t=19$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+9$. At $t=11$, $d=75$.', 'passage', '[{"id":"A","text":"$117$","is_correct":false,"explanation":"Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=19$."},{"id":"C","text":"$123$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(19)+9$. **Step 2:** $d=123$."},{"id":"D","text":"$114$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=19$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $9$.
**Step 2:** $d=6(19)+9=123$.
**Step 3:** Cross-check via $(19-11)×6+75=123$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $123$

**Distractor analysis:**
- **A** ($117$): Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($81$): Adds slope once instead of evaluating at $t=19$.
- **D** ($114$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9b7472e5-cb88-4aa8-96f3-3509762b562c', 'If the vehicle continues at the same rate, what is $d$ when $t=20$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+10$. At $t=12$, $d=46$.', 'passage', '[{"id":"A","text":"$67$","is_correct":false,"explanation":"Choice A ($67$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=20$."},{"id":"C","text":"$70$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(20)+10$. **Step 2:** $d=70$."},{"id":"D","text":"$60$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=20$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $10$.
**Step 2:** $d=3(20)+10=70$.
**Step 3:** Cross-check via $(20-12)×3+46=70$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $70$

**Distractor analysis:**
- **A** ($67$): Choice A ($67$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($49$): Adds slope once instead of evaluating at $t=20$.
- **D** ($60$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ed3ef320-2566-4c3e-bd61-e156c477fa1b', 'If the vehicle continues at the same rate, what is $d$ when $t=21$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+11$. At $t=13$, $d=63$.', 'passage', '[{"id":"A","text":"$91$","is_correct":false,"explanation":"Choice A ($91$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$67$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=21$."},{"id":"C","text":"$95$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(21)+11$. **Step 2:** $d=95$."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=21$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $11$.
**Step 2:** $d=4(21)+11=95$.
**Step 3:** Cross-check via $(21-13)×4+63=95$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $95$

**Distractor analysis:**
- **A** ($91$): Choice A ($91$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($67$): Adds slope once instead of evaluating at $t=21$.
- **D** ($84$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3b39adb6-3445-440b-b5d9-1272c3600055', 'If the vehicle continues at the same rate, what is $d$ when $t=22$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+12$. At $t=14$, $d=82$.', 'passage', '[{"id":"A","text":"$117$","is_correct":false,"explanation":"Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$87$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=22$."},{"id":"C","text":"$122$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(22)+12$. **Step 2:** $d=122$."},{"id":"D","text":"$110$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=22$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $12$.
**Step 2:** $d=5(22)+12=122$.
**Step 3:** Cross-check via $(22-14)×5+82=122$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $122$

**Distractor analysis:**
- **A** ($117$): Choice A ($117$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($87$): Adds slope once instead of evaluating at $t=22$.
- **D** ($110$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9f31a972-3265-4f09-9b27-96c1dd8f287e', 'If the vehicle continues at the same rate, what is $d$ when $t=23$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+13$. At $t=15$, $d=103$.', 'passage', '[{"id":"A","text":"$145$","is_correct":false,"explanation":"Choice A ($145$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$109$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=23$."},{"id":"C","text":"$151$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(23)+13$. **Step 2:** $d=151$."},{"id":"D","text":"$138$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=23$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $13$.
**Step 2:** $d=6(23)+13=151$.
**Step 3:** Cross-check via $(23-15)×6+103=151$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $151$

**Distractor analysis:**
- **A** ($145$): Choice A ($145$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($109$): Adds slope once instead of evaluating at $t=23$.
- **D** ($138$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ed45a653-8786-457a-a4d6-0e5e73c6389b', 'If the vehicle continues at the same rate, what is $d$ when $t=24$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+14$. At $t=16$, $d=62$.', 'passage', '[{"id":"A","text":"$83$","is_correct":false,"explanation":"Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=24$."},{"id":"C","text":"$86$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(24)+14$. **Step 2:** $d=86$."},{"id":"D","text":"$72$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=24$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $14$.
**Step 2:** $d=3(24)+14=86$.
**Step 3:** Cross-check via $(24-16)×3+62=86$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $86$

**Distractor analysis:**
- **A** ($83$): Choice A ($83$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($65$): Adds slope once instead of evaluating at $t=24$.
- **D** ($72$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2f492529-2f12-4b30-a60b-74599666fbcf', 'If the vehicle continues at the same rate, what is $d$ when $t=25$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+15$. At $t=17$, $d=83$.', 'passage', '[{"id":"A","text":"$111$","is_correct":false,"explanation":"Choice A ($111$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$87$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=25$."},{"id":"C","text":"$115$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(25)+15$. **Step 2:** $d=115$."},{"id":"D","text":"$100$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=25$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $15$.
**Step 2:** $d=4(25)+15=115$.
**Step 3:** Cross-check via $(25-17)×4+83=115$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $115$

**Distractor analysis:**
- **A** ($111$): Choice A ($111$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($87$): Adds slope once instead of evaluating at $t=25$.
- **D** ($100$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8d2a794a-7f17-4787-82a8-5fd71cf58cc0', 'If the vehicle continues at the same rate, what is $d$ when $t=26$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+16$. At $t=18$, $d=106$.', 'passage', '[{"id":"A","text":"$141$","is_correct":false,"explanation":"Choice A ($141$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$111$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=26$."},{"id":"C","text":"$146$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(26)+16$. **Step 2:** $d=146$."},{"id":"D","text":"$130$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=26$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $16$.
**Step 2:** $d=5(26)+16=146$.
**Step 3:** Cross-check via $(26-18)×5+106=146$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $146$

**Distractor analysis:**
- **A** ($141$): Choice A ($141$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($111$): Adds slope once instead of evaluating at $t=26$.
- **D** ($130$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('812b03c3-2739-4c43-b97f-6f8147abf8ea', 'If the vehicle continues at the same rate, what is $d$ when $t=27$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+17$. At $t=19$, $d=131$.', 'passage', '[{"id":"A","text":"$173$","is_correct":false,"explanation":"Choice A ($173$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$137$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=27$."},{"id":"C","text":"$179$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(27)+17$. **Step 2:** $d=179$."},{"id":"D","text":"$162$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=27$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $17$.
**Step 2:** $d=6(27)+17=179$.
**Step 3:** Cross-check via $(27-19)×6+131=179$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $179$

**Distractor analysis:**
- **A** ($173$): Choice A ($173$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($137$): Adds slope once instead of evaluating at $t=27$.
- **D** ($162$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4d095103-56e4-4b50-aa34-bcbc5f7db7fe', 'If the vehicle continues at the same rate, what is $d$ when $t=28$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+18$. At $t=20$, $d=78$.', 'passage', '[{"id":"A","text":"$99$","is_correct":false,"explanation":"Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=28$."},{"id":"C","text":"$102$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(28)+18$. **Step 2:** $d=102$."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=28$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $18$.
**Step 2:** $d=3(28)+18=102$.
**Step 3:** Cross-check via $(28-20)×3+78=102$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $102$

**Distractor analysis:**
- **A** ($99$): Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($81$): Adds slope once instead of evaluating at $t=28$.
- **D** ($84$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6642c4e9-aa5f-440e-9746-8d156d8df94b', 'If the vehicle continues at the same rate, what is $d$ when $t=29$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+19$. At $t=21$, $d=103$.', 'passage', '[{"id":"A","text":"$131$","is_correct":false,"explanation":"Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$107$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=29$."},{"id":"C","text":"$135$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(29)+19$. **Step 2:** $d=135$."},{"id":"D","text":"$116$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=29$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $19$.
**Step 2:** $d=4(29)+19=135$.
**Step 3:** Cross-check via $(29-21)×4+103=135$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $135$

**Distractor analysis:**
- **A** ($131$): Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($107$): Adds slope once instead of evaluating at $t=29$.
- **D** ($116$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4375bc23-34a3-4bd9-94cc-6505ec8c3e01', 'If the vehicle continues at the same rate, what is $d$ when $t=30$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+20$. At $t=22$, $d=130$.', 'passage', '[{"id":"A","text":"$165$","is_correct":false,"explanation":"Choice A ($165$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$135$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=30$."},{"id":"C","text":"$170$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(30)+20$. **Step 2:** $d=170$."},{"id":"D","text":"$150$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=30$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $20$.
**Step 2:** $d=5(30)+20=170$.
**Step 3:** Cross-check via $(30-22)×5+130=170$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $170$

**Distractor analysis:**
- **A** ($165$): Choice A ($165$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($135$): Adds slope once instead of evaluating at $t=30$.
- **D** ($150$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fc143529-989b-4dad-9578-a0f1531fee80', 'If the vehicle continues at the same rate, what is $d$ when $t=31$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+21$. At $t=23$, $d=159$.', 'passage', '[{"id":"A","text":"$201$","is_correct":false,"explanation":"Choice A ($201$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$165$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=31$."},{"id":"C","text":"$207$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(31)+21$. **Step 2:** $d=207$."},{"id":"D","text":"$186$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=31$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $21$.
**Step 2:** $d=6(31)+21=207$.
**Step 3:** Cross-check via $(31-23)×6+159=207$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $207$

**Distractor analysis:**
- **A** ($201$): Choice A ($201$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($165$): Adds slope once instead of evaluating at $t=31$.
- **D** ($186$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('87b25ac7-4f13-4765-92de-6dfaca33c8a6', 'If the vehicle continues at the same rate, what is $d$ when $t=32$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+22$. At $t=24$, $d=94$.', 'passage', '[{"id":"A","text":"$115$","is_correct":false,"explanation":"Choice A ($115$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$97$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=32$."},{"id":"C","text":"$118$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(32)+22$. **Step 2:** $d=118$."},{"id":"D","text":"$96$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=32$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $22$.
**Step 2:** $d=3(32)+22=118$.
**Step 3:** Cross-check via $(32-24)×3+94=118$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $118$

**Distractor analysis:**
- **A** ($115$): Choice A ($115$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($97$): Adds slope once instead of evaluating at $t=32$.
- **D** ($96$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('73c38cba-26b9-4a61-95b2-866fd9d8e6f0', 'If the vehicle continues at the same rate, what is $d$ when $t=33$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+23$. At $t=25$, $d=123$.', 'passage', '[{"id":"A","text":"$151$","is_correct":false,"explanation":"Choice A ($151$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$127$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=33$."},{"id":"C","text":"$155$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(33)+23$. **Step 2:** $d=155$."},{"id":"D","text":"$132$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=33$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $23$.
**Step 2:** $d=4(33)+23=155$.
**Step 3:** Cross-check via $(33-25)×4+123=155$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $155$

**Distractor analysis:**
- **A** ($151$): Choice A ($151$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($127$): Adds slope once instead of evaluating at $t=33$.
- **D** ($132$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('110669aa-4d47-4e96-984e-de61f37eeae6', 'If the vehicle continues at the same rate, what is $d$ when $t=34$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+24$. At $t=26$, $d=154$.', 'passage', '[{"id":"A","text":"$189$","is_correct":false,"explanation":"Choice A ($189$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$159$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=34$."},{"id":"C","text":"$194$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(34)+24$. **Step 2:** $d=194$."},{"id":"D","text":"$170$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=34$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $24$.
**Step 2:** $d=5(34)+24=194$.
**Step 3:** Cross-check via $(34-26)×5+154=194$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $194$

**Distractor analysis:**
- **A** ($189$): Choice A ($189$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($159$): Adds slope once instead of evaluating at $t=34$.
- **D** ($170$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5f06d3f6-adc0-40d0-b628-f13ca5c10e1a', 'If the vehicle continues at the same rate, what is $d$ when $t=35$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+25$. At $t=27$, $d=187$.', 'passage', '[{"id":"A","text":"$229$","is_correct":false,"explanation":"Choice A ($229$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$193$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=35$."},{"id":"C","text":"$235$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(35)+25$. **Step 2:** $d=235$."},{"id":"D","text":"$210$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=35$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $25$.
**Step 2:** $d=6(35)+25=235$.
**Step 3:** Cross-check via $(35-27)×6+187=235$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $235$

**Distractor analysis:**
- **A** ($229$): Choice A ($229$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($193$): Adds slope once instead of evaluating at $t=35$.
- **D** ($210$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7d035235-1db3-4f28-a424-838f11ed99ea', 'If the vehicle continues at the same rate, what is $d$ when $t=36$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+26$. At $t=28$, $d=110$.', 'passage', '[{"id":"A","text":"$131$","is_correct":false,"explanation":"Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$113$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=36$."},{"id":"C","text":"$134$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(36)+26$. **Step 2:** $d=134$."},{"id":"D","text":"$108$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=36$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $26$.
**Step 2:** $d=3(36)+26=134$.
**Step 3:** Cross-check via $(36-28)×3+110=134$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $134$

**Distractor analysis:**
- **A** ($131$): Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($113$): Adds slope once instead of evaluating at $t=36$.
- **D** ($108$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cec4c573-0ebb-4ceb-9d29-9caa935c2c31', 'If the vehicle continues at the same rate, what is $d$ when $t=37$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+27$. At $t=29$, $d=143$.', 'passage', '[{"id":"A","text":"$171$","is_correct":false,"explanation":"Choice A ($171$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$147$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=37$."},{"id":"C","text":"$175$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(37)+27$. **Step 2:** $d=175$."},{"id":"D","text":"$148$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=37$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $27$.
**Step 2:** $d=4(37)+27=175$.
**Step 3:** Cross-check via $(37-29)×4+143=175$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $175$

**Distractor analysis:**
- **A** ($171$): Choice A ($171$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($147$): Adds slope once instead of evaluating at $t=37$.
- **D** ($148$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2396a13d-41c0-47e4-866d-2e97416f3433', 'If the vehicle continues at the same rate, what is $d$ when $t=38$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+28$. At $t=30$, $d=178$.', 'passage', '[{"id":"A","text":"$213$","is_correct":false,"explanation":"Choice A ($213$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$183$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=38$."},{"id":"C","text":"$218$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(38)+28$. **Step 2:** $d=218$."},{"id":"D","text":"$190$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=38$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $28$.
**Step 2:** $d=5(38)+28=218$.
**Step 3:** Cross-check via $(38-30)×5+178=218$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $218$

**Distractor analysis:**
- **A** ($213$): Choice A ($213$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($183$): Adds slope once instead of evaluating at $t=38$.
- **D** ($190$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2724e942-5519-4c64-99a8-911d5894133c', 'If the vehicle continues at the same rate, what is $d$ when $t=39$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+29$. At $t=31$, $d=215$.', 'passage', '[{"id":"A","text":"$257$","is_correct":false,"explanation":"Choice A ($257$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$221$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=39$."},{"id":"C","text":"$263$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(39)+29$. **Step 2:** $d=263$."},{"id":"D","text":"$234$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=39$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $29$.
**Step 2:** $d=6(39)+29=263$.
**Step 3:** Cross-check via $(39-31)×6+215=263$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $263$

**Distractor analysis:**
- **A** ($257$): Choice A ($257$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($221$): Adds slope once instead of evaluating at $t=39$.
- **D** ($234$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('359a909c-49fd-4133-ac37-ff155017bc2c', 'If the vehicle continues at the same rate, what is $d$ when $t=40$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+30$. At $t=32$, $d=126$.', 'passage', '[{"id":"A","text":"$147$","is_correct":false,"explanation":"Choice A ($147$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$129$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=40$."},{"id":"C","text":"$150$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(40)+30$. **Step 2:** $d=150$."},{"id":"D","text":"$120$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=40$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $30$.
**Step 2:** $d=3(40)+30=150$.
**Step 3:** Cross-check via $(40-32)×3+126=150$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $150$

**Distractor analysis:**
- **A** ($147$): Choice A ($147$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($129$): Adds slope once instead of evaluating at $t=40$.
- **D** ($120$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c3d9c058-a332-464a-9623-63b77fd31e37', 'If the vehicle continues at the same rate, what is $d$ when $t=41$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+31$. At $t=33$, $d=163$.', 'passage', '[{"id":"A","text":"$191$","is_correct":false,"explanation":"Choice A ($191$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$167$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=41$."},{"id":"C","text":"$195$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(41)+31$. **Step 2:** $d=195$."},{"id":"D","text":"$164$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=41$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $31$.
**Step 2:** $d=4(41)+31=195$.
**Step 3:** Cross-check via $(41-33)×4+163=195$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $195$

**Distractor analysis:**
- **A** ($191$): Choice A ($191$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($167$): Adds slope once instead of evaluating at $t=41$.
- **D** ($164$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d4a946ed-4998-4c2d-92bf-14edf1070263', 'If the vehicle continues at the same rate, what is $d$ when $t=42$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+32$. At $t=34$, $d=202$.', 'passage', '[{"id":"A","text":"$237$","is_correct":false,"explanation":"Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$207$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=42$."},{"id":"C","text":"$242$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(42)+32$. **Step 2:** $d=242$."},{"id":"D","text":"$210$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=42$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $32$.
**Step 2:** $d=5(42)+32=242$.
**Step 3:** Cross-check via $(42-34)×5+202=242$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $242$

**Distractor analysis:**
- **A** ($237$): Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($207$): Adds slope once instead of evaluating at $t=42$.
- **D** ($210$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6019a3ff-7546-4165-bf80-4fcb8921b668', 'If the vehicle continues at the same rate, what is $d$ when $t=43$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+33$. At $t=35$, $d=243$.', 'passage', '[{"id":"A","text":"$285$","is_correct":false,"explanation":"Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$249$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=43$."},{"id":"C","text":"$291$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(43)+33$. **Step 2:** $d=291$."},{"id":"D","text":"$258$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=43$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $33$.
**Step 2:** $d=6(43)+33=291$.
**Step 3:** Cross-check via $(43-35)×6+243=291$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $291$

**Distractor analysis:**
- **A** ($285$): Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($249$): Adds slope once instead of evaluating at $t=43$.
- **D** ($258$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('eeaee133-baa8-4ccc-8eeb-2ac4f2c940a7', 'If the vehicle continues at the same rate, what is $d$ when $t=44$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+34$. At $t=36$, $d=142$.', 'passage', '[{"id":"A","text":"$163$","is_correct":false,"explanation":"Choice A ($163$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$145$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=44$."},{"id":"C","text":"$166$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(44)+34$. **Step 2:** $d=166$."},{"id":"D","text":"$132$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=44$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $34$.
**Step 2:** $d=3(44)+34=166$.
**Step 3:** Cross-check via $(44-36)×3+142=166$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $166$

**Distractor analysis:**
- **A** ($163$): Choice A ($163$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($145$): Adds slope once instead of evaluating at $t=44$.
- **D** ($132$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b0d8e10e-8716-4933-bdd3-beb1622c11a8', 'If the vehicle continues at the same rate, what is $d$ when $t=45$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+35$. At $t=37$, $d=183$.', 'passage', '[{"id":"A","text":"$211$","is_correct":false,"explanation":"Choice A ($211$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$187$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=45$."},{"id":"C","text":"$215$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(45)+35$. **Step 2:** $d=215$."},{"id":"D","text":"$180$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=45$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $35$.
**Step 2:** $d=4(45)+35=215$.
**Step 3:** Cross-check via $(45-37)×4+183=215$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $215$

**Distractor analysis:**
- **A** ($211$): Choice A ($211$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($187$): Adds slope once instead of evaluating at $t=45$.
- **D** ($180$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0bf0e9c6-04ff-450d-8b1c-fc84b3f38415', 'If the vehicle continues at the same rate, what is $d$ when $t=46$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+36$. At $t=38$, $d=226$.', 'passage', '[{"id":"A","text":"$261$","is_correct":false,"explanation":"Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$231$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=46$."},{"id":"C","text":"$266$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(46)+36$. **Step 2:** $d=266$."},{"id":"D","text":"$230$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=46$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $36$.
**Step 2:** $d=5(46)+36=266$.
**Step 3:** Cross-check via $(46-38)×5+226=266$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $266$

**Distractor analysis:**
- **A** ($261$): Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($231$): Adds slope once instead of evaluating at $t=46$.
- **D** ($230$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7c66905a-a426-469c-837c-79a15c1fc869', 'If the vehicle continues at the same rate, what is $d$ when $t=47$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+37$. At $t=39$, $d=271$.', 'passage', '[{"id":"A","text":"$313$","is_correct":false,"explanation":"Choice A ($313$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$277$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=47$."},{"id":"C","text":"$319$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(47)+37$. **Step 2:** $d=319$."},{"id":"D","text":"$282$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=47$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $37$.
**Step 2:** $d=6(47)+37=319$.
**Step 3:** Cross-check via $(47-39)×6+271=319$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $319$

**Distractor analysis:**
- **A** ($313$): Choice A ($313$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($277$): Adds slope once instead of evaluating at $t=47$.
- **D** ($282$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4e312caa-ca6b-41f8-bf53-602582d27e39', 'If the vehicle continues at the same rate, what is $d$ when $t=48$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+38$. At $t=40$, $d=158$.', 'passage', '[{"id":"A","text":"$179$","is_correct":false,"explanation":"Choice A ($179$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$161$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=48$."},{"id":"C","text":"$182$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(48)+38$. **Step 2:** $d=182$."},{"id":"D","text":"$144$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=48$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $38$.
**Step 2:** $d=3(48)+38=182$.
**Step 3:** Cross-check via $(48-40)×3+158=182$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $182$

**Distractor analysis:**
- **A** ($179$): Choice A ($179$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($161$): Adds slope once instead of evaluating at $t=48$.
- **D** ($144$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3a72cf77-6829-48ae-8790-c2a9b13c155b', 'If the vehicle continues at the same rate, what is $d$ when $t=49$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+39$. At $t=41$, $d=203$.', 'passage', '[{"id":"A","text":"$231$","is_correct":false,"explanation":"Choice A ($231$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$207$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=49$."},{"id":"C","text":"$235$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(49)+39$. **Step 2:** $d=235$."},{"id":"D","text":"$196$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=49$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $39$.
**Step 2:** $d=4(49)+39=235$.
**Step 3:** Cross-check via $(49-41)×4+203=235$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $235$

**Distractor analysis:**
- **A** ($231$): Choice A ($231$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($207$): Adds slope once instead of evaluating at $t=49$.
- **D** ($196$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5221c38d-c298-4682-8aa3-91cd85dd02f1', 'If the vehicle continues at the same rate, what is $d$ when $t=50$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+40$. At $t=42$, $d=250$.', 'passage', '[{"id":"A","text":"$285$","is_correct":false,"explanation":"Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$255$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=50$."},{"id":"C","text":"$290$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(50)+40$. **Step 2:** $d=290$."},{"id":"D","text":"$250$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=50$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $40$.
**Step 2:** $d=5(50)+40=290$.
**Step 3:** Cross-check via $(50-42)×5+250=290$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $290$

**Distractor analysis:**
- **A** ($285$): Choice A ($285$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($255$): Adds slope once instead of evaluating at $t=50$.
- **D** ($250$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ae1c613e-7f2f-438c-9d44-5a73892e252f', 'If the vehicle continues at the same rate, what is $d$ when $t=51$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+41$. At $t=43$, $d=299$.', 'passage', '[{"id":"A","text":"$341$","is_correct":false,"explanation":"Choice A ($341$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$305$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=51$."},{"id":"C","text":"$347$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(51)+41$. **Step 2:** $d=347$."},{"id":"D","text":"$306$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=51$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $41$.
**Step 2:** $d=6(51)+41=347$.
**Step 3:** Cross-check via $(51-43)×6+299=347$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $347$

**Distractor analysis:**
- **A** ($341$): Choice A ($341$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($305$): Adds slope once instead of evaluating at $t=51$.
- **D** ($306$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bc4a2e73-65dd-4957-a8e6-453f29d6356c', 'If the vehicle continues at the same rate, what is $d$ when $t=52$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+42$. At $t=44$, $d=174$.', 'passage', '[{"id":"A","text":"$195$","is_correct":false,"explanation":"Choice A ($195$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$177$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=52$."},{"id":"C","text":"$198$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(52)+42$. **Step 2:** $d=198$."},{"id":"D","text":"$156$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=52$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $42$.
**Step 2:** $d=3(52)+42=198$.
**Step 3:** Cross-check via $(52-44)×3+174=198$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $198$

**Distractor analysis:**
- **A** ($195$): Choice A ($195$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($177$): Adds slope once instead of evaluating at $t=52$.
- **D** ($156$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4a2cf6b2-3a96-4a77-9ff5-6de255ef9cfd', 'If the vehicle continues at the same rate, what is $d$ when $t=53$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+43$. At $t=45$, $d=223$.', 'passage', '[{"id":"A","text":"$251$","is_correct":false,"explanation":"Choice A ($251$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$227$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=53$."},{"id":"C","text":"$255$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(53)+43$. **Step 2:** $d=255$."},{"id":"D","text":"$212$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=53$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $43$.
**Step 2:** $d=4(53)+43=255$.
**Step 3:** Cross-check via $(53-45)×4+223=255$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $255$

**Distractor analysis:**
- **A** ($251$): Choice A ($251$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($227$): Adds slope once instead of evaluating at $t=53$.
- **D** ($212$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8f7fde33-74f0-497b-9d22-d71b6d07b325', 'If the vehicle continues at the same rate, what is $d$ when $t=54$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+44$. At $t=46$, $d=274$.', 'passage', '[{"id":"A","text":"$309$","is_correct":false,"explanation":"Choice A ($309$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$279$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=54$."},{"id":"C","text":"$314$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(54)+44$. **Step 2:** $d=314$."},{"id":"D","text":"$270$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=54$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $44$.
**Step 2:** $d=5(54)+44=314$.
**Step 3:** Cross-check via $(54-46)×5+274=314$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $314$

**Distractor analysis:**
- **A** ($309$): Choice A ($309$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($279$): Adds slope once instead of evaluating at $t=54$.
- **D** ($270$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a84d6e8b-e8b0-46a0-bcb4-c5408d3b4e50', 'If the vehicle continues at the same rate, what is $d$ when $t=55$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+45$. At $t=47$, $d=327$.', 'passage', '[{"id":"A","text":"$369$","is_correct":false,"explanation":"Choice A ($369$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$333$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=55$."},{"id":"C","text":"$375$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(55)+45$. **Step 2:** $d=375$."},{"id":"D","text":"$330$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=55$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $45$.
**Step 2:** $d=6(55)+45=375$.
**Step 3:** Cross-check via $(55-47)×6+327=375$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $375$

**Distractor analysis:**
- **A** ($369$): Choice A ($369$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($333$): Adds slope once instead of evaluating at $t=55$.
- **D** ($330$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
