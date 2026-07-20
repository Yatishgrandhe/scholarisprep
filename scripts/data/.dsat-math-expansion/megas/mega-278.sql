BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f76337b3-84f7-434c-a35f-04141080f51e', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 32, 36, 40, 44, and one score $x$ is unknown. The mean is 36.2.', 'passage', '[{"id":"SPR","text":"29","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=36.2×5=181$.
**Step 2:** Known sum $=152$.
**Step 3:** $x=181-152=29$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 29', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3e4f859c-86ad-445a-88d7-a2c3c242a104', 'What is the missing score $x$?', 'Five test scores: 33, 37, 41, 45, and one score $x$ is unknown. The mean is 37.2.', 'passage', '[{"id":"A","text":"$27$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$30$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=37.2×5=186$. **Step 2:** $x=30$."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$37$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=37.2×5=186$.
**Step 2:** Known sum $=156$.
**Step 3:** $x=186-156=30$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $30$

**Distractor analysis:**
- **A** ($27$): Pulls the mean down too far.
- **C** ($33$): Too high for the given mean.
- **D** ($37$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5ac81ee1-8fa7-47f2-af92-1ac684180d78', 'What is the missing score $x$?', 'Five test scores: 34, 38, 42, 46, and one score $x$ is unknown. The mean is 38.2.

| Student | Score |
| --- | --- |
| S1 | 19 |
| S2 | 22 |
| S3 | 25 |
| S4 | 28 |', 'table', '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$31$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=38.2×5=191$. **Step 2:** $x=31$."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$38$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=38.2×5=191$.
**Step 2:** Known sum $=160$.
**Step 3:** $x=191-160=31$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $31$

**Distractor analysis:**
- **A** ($28$): Pulls the mean down too far.
- **C** ($34$): Too high for the given mean.
- **D** ($38$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c494d1a3-2c4d-4084-9fca-4ddc1fedc093', 'What is the missing score $x$?', 'Five test scores: 35, 39, 43, 47, and one score $x$ is unknown. The mean is 39.2.', 'passage', '[{"id":"A","text":"$29$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$32$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=39.2×5=196$. **Step 2:** $x=32$."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$39$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=39.2×5=196$.
**Step 2:** Known sum $=164$.
**Step 3:** $x=196-164=32$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $32$

**Distractor analysis:**
- **A** ($29$): Pulls the mean down too far.
- **C** ($35$): Too high for the given mean.
- **D** ($39$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('12e4239c-89d0-4285-aa91-2784eed97894', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 36, 40, 44, 48, and one score $x$ is unknown. The mean is 40.2.', 'passage', '[{"id":"SPR","text":"33","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=40.2×5=201$.
**Step 2:** Known sum $=168$.
**Step 3:** $x=201-168=33$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 33', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f35ccf00-1336-4494-8bfa-576108e81019', 'What is the missing score $x$?', 'Five test scores: 37, 41, 45, 49, and one score $x$ is unknown. The mean is 41.2.

| Student | Score |
| --- | --- |
| S1 | 22 |
| S2 | 25 |
| S3 | 28 |
| S4 | 31 |', 'table', '[{"id":"A","text":"$31$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$34$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=41.2×5=206$. **Step 2:** $x=34$."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$41$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=41.2×5=206$.
**Step 2:** Known sum $=172$.
**Step 3:** $x=206-172=34$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $34$

**Distractor analysis:**
- **A** ($31$): Pulls the mean down too far.
- **C** ($37$): Too high for the given mean.
- **D** ($41$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('48abde1a-38a6-4861-80c7-abd4befc1a25', 'What is the missing score $x$?', 'Five test scores: 38, 42, 46, 50, and one score $x$ is unknown. The mean is 42.2.', 'passage', '[{"id":"A","text":"$32$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$35$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=42.2×5=211$. **Step 2:** $x=35$."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$42$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=42.2×5=211$.
**Step 2:** Known sum $=176$.
**Step 3:** $x=211-176=35$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $35$

**Distractor analysis:**
- **A** ($32$): Pulls the mean down too far.
- **C** ($38$): Too high for the given mean.
- **D** ($42$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d887525a-2b68-40b5-9adb-2728ea91c598', 'What is the missing score $x$?', 'Five test scores: 39, 43, 47, 51, and one score $x$ is unknown. The mean is 43.2.', 'passage', '[{"id":"A","text":"$33$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$36$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=43.2×5=216$. **Step 2:** $x=36$."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$43$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=43.2×5=216$.
**Step 2:** Known sum $=180$.
**Step 3:** $x=216-180=36$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $36$

**Distractor analysis:**
- **A** ($33$): Pulls the mean down too far.
- **C** ($39$): Too high for the given mean.
- **D** ($43$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('216c4d38-2f26-42fe-a284-24de6ba3b4e3', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 40, 44, 48, 52, and one score $x$ is unknown. The mean is 44.2.

| Student | Score |
| --- | --- |
| S1 | 25 |
| S2 | 28 |
| S3 | 31 |
| S4 | 34 |', 'table', '[{"id":"SPR","text":"37","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=44.2×5=221$.
**Step 2:** Known sum $=184$.
**Step 3:** $x=221-184=37$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 37', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ea2bac6-5dab-4e56-9a4e-75f6fccbbaac', 'What is the missing score $x$?', 'Five test scores: 41, 45, 49, 53, and one score $x$ is unknown. The mean is 45.2.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$38$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=45.2×5=226$. **Step 2:** $x=38$."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=45.2×5=226$.
**Step 2:** Known sum $=188$.
**Step 3:** $x=226-188=38$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $38$

**Distractor analysis:**
- **A** ($35$): Pulls the mean down too far.
- **C** ($41$): Too high for the given mean.
- **D** ($45$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('64a10d5c-39e7-43d4-a0af-ef85580ee2ab', 'What is the missing score $x$?', 'Five test scores: 42, 46, 50, 54, and one score $x$ is unknown. The mean is 46.2.', 'passage', '[{"id":"A","text":"$36$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$39$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=46.2×5=231$. **Step 2:** $x=39$."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$46$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=46.2×5=231$.
**Step 2:** Known sum $=192$.
**Step 3:** $x=231-192=39$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $39$

**Distractor analysis:**
- **A** ($36$): Pulls the mean down too far.
- **C** ($42$): Too high for the given mean.
- **D** ($46$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8499ced9-1fc0-4208-b931-47e4747e6d37', 'What is the missing score $x$?', 'Five test scores: 43, 47, 51, 55, and one score $x$ is unknown. The mean is 47.2.

| Student | Score |
| --- | --- |
| S1 | 28 |
| S2 | 31 |
| S3 | 34 |
| S4 | 37 |', 'table', '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$40$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=47.2×5=236$. **Step 2:** $x=40$."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$47$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=47.2×5=236$.
**Step 2:** Known sum $=196$.
**Step 3:** $x=236-196=40$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $40$

**Distractor analysis:**
- **A** ($37$): Pulls the mean down too far.
- **C** ($43$): Too high for the given mean.
- **D** ($47$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
