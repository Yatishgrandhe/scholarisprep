BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e19020bf-fa79-40b8-8b0f-7e0e48531ddd', 'What is the missing score $x$?', 'Five test scores: 8, 12, 16, 20, and one score $x$ is unknown. The mean is 12.2.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=12.2×5=61$. **Step 2:** $x=5$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=12.2×5=61$.
**Step 2:** Known sum $=56$.
**Step 3:** $x=61-56=5$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($2$): Pulls the mean down too far.
- **C** ($8$): Too high for the given mean.
- **D** ($12$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4ec778ef-ffdc-4e0f-9dd4-8bb690863e7b', 'What is the missing score $x$?', 'Five test scores: 9, 13, 17, 21, and one score $x$ is unknown. The mean is 13.2.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=13.2×5=66$. **Step 2:** $x=6$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=13.2×5=66$.
**Step 2:** Known sum $=60$.
**Step 3:** $x=66-60=6$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($3$): Pulls the mean down too far.
- **C** ($9$): Too high for the given mean.
- **D** ($13$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3ea823c8-cb9a-41f3-a001-a9620209e762', 'What is the missing score $x$?', 'Five test scores: 10, 14, 18, 22, and one score $x$ is unknown. The mean is 14.2.

| Student | Score |
| --- | --- |
| S1 | 15 |
| S2 | 18 |
| S3 | 21 |
| S4 | 24 |', 'table', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=14.2×5=71$. **Step 2:** $x=7$."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=14.2×5=71$.
**Step 2:** Known sum $=64$.
**Step 3:** $x=71-64=7$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($4$): Pulls the mean down too far.
- **C** ($10$): Too high for the given mean.
- **D** ($14$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('75106155-0264-47fe-b346-96062192c858', 'What is the missing score $x$?', 'Five test scores: 11, 15, 19, 23, and one score $x$ is unknown. The mean is 15.2.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=15.2×5=76$. **Step 2:** $x=8$."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=15.2×5=76$.
**Step 2:** Known sum $=68$.
**Step 3:** $x=76-68=8$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($5$): Pulls the mean down too far.
- **C** ($11$): Too high for the given mean.
- **D** ($15$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e449111a-1455-429f-9f1b-5ea4e4be8a31', 'What is the missing score $x$?', 'Five test scores: 12, 16, 20, 24, and one score $x$ is unknown. The mean is 16.2.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$9$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=16.2×5=81$. **Step 2:** $x=9$."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=16.2×5=81$.
**Step 2:** Known sum $=72$.
**Step 3:** $x=81-72=9$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $9$

**Distractor analysis:**
- **A** ($6$): Pulls the mean down too far.
- **C** ($12$): Too high for the given mean.
- **D** ($16$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c6e1b00-6ac9-497c-8fca-60c9a8a827bf', 'What is the missing score $x$?', 'Five test scores: 13, 17, 21, 25, and one score $x$ is unknown. The mean is 17.2.

| Student | Score |
| --- | --- |
| S1 | 18 |
| S2 | 21 |
| S3 | 24 |
| S4 | 27 |', 'table', '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$10$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=17.2×5=86$. **Step 2:** $x=10$."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=17.2×5=86$.
**Step 2:** Known sum $=76$.
**Step 3:** $x=86-76=10$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $10$

**Distractor analysis:**
- **A** ($7$): Pulls the mean down too far.
- **C** ($13$): Too high for the given mean.
- **D** ($17$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d0cf24dd-cb7b-4acc-904f-641316898d74', 'What is the missing score $x$?', 'Five test scores: 14, 18, 22, 26, and one score $x$ is unknown. The mean is 18.2.', 'passage', '[{"id":"A","text":"$8$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$11$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=18.2×5=91$. **Step 2:** $x=11$."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=18.2×5=91$.
**Step 2:** Known sum $=80$.
**Step 3:** $x=91-80=11$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $11$

**Distractor analysis:**
- **A** ($8$): Pulls the mean down too far.
- **C** ($14$): Too high for the given mean.
- **D** ($18$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('710ab3a2-1181-4ed2-8fde-3c41c1660c78', 'What is the missing score $x$?', 'Five test scores: 15, 19, 23, 27, and one score $x$ is unknown. The mean is 19.2.', 'passage', '[{"id":"A","text":"$9$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$12$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=19.2×5=96$. **Step 2:** $x=12$."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$19$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=19.2×5=96$.
**Step 2:** Known sum $=84$.
**Step 3:** $x=96-84=12$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $12$

**Distractor analysis:**
- **A** ($9$): Pulls the mean down too far.
- **C** ($15$): Too high for the given mean.
- **D** ($19$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3ce8b67b-9cd6-4c99-846f-b7a49ce35132', 'What is the missing score $x$?', 'Five test scores: 16, 20, 24, 28, and one score $x$ is unknown. The mean is 20.2.

| Student | Score |
| --- | --- |
| S1 | 21 |
| S2 | 24 |
| S3 | 27 |
| S4 | 30 |', 'table', '[{"id":"A","text":"$10$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$13$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=20.2×5=101$. **Step 2:** $x=13$."},{"id":"C","text":"$16$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$20$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=20.2×5=101$.
**Step 2:** Known sum $=88$.
**Step 3:** $x=101-88=13$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $13$

**Distractor analysis:**
- **A** ($10$): Pulls the mean down too far.
- **C** ($16$): Too high for the given mean.
- **D** ($20$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59bf9c2e-9e5b-4af2-836c-c947380e2e0a', 'What is the missing score $x$?', 'Five test scores: 17, 21, 25, 29, and one score $x$ is unknown. The mean is 21.2.', 'passage', '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$14$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=21.2×5=106$. **Step 2:** $x=14$."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$21$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=21.2×5=106$.
**Step 2:** Known sum $=92$.
**Step 3:** $x=106-92=14$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $14$

**Distractor analysis:**
- **A** ($11$): Pulls the mean down too far.
- **C** ($17$): Too high for the given mean.
- **D** ($21$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('16a107c8-601d-4c8d-8faa-684597e1a5f7', 'What is the missing score $x$?', 'Five test scores: 18, 22, 26, 30, and one score $x$ is unknown. The mean is 22.2.', 'passage', '[{"id":"A","text":"$12$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$15$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=22.2×5=111$. **Step 2:** $x=15$."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$22$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=22.2×5=111$.
**Step 2:** Known sum $=96$.
**Step 3:** $x=111-96=15$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $15$

**Distractor analysis:**
- **A** ($12$): Pulls the mean down too far.
- **C** ($18$): Too high for the given mean.
- **D** ($22$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f9a4e7b0-86e6-45fd-bf74-2804b07c0ced', 'What is the missing score $x$?', 'Five test scores: 19, 23, 27, 31, and one score $x$ is unknown. The mean is 23.2.

| Student | Score |
| --- | --- |
| S1 | 24 |
| S2 | 27 |
| S3 | 30 |
| S4 | 33 |', 'table', '[{"id":"A","text":"$13$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$16$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=23.2×5=116$. **Step 2:** $x=16$."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$23$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=23.2×5=116$.
**Step 2:** Known sum $=100$.
**Step 3:** $x=116-100=16$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $16$

**Distractor analysis:**
- **A** ($13$): Pulls the mean down too far.
- **C** ($19$): Too high for the given mean.
- **D** ($23$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
