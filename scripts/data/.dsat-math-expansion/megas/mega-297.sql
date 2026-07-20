BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ae6d0611-b3c0-4068-a2b5-1705c01b651a', 'What is the missing score $x$?', 'Five test scores: 20, 24, 28, 32, and one score $x$ is unknown. The mean is 24.2.', 'passage', '[{"id":"A","text":"$14$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$17$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=24.2×5=121$. **Step 2:** $x=17$."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$24$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=24.2×5=121$.
**Step 2:** Known sum $=104$.
**Step 3:** $x=121-104=17$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $17$

**Distractor analysis:**
- **A** ($14$): Pulls the mean down too far.
- **C** ($20$): Too high for the given mean.
- **D** ($24$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('12b693e2-1204-461d-a06c-666f5d8c747c', 'What is the missing score $x$?', 'Five test scores: 21, 25, 29, 33, and one score $x$ is unknown. The mean is 25.2.', 'passage', '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$18$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=25.2×5=126$. **Step 2:** $x=18$."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$25$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=25.2×5=126$.
**Step 2:** Known sum $=108$.
**Step 3:** $x=126-108=18$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $18$

**Distractor analysis:**
- **A** ($15$): Pulls the mean down too far.
- **C** ($21$): Too high for the given mean.
- **D** ($25$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('912cb802-7cdf-4fa5-a2e4-b4822420299f', 'What is the missing score $x$?', 'Five test scores: 22, 26, 30, 34, and one score $x$ is unknown. The mean is 26.2.

| Student | Score |
| --- | --- |
| S1 | 27 |
| S2 | 30 |
| S3 | 33 |
| S4 | 36 |', 'table', '[{"id":"A","text":"$16$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$19$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=26.2×5=131$. **Step 2:** $x=19$."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$26$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=26.2×5=131$.
**Step 2:** Known sum $=112$.
**Step 3:** $x=131-112=19$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $19$

**Distractor analysis:**
- **A** ($16$): Pulls the mean down too far.
- **C** ($22$): Too high for the given mean.
- **D** ($26$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a21d1c31-07a3-4ecc-a9f1-a0908211adf7', 'What is the missing score $x$?', 'Five test scores: 23, 27, 31, 35, and one score $x$ is unknown. The mean is 27.2.', 'passage', '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$20$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=27.2×5=136$. **Step 2:** $x=20$."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$27$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=27.2×5=136$.
**Step 2:** Known sum $=116$.
**Step 3:** $x=136-116=20$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $20$

**Distractor analysis:**
- **A** ($17$): Pulls the mean down too far.
- **C** ($23$): Too high for the given mean.
- **D** ($27$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e58b42c-1a4f-4025-86ae-f4e1fa61bd96', 'What is the missing score $x$?', 'Five test scores: 24, 28, 32, 36, and one score $x$ is unknown. The mean is 28.2.', 'passage', '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$21$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=28.2×5=141$. **Step 2:** $x=21$."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$28$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=28.2×5=141$.
**Step 2:** Known sum $=120$.
**Step 3:** $x=141-120=21$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $21$

**Distractor analysis:**
- **A** ($18$): Pulls the mean down too far.
- **C** ($24$): Too high for the given mean.
- **D** ($28$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('06358c8e-08e1-4fe3-99ef-cc02fee4178c', 'What is the missing score $x$?', 'Five test scores: 25, 29, 33, 37, and one score $x$ is unknown. The mean is 29.2.

| Student | Score |
| --- | --- |
| S1 | 30 |
| S2 | 33 |
| S3 | 36 |
| S4 | 39 |', 'table', '[{"id":"A","text":"$19$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$22$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=29.2×5=146$. **Step 2:** $x=22$."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$29$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=29.2×5=146$.
**Step 2:** Known sum $=124$.
**Step 3:** $x=146-124=22$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $22$

**Distractor analysis:**
- **A** ($19$): Pulls the mean down too far.
- **C** ($25$): Too high for the given mean.
- **D** ($29$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('16dbdf75-aea0-4c27-bc53-d3b77011f8ab', 'What is the missing score $x$?', 'Five test scores: 26, 30, 34, 38, and one score $x$ is unknown. The mean is 30.2.', 'passage', '[{"id":"A","text":"$20$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$23$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=30.2×5=151$. **Step 2:** $x=23$."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$30$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=30.2×5=151$.
**Step 2:** Known sum $=128$.
**Step 3:** $x=151-128=23$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $23$

**Distractor analysis:**
- **A** ($20$): Pulls the mean down too far.
- **C** ($26$): Too high for the given mean.
- **D** ($30$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('aa25d1de-d586-42c5-b822-6d9979a433e1', 'What is the missing score $x$?', 'Five test scores: 27, 31, 35, 39, and one score $x$ is unknown. The mean is 31.2.', 'passage', '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$24$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=31.2×5=156$. **Step 2:** $x=24$."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$31$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=31.2×5=156$.
**Step 2:** Known sum $=132$.
**Step 3:** $x=156-132=24$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $24$

**Distractor analysis:**
- **A** ($21$): Pulls the mean down too far.
- **C** ($27$): Too high for the given mean.
- **D** ($31$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd1b02b6-7999-45fc-9b71-e1675d4f129e', 'What is the missing score $x$?', 'Five test scores: 28, 32, 36, 40, and one score $x$ is unknown. The mean is 32.2.

| Student | Score |
| --- | --- |
| S1 | 33 |
| S2 | 36 |
| S3 | 39 |
| S4 | 42 |', 'table', '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$25$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=32.2×5=161$. **Step 2:** $x=25$."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$32$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=32.2×5=161$.
**Step 2:** Known sum $=136$.
**Step 3:** $x=161-136=25$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $25$

**Distractor analysis:**
- **A** ($22$): Pulls the mean down too far.
- **C** ($28$): Too high for the given mean.
- **D** ($32$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4d702443-92b2-405b-b323-1df3719d5ffb', 'What is the missing score $x$?', 'Five test scores: 29, 33, 37, 41, and one score $x$ is unknown. The mean is 33.2.', 'passage', '[{"id":"A","text":"$23$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$26$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=33.2×5=166$. **Step 2:** $x=26$."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$33$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=33.2×5=166$.
**Step 2:** Known sum $=140$.
**Step 3:** $x=166-140=26$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $26$

**Distractor analysis:**
- **A** ($23$): Pulls the mean down too far.
- **C** ($29$): Too high for the given mean.
- **D** ($33$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72257caa-cec2-40b5-9dbf-810164ab4ece', 'What is the missing score $x$?', 'Five test scores: 30, 34, 38, 42, and one score $x$ is unknown. The mean is 34.2.', 'passage', '[{"id":"A","text":"$24$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$27$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=34.2×5=171$. **Step 2:** $x=27$."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$34$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=34.2×5=171$.
**Step 2:** Known sum $=144$.
**Step 3:** $x=171-144=27$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $27$

**Distractor analysis:**
- **A** ($24$): Pulls the mean down too far.
- **C** ($30$): Too high for the given mean.
- **D** ($34$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e4dbb52-0384-43c9-a0cf-c3791ea7de3b', 'What is the missing score $x$?', 'Five test scores: 31, 35, 39, 43, and one score $x$ is unknown. The mean is 35.2.

| Student | Score |
| --- | --- |
| S1 | 36 |
| S2 | 39 |
| S3 | 42 |
| S4 | 45 |', 'table', '[{"id":"A","text":"$25$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$28$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=35.2×5=176$. **Step 2:** $x=28$."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$35$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=35.2×5=176$.
**Step 2:** Known sum $=148$.
**Step 3:** $x=176-148=28$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $28$

**Distractor analysis:**
- **A** ($25$): Pulls the mean down too far.
- **C** ($31$): Too high for the given mean.
- **D** ($35$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
