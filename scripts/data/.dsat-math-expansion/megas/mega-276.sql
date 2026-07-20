BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5757688a-ec10-4957-a581-ee1cf741969d', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 8, 12, 16, 20, and one score $x$ is unknown. The mean is 12.2.', 'passage', '[{"id":"SPR","text":"5","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=12.2×5=61$.
**Step 2:** Known sum $=56$.
**Step 3:** $x=61-56=5$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 5', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8ef59a46-8584-4edb-b6af-9be2ce4e4ba6', 'What is the missing score $x$?', 'Five test scores: 9, 13, 17, 21, and one score $x$ is unknown. The mean is 13.2.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=13.2×5=66$. **Step 2:** $x=6$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=13.2×5=66$.
**Step 2:** Known sum $=60$.
**Step 3:** $x=66-60=6$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($3$): Pulls the mean down too far.
- **C** ($9$): Too high for the given mean.
- **D** ($13$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('079f0fca-a509-48d1-ab37-5f433d3da522', 'What is the missing score $x$?', 'Five test scores: 10, 14, 18, 22, and one score $x$ is unknown. The mean is 14.2.

| Student | Score |
| --- | --- |
| S1 | 35 |
| S2 | 38 |
| S3 | 41 |
| S4 | 44 |', 'table', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=14.2×5=71$. **Step 2:** $x=7$."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=14.2×5=71$.
**Step 2:** Known sum $=64$.
**Step 3:** $x=71-64=7$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($4$): Pulls the mean down too far.
- **C** ($10$): Too high for the given mean.
- **D** ($14$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e6387c21-b09f-46b3-b9b5-59891e0d352e', 'What is the missing score $x$?', 'Five test scores: 11, 15, 19, 23, and one score $x$ is unknown. The mean is 15.2.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=15.2×5=76$. **Step 2:** $x=8$."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=15.2×5=76$.
**Step 2:** Known sum $=68$.
**Step 3:** $x=76-68=8$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($5$): Pulls the mean down too far.
- **C** ($11$): Too high for the given mean.
- **D** ($15$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cf1d4435-452a-4673-b4c7-eadc30f5e2ce', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 12, 16, 20, 24, and one score $x$ is unknown. The mean is 16.2.', 'passage', '[{"id":"SPR","text":"9","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=16.2×5=81$.
**Step 2:** Known sum $=72$.
**Step 3:** $x=81-72=9$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 9', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('15bb57b3-a09d-4a3b-b695-cd0c20fb022c', 'What is the missing score $x$?', 'Five test scores: 13, 17, 21, 25, and one score $x$ is unknown. The mean is 17.2.

| Student | Score |
| --- | --- |
| S1 | 38 |
| S2 | 41 |
| S3 | 44 |
| S4 | 47 |', 'table', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$10$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=17.2×5=86$. **Step 2:** $x=10$."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=17.2×5=86$.
**Step 2:** Known sum $=76$.
**Step 3:** $x=86-76=10$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $10$

**Distractor analysis:**
- **A** ($7$): Pulls the mean down too far.
- **C** ($13$): Too high for the given mean.
- **D** ($17$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b9b8de4b-67b1-44ae-b327-64d4abb0a522', 'What is the missing score $x$?', 'Five test scores: 14, 18, 22, 26, and one score $x$ is unknown. The mean is 18.2.', 'passage', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$11$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=18.2×5=91$. **Step 2:** $x=11$."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=18.2×5=91$.
**Step 2:** Known sum $=80$.
**Step 3:** $x=91-80=11$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $11$

**Distractor analysis:**
- **A** ($8$): Pulls the mean down too far.
- **C** ($14$): Too high for the given mean.
- **D** ($18$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8fd3eacc-0335-4b2b-9c5d-742ba2adb5ce', 'What is the missing score $x$?', 'Five test scores: 15, 19, 23, 27, and one score $x$ is unknown. The mean is 19.2.', 'passage', '[{"id":"A","text":"$9$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$12$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=19.2×5=96$. **Step 2:** $x=12$."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$19$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=19.2×5=96$.
**Step 2:** Known sum $=84$.
**Step 3:** $x=96-84=12$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $12$

**Distractor analysis:**
- **A** ($9$): Pulls the mean down too far.
- **C** ($15$): Too high for the given mean.
- **D** ($19$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4daece0e-e7d1-490a-bf91-0abd3d3cc3b4', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 16, 20, 24, 28, and one score $x$ is unknown. The mean is 20.2.

| Student | Score |
| --- | --- |
| S1 | 41 |
| S2 | 44 |
| S3 | 47 |
| S4 | 50 |', 'table', '[{"id":"SPR","text":"13","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=20.2×5=101$.
**Step 2:** Known sum $=88$.
**Step 3:** $x=101-88=13$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 13', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('126f0990-829f-47c2-bd34-7c38c68b38a9', 'What is the missing score $x$?', 'Five test scores: 17, 21, 25, 29, and one score $x$ is unknown. The mean is 21.2.', 'passage', '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$14$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=21.2×5=106$. **Step 2:** $x=14$."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$21$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=21.2×5=106$.
**Step 2:** Known sum $=92$.
**Step 3:** $x=106-92=14$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $14$

**Distractor analysis:**
- **A** ($11$): Pulls the mean down too far.
- **C** ($17$): Too high for the given mean.
- **D** ($21$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('14b0f9ba-18f1-43d0-9b1f-1237d25d09cd', 'What is the missing score $x$?', 'Five test scores: 18, 22, 26, 30, and one score $x$ is unknown. The mean is 22.2.', 'passage', '[{"id":"A","text":"$12$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$15$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=22.2×5=111$. **Step 2:** $x=15$."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$22$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=22.2×5=111$.
**Step 2:** Known sum $=96$.
**Step 3:** $x=111-96=15$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $15$

**Distractor analysis:**
- **A** ($12$): Pulls the mean down too far.
- **C** ($18$): Too high for the given mean.
- **D** ($22$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b718930b-2311-4b6b-857f-af1c959d2806', 'What is the missing score $x$?', 'Five test scores: 19, 23, 27, 31, and one score $x$ is unknown. The mean is 23.2.

| Student | Score |
| --- | --- |
| S1 | 44 |
| S2 | 47 |
| S3 | 50 |
| S4 | 53 |', 'table', '[{"id":"A","text":"$13$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$16$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=23.2×5=116$. **Step 2:** $x=16$."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$23$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=23.2×5=116$.
**Step 2:** Known sum $=100$.
**Step 3:** $x=116-100=16$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $16$

**Distractor analysis:**
- **A** ($13$): Pulls the mean down too far.
- **C** ($19$): Too high for the given mean.
- **D** ($23$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
