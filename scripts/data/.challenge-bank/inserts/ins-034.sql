BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('024965bf-10bd-400c-99d8-0355c4490483', 'What is the missing score $x$?', 'Five test scores: 15, 19, 23, 27, and one score $x$ is unknown. The mean is 19.2.', 'passage', '[{"id":"A","text":"$9$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$12$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=19.2×5=96$. **Step 2:** $x=12$."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$19$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=19.2×5=96$.
**Step 2:** Known sum $=84$.
**Step 3:** $x=96-84=12$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $12$

**Distractor analysis:**
- **A** ($9$): Pulls the mean down too far.
- **C** ($15$): Too high for the given mean.
- **D** ($19$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('df702c2f-bd0d-4b26-8ba6-e71553bb7c98', 'What is the missing score $x$?', 'Five test scores: 16, 20, 24, 28, and one score $x$ is unknown. The mean is 20.2.

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
- **D** ($20$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('94653e15-15bd-42d6-bb13-b657746c033a', 'What is the missing score $x$?', 'Five test scores: 17, 21, 25, 29, and one score $x$ is unknown. The mean is 21.2.', 'passage', '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$14$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=21.2×5=106$. **Step 2:** $x=14$."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$21$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=21.2×5=106$.
**Step 2:** Known sum $=92$.
**Step 3:** $x=106-92=14$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $14$

**Distractor analysis:**
- **A** ($11$): Pulls the mean down too far.
- **C** ($17$): Too high for the given mean.
- **D** ($21$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ad85eeb4-1b9a-4727-9e5e-28c89cef8d10', 'What is the missing score $x$?', 'Five test scores: 18, 22, 26, 30, and one score $x$ is unknown. The mean is 22.2.', 'passage', '[{"id":"A","text":"$12$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$15$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=22.2×5=111$. **Step 2:** $x=15$."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$22$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=22.2×5=111$.
**Step 2:** Known sum $=96$.
**Step 3:** $x=111-96=15$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $15$

**Distractor analysis:**
- **A** ($12$): Pulls the mean down too far.
- **C** ($18$): Too high for the given mean.
- **D** ($22$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d44139cb-bf9e-437d-b195-c74df5d9e6c1', 'What is the missing score $x$?', 'Five test scores: 19, 23, 27, 31, and one score $x$ is unknown. The mean is 23.2.

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
- **D** ($23$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7d8a9183-be73-4bdc-801b-98b0c0b6bf5c', 'What is the missing score $x$?', 'Five test scores: 20, 24, 28, 32, and one score $x$ is unknown. The mean is 24.2.', 'passage', '[{"id":"A","text":"$14$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$17$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=24.2×5=121$. **Step 2:** $x=17$."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$24$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=24.2×5=121$.
**Step 2:** Known sum $=104$.
**Step 3:** $x=121-104=17$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $17$

**Distractor analysis:**
- **A** ($14$): Pulls the mean down too far.
- **C** ($20$): Too high for the given mean.
- **D** ($24$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('48277e48-4766-4209-8a10-6f72ca32fc78', 'What is the missing score $x$?', 'Five test scores: 21, 25, 29, 33, and one score $x$ is unknown. The mean is 25.2.', 'passage', '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$18$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=25.2×5=126$. **Step 2:** $x=18$."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$25$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=25.2×5=126$.
**Step 2:** Known sum $=108$.
**Step 3:** $x=126-108=18$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $18$

**Distractor analysis:**
- **A** ($15$): Pulls the mean down too far.
- **C** ($21$): Too high for the given mean.
- **D** ($25$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('53eeb390-c384-4f7c-9f70-f25ec1a17f35', 'What is the missing score $x$?', 'Five test scores: 22, 26, 30, 34, and one score $x$ is unknown. The mean is 26.2.

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
- **D** ($26$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('54c4f300-d62c-4ed9-af48-87ee660f3a15', 'What is the missing score $x$?', 'Five test scores: 23, 27, 31, 35, and one score $x$ is unknown. The mean is 27.2.', 'passage', '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$20$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=27.2×5=136$. **Step 2:** $x=20$."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$27$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=27.2×5=136$.
**Step 2:** Known sum $=116$.
**Step 3:** $x=136-116=20$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $20$

**Distractor analysis:**
- **A** ($17$): Pulls the mean down too far.
- **C** ($23$): Too high for the given mean.
- **D** ($27$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7a4b02da-19e9-4eef-a572-8312b420caf5', 'What is the missing score $x$?', 'Five test scores: 24, 28, 32, 36, and one score $x$ is unknown. The mean is 28.2.', 'passage', '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$21$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=28.2×5=141$. **Step 2:** $x=21$."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$28$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=28.2×5=141$.
**Step 2:** Known sum $=120$.
**Step 3:** $x=141-120=21$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $21$

**Distractor analysis:**
- **A** ($18$): Pulls the mean down too far.
- **C** ($24$): Too high for the given mean.
- **D** ($28$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b411c89d-3aec-4d81-894f-9f85a2ced3e3', 'What is the missing score $x$?', 'Five test scores: 25, 29, 33, 37, and one score $x$ is unknown. The mean is 29.2.

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
- **D** ($29$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7fc58991-7f83-45b0-ad94-51f615844573', 'What is the missing score $x$?', 'Five test scores: 26, 30, 34, 38, and one score $x$ is unknown. The mean is 30.2.', 'passage', '[{"id":"A","text":"$20$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$23$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=30.2×5=151$. **Step 2:** $x=23$."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$30$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=30.2×5=151$.
**Step 2:** Known sum $=128$.
**Step 3:** $x=151-128=23$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $23$

**Distractor analysis:**
- **A** ($20$): Pulls the mean down too far.
- **C** ($26$): Too high for the given mean.
- **D** ($30$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('77bd2052-06f9-4f59-b9b1-2ed98270a0ee', 'What is the missing score $x$?', 'Five test scores: 27, 31, 35, 39, and one score $x$ is unknown. The mean is 31.2.', 'passage', '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$24$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=31.2×5=156$. **Step 2:** $x=24$."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$31$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=31.2×5=156$.
**Step 2:** Known sum $=132$.
**Step 3:** $x=156-132=24$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $24$

**Distractor analysis:**
- **A** ($21$): Pulls the mean down too far.
- **C** ($27$): Too high for the given mean.
- **D** ($31$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2abdb7f3-01bd-4ff4-b291-580438d325e3', 'What is the missing score $x$?', 'Five test scores: 28, 32, 36, 40, and one score $x$ is unknown. The mean is 32.2.

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
- **D** ($32$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('79dc4e82-a0bd-4228-87ae-47d893c91c64', 'What is the missing score $x$?', 'Five test scores: 29, 33, 37, 41, and one score $x$ is unknown. The mean is 33.2.', 'passage', '[{"id":"A","text":"$23$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$26$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=33.2×5=166$. **Step 2:** $x=26$."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$33$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=33.2×5=166$.
**Step 2:** Known sum $=140$.
**Step 3:** $x=166-140=26$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $26$

**Distractor analysis:**
- **A** ($23$): Pulls the mean down too far.
- **C** ($29$): Too high for the given mean.
- **D** ($33$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0fd902fd-6729-47b2-a653-2ca75a405abe', 'What is the missing score $x$?', 'Five test scores: 30, 34, 38, 42, and one score $x$ is unknown. The mean is 34.2.', 'passage', '[{"id":"A","text":"$24$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$27$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=34.2×5=171$. **Step 2:** $x=27$."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$34$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=34.2×5=171$.
**Step 2:** Known sum $=144$.
**Step 3:** $x=171-144=27$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $27$

**Distractor analysis:**
- **A** ($24$): Pulls the mean down too far.
- **C** ($30$): Too high for the given mean.
- **D** ($34$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5586f1bc-84c9-43f1-9a21-68365cf9b4c1', 'What is the missing score $x$?', 'Five test scores: 31, 35, 39, 43, and one score $x$ is unknown. The mean is 35.2.

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
- **D** ($35$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('78fb6a06-627b-4123-9469-43bae76c33dc', 'What is the missing score $x$?', 'Five test scores: 32, 36, 40, 44, and one score $x$ is unknown. The mean is 36.2.', 'passage', '[{"id":"A","text":"$26$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$29$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=36.2×5=181$. **Step 2:** $x=29$."},{"id":"C","text":"$32$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$36$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=36.2×5=181$.
**Step 2:** Known sum $=152$.
**Step 3:** $x=181-152=29$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $29$

**Distractor analysis:**
- **A** ($26$): Pulls the mean down too far.
- **C** ($32$): Too high for the given mean.
- **D** ($36$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7c43ac42-6e62-4d4e-b0ac-2526f3f8a251', 'What is the missing score $x$?', 'Five test scores: 33, 37, 41, 45, and one score $x$ is unknown. The mean is 37.2.', 'passage', '[{"id":"A","text":"$27$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$30$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=37.2×5=186$. **Step 2:** $x=30$."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$37$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=37.2×5=186$.
**Step 2:** Known sum $=156$.
**Step 3:** $x=186-156=30$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $30$

**Distractor analysis:**
- **A** ($27$): Pulls the mean down too far.
- **C** ($33$): Too high for the given mean.
- **D** ($37$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d4d0dd50-d1ec-4c77-bcb2-6283bedd929a', 'What is the missing score $x$?', 'Five test scores: 34, 38, 42, 46, and one score $x$ is unknown. The mean is 38.2.

| Student | Score |
| --- | --- |
| S1 | 39 |
| S2 | 42 |
| S3 | 45 |
| S4 | 48 |', 'table', '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$31$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=38.2×5=191$. **Step 2:** $x=31$."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$38$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=38.2×5=191$.
**Step 2:** Known sum $=160$.
**Step 3:** $x=191-160=31$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $31$

**Distractor analysis:**
- **A** ($28$): Pulls the mean down too far.
- **C** ($34$): Too high for the given mean.
- **D** ($38$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e84a1b20-9a1a-48b4-b025-90cbbc305722', 'What is the missing score $x$?', 'Five test scores: 35, 39, 43, 47, and one score $x$ is unknown. The mean is 39.2.', 'passage', '[{"id":"A","text":"$29$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$32$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=39.2×5=196$. **Step 2:** $x=32$."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$39$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=39.2×5=196$.
**Step 2:** Known sum $=164$.
**Step 3:** $x=196-164=32$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $32$

**Distractor analysis:**
- **A** ($29$): Pulls the mean down too far.
- **C** ($35$): Too high for the given mean.
- **D** ($39$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('eb458289-1ac2-4b8e-a8d2-c7877fd70b20', 'What is the missing score $x$?', 'Five test scores: 36, 40, 44, 48, and one score $x$ is unknown. The mean is 40.2.', 'passage', '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$33$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=40.2×5=201$. **Step 2:** $x=33$."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$40$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=40.2×5=201$.
**Step 2:** Known sum $=168$.
**Step 3:** $x=201-168=33$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $33$

**Distractor analysis:**
- **A** ($30$): Pulls the mean down too far.
- **C** ($36$): Too high for the given mean.
- **D** ($40$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('029f83a1-9088-4069-86d3-f3235a45d3ff', 'What is the missing score $x$?', 'Five test scores: 37, 41, 45, 49, and one score $x$ is unknown. The mean is 41.2.

| Student | Score |
| --- | --- |
| S1 | 42 |
| S2 | 45 |
| S3 | 48 |
| S4 | 51 |', 'table', '[{"id":"A","text":"$31$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$34$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=41.2×5=206$. **Step 2:** $x=34$."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$41$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=41.2×5=206$.
**Step 2:** Known sum $=172$.
**Step 3:** $x=206-172=34$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $34$

**Distractor analysis:**
- **A** ($31$): Pulls the mean down too far.
- **C** ($37$): Too high for the given mean.
- **D** ($41$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('56baf4a9-e0fb-4996-af04-adfc5d739c58', 'What is the missing score $x$?', 'Five test scores: 38, 42, 46, 50, and one score $x$ is unknown. The mean is 42.2.', 'passage', '[{"id":"A","text":"$32$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$35$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=42.2×5=211$. **Step 2:** $x=35$."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$42$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=42.2×5=211$.
**Step 2:** Known sum $=176$.
**Step 3:** $x=211-176=35$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $35$

**Distractor analysis:**
- **A** ($32$): Pulls the mean down too far.
- **C** ($38$): Too high for the given mean.
- **D** ($42$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fc9a9755-eec1-4276-87b1-44b9c8de9330', 'What is the missing score $x$?', 'Five test scores: 39, 43, 47, 51, and one score $x$ is unknown. The mean is 43.2.', 'passage', '[{"id":"A","text":"$33$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$36$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=43.2×5=216$. **Step 2:** $x=36$."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$43$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=43.2×5=216$.
**Step 2:** Known sum $=180$.
**Step 3:** $x=216-180=36$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $36$

**Distractor analysis:**
- **A** ($33$): Pulls the mean down too far.
- **C** ($39$): Too high for the given mean.
- **D** ($43$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b673c43f-ea58-4ed0-94bd-b7bcf3e52ab2', 'What is the missing score $x$?', 'Five test scores: 40, 44, 48, 52, and one score $x$ is unknown. The mean is 44.2.

| Student | Score |
| --- | --- |
| S1 | 45 |
| S2 | 48 |
| S3 | 51 |
| S4 | 54 |', 'table', '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$37$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=44.2×5=221$. **Step 2:** $x=37$."},{"id":"C","text":"$40$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$44$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=44.2×5=221$.
**Step 2:** Known sum $=184$.
**Step 3:** $x=221-184=37$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $37$

**Distractor analysis:**
- **A** ($34$): Pulls the mean down too far.
- **C** ($40$): Too high for the given mean.
- **D** ($44$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dc10c2ac-199f-41a6-a616-5a63f0475bc1', 'What is the missing score $x$?', 'Five test scores: 41, 45, 49, 53, and one score $x$ is unknown. The mean is 45.2.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$38$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=45.2×5=226$. **Step 2:** $x=38$."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=45.2×5=226$.
**Step 2:** Known sum $=188$.
**Step 3:** $x=226-188=38$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $38$

**Distractor analysis:**
- **A** ($35$): Pulls the mean down too far.
- **C** ($41$): Too high for the given mean.
- **D** ($45$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cc6b9af8-9b45-452d-8c1a-0a377cec9939', 'What is the missing score $x$?', 'Five test scores: 42, 46, 50, 54, and one score $x$ is unknown. The mean is 46.2.', 'passage', '[{"id":"A","text":"$36$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$39$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=46.2×5=231$. **Step 2:** $x=39$."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$46$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=46.2×5=231$.
**Step 2:** Known sum $=192$.
**Step 3:** $x=231-192=39$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $39$

**Distractor analysis:**
- **A** ($36$): Pulls the mean down too far.
- **C** ($42$): Too high for the given mean.
- **D** ($46$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0fd042eb-de6f-44e8-a5a9-cce438d80bf3', 'What is the missing score $x$?', 'Five test scores: 43, 47, 51, 55, and one score $x$ is unknown. The mean is 47.2.

| Student | Score |
| --- | --- |
| S1 | 48 |
| S2 | 51 |
| S3 | 54 |
| S4 | 57 |', 'table', '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$40$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=47.2×5=236$. **Step 2:** $x=40$."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$47$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=47.2×5=236$.
**Step 2:** Known sum $=196$.
**Step 3:** $x=236-196=40$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $40$

**Distractor analysis:**
- **A** ($37$): Pulls the mean down too far.
- **C** ($43$): Too high for the given mean.
- **D** ($47$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a7039c24-a698-44aa-b31a-cd9c67f927eb', 'What is the missing score $x$?', 'Five test scores: 44, 48, 52, 56, and one score $x$ is unknown. The mean is 48.2.', 'passage', '[{"id":"A","text":"$38$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$41$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=48.2×5=241$. **Step 2:** $x=41$."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$48$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=48.2×5=241$.
**Step 2:** Known sum $=200$.
**Step 3:** $x=241-200=41$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $41$

**Distractor analysis:**
- **A** ($38$): Pulls the mean down too far.
- **C** ($44$): Too high for the given mean.
- **D** ($48$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3d28a70f-0660-49fe-8352-cccc7f7c658b', 'What is the missing score $x$?', 'Five test scores: 45, 49, 53, 57, and one score $x$ is unknown. The mean is 49.2.', 'passage', '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$42$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=49.2×5=246$. **Step 2:** $x=42$."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$49$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=49.2×5=246$.
**Step 2:** Known sum $=204$.
**Step 3:** $x=246-204=42$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $42$

**Distractor analysis:**
- **A** ($39$): Pulls the mean down too far.
- **C** ($45$): Too high for the given mean.
- **D** ($49$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f61f46e0-10b9-4727-9a2a-64181deec298', 'What is the missing score $x$?', 'Five test scores: 46, 50, 54, 58, and one score $x$ is unknown. The mean is 50.2.

| Student | Score |
| --- | --- |
| S1 | 51 |
| S2 | 54 |
| S3 | 57 |
| S4 | 60 |', 'table', '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$43$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=50.2×5=251$. **Step 2:** $x=43$."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$50$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=50.2×5=251$.
**Step 2:** Known sum $=208$.
**Step 3:** $x=251-208=43$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $43$

**Distractor analysis:**
- **A** ($40$): Pulls the mean down too far.
- **C** ($46$): Too high for the given mean.
- **D** ($50$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c5bdb11c-e45d-4821-9616-0a32398416e8', 'What is the missing score $x$?', 'Five test scores: 47, 51, 55, 59, and one score $x$ is unknown. The mean is 51.2.', 'passage', '[{"id":"A","text":"$41$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$44$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=51.2×5=256$. **Step 2:** $x=44$."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$51$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=51.2×5=256$.
**Step 2:** Known sum $=212$.
**Step 3:** $x=256-212=44$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $44$

**Distractor analysis:**
- **A** ($41$): Pulls the mean down too far.
- **C** ($47$): Too high for the given mean.
- **D** ($51$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ad3b8322-7d76-4671-b285-7da08fada518', 'What is the missing score $x$?', 'Five test scores: 48, 52, 56, 60, and one score $x$ is unknown. The mean is 52.2.', 'passage', '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$45$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=52.2×5=261$. **Step 2:** $x=45$."},{"id":"C","text":"$48$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$52$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=52.2×5=261$.
**Step 2:** Known sum $=216$.
**Step 3:** $x=261-216=45$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $45$

**Distractor analysis:**
- **A** ($42$): Pulls the mean down too far.
- **C** ($48$): Too high for the given mean.
- **D** ($52$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6afa23c1-f7d2-4808-af86-8a2bacdfd35d', 'What is the missing score $x$?', 'Five test scores: 49, 53, 57, 61, and one score $x$ is unknown. The mean is 53.2.

| Student | Score |
| --- | --- |
| S1 | 14 |
| S2 | 17 |
| S3 | 20 |
| S4 | 23 |', 'table', '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$46$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=53.2×5=266$. **Step 2:** $x=46$."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$53$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=53.2×5=266$.
**Step 2:** Known sum $=220$.
**Step 3:** $x=266-220=46$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $46$

**Distractor analysis:**
- **A** ($43$): Pulls the mean down too far.
- **C** ($49$): Too high for the given mean.
- **D** ($53$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4d24e0e0-b07a-44ec-bf1a-eb7e0748e09b', 'What is the missing score $x$?', 'Five test scores: 50, 54, 58, 62, and one score $x$ is unknown. The mean is 54.2.', 'passage', '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$47$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=54.2×5=271$. **Step 2:** $x=47$."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$54$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=54.2×5=271$.
**Step 2:** Known sum $=224$.
**Step 3:** $x=271-224=47$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $47$

**Distractor analysis:**
- **A** ($44$): Pulls the mean down too far.
- **C** ($50$): Too high for the given mean.
- **D** ($54$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('3b495ec7-caad-435d-8896-af2475078695', 'What is the missing score $x$?', 'Five test scores: 51, 55, 59, 63, and one score $x$ is unknown. The mean is 55.2.', 'passage', '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$48$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=55.2×5=276$. **Step 2:** $x=48$."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$55$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=55.2×5=276$.
**Step 2:** Known sum $=228$.
**Step 3:** $x=276-228=48$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $48$

**Distractor analysis:**
- **A** ($45$): Pulls the mean down too far.
- **C** ($51$): Too high for the given mean.
- **D** ($55$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c24629d6-03a6-45c2-9277-48651b5f16b7', 'What is the missing score $x$?', 'Five test scores: 52, 56, 60, 64, and one score $x$ is unknown. The mean is 56.2.

| Student | Score |
| --- | --- |
| S1 | 17 |
| S2 | 20 |
| S3 | 23 |
| S4 | 26 |', 'table', '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$49$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=56.2×5=281$. **Step 2:** $x=49$."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$56$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=56.2×5=281$.
**Step 2:** Known sum $=232$.
**Step 3:** $x=281-232=49$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $49$

**Distractor analysis:**
- **A** ($46$): Pulls the mean down too far.
- **C** ($52$): Too high for the given mean.
- **D** ($56$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('25d2aa01-4491-44ec-86f3-68f492fe2669', 'What is the missing score $x$?', 'Five test scores: 53, 57, 61, 65, and one score $x$ is unknown. The mean is 57.2.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$50$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=57.2×5=286$. **Step 2:** $x=50$."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$57$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=57.2×5=286$.
**Step 2:** Known sum $=236$.
**Step 3:** $x=286-236=50$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $50$

**Distractor analysis:**
- **A** ($47$): Pulls the mean down too far.
- **C** ($53$): Too high for the given mean.
- **D** ($57$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c3852237-389a-40dd-9d20-8558c29bef2a', 'What is the missing score $x$?', 'Five test scores: 54, 58, 62, 66, and one score $x$ is unknown. The mean is 58.2.', 'passage', '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$51$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=58.2×5=291$. **Step 2:** $x=51$."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$58$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=58.2×5=291$.
**Step 2:** Known sum $=240$.
**Step 3:** $x=291-240=51$.
**Step 4:** Verify mean.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $51$

**Distractor analysis:**
- **A** ($48$): Pulls the mean down too far.
- **C** ($54$): Too high for the given mean.
- **D** ($58$): Confuses mean with the missing value.', NULL, 'Algebra', NULL, 'math', NULL, 'OIA', 'OIA', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
