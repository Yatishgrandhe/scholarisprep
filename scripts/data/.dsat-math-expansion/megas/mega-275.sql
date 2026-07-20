BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6f7d8fe1-1729-49cd-a5f2-570afc80e377', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 56, 60, 64, 68, and one score $x$ is unknown. The mean is 60.2.', 'passage', '[{"id":"SPR","text":"53","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=60.2×5=301$.
**Step 2:** Known sum $=248$.
**Step 3:** $x=301-248=53$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 53', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('792e2fa9-d863-4cd6-8f60-6a9722be2b24', 'What is the missing score $x$?', 'Five test scores: 57, 61, 65, 69, and one score $x$ is unknown. The mean is 61.2.', 'passage', '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$54$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=61.2×5=306$. **Step 2:** $x=54$."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$61$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=61.2×5=306$.
**Step 2:** Known sum $=252$.
**Step 3:** $x=306-252=54$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $54$

**Distractor analysis:**
- **A** ($51$): Pulls the mean down too far.
- **C** ($57$): Too high for the given mean.
- **D** ($61$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('03df66c0-0b73-4f3a-9692-02ad3046665e', 'What is the missing score $x$?', 'Five test scores: 58, 62, 66, 70, and one score $x$ is unknown. The mean is 62.2.

| Student | Score |
| --- | --- |
| S1 | 23 |
| S2 | 26 |
| S3 | 29 |
| S4 | 32 |', 'table', '[{"id":"A","text":"$52$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$55$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=62.2×5=311$. **Step 2:** $x=55$."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$62$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=62.2×5=311$.
**Step 2:** Known sum $=256$.
**Step 3:** $x=311-256=55$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $55$

**Distractor analysis:**
- **A** ($52$): Pulls the mean down too far.
- **C** ($58$): Too high for the given mean.
- **D** ($62$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('220f13bc-d38c-4c06-a9ab-90c36258e10d', 'What is the missing score $x$?', 'Five test scores: 59, 63, 67, 71, and one score $x$ is unknown. The mean is 63.2.', 'passage', '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$56$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=63.2×5=316$. **Step 2:** $x=56$."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$63$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=63.2×5=316$.
**Step 2:** Known sum $=260$.
**Step 3:** $x=316-260=56$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $56$

**Distractor analysis:**
- **A** ($53$): Pulls the mean down too far.
- **C** ($59$): Too high for the given mean.
- **D** ($63$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('34da8030-a694-43b5-bfd3-6a01728ae18b', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 60, 64, 68, 72, and one score $x$ is unknown. The mean is 64.2.', 'passage', '[{"id":"SPR","text":"57","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=64.2×5=321$.
**Step 2:** Known sum $=264$.
**Step 3:** $x=321-264=57$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 57', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('774e35be-6618-44ee-aa61-79690720668d', 'What is the missing score $x$?', 'Five test scores: 61, 65, 69, 73, and one score $x$ is unknown. The mean is 65.2.

| Student | Score |
| --- | --- |
| S1 | 26 |
| S2 | 29 |
| S3 | 32 |
| S4 | 35 |', 'table', '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$58$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=65.2×5=326$. **Step 2:** $x=58$."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$65$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=65.2×5=326$.
**Step 2:** Known sum $=268$.
**Step 3:** $x=326-268=58$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $58$

**Distractor analysis:**
- **A** ($55$): Pulls the mean down too far.
- **C** ($61$): Too high for the given mean.
- **D** ($65$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fb2a945f-cf10-4439-ba2c-5f2b670fea59', 'What is the missing score $x$?', 'Five test scores: 62, 66, 70, 74, and one score $x$ is unknown. The mean is 66.2.', 'passage', '[{"id":"A","text":"$56$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$59$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=66.2×5=331$. **Step 2:** $x=59$."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$66$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=66.2×5=331$.
**Step 2:** Known sum $=272$.
**Step 3:** $x=331-272=59$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $59$

**Distractor analysis:**
- **A** ($56$): Pulls the mean down too far.
- **C** ($62$): Too high for the given mean.
- **D** ($66$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('53fcb1ae-b1aa-4e06-99c6-fc295ad3dadf', 'What is the missing score $x$?', 'Five test scores: 63, 67, 71, 75, and one score $x$ is unknown. The mean is 67.2.', 'passage', '[{"id":"A","text":"$57$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$60$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=67.2×5=336$. **Step 2:** $x=60$."},{"id":"C","text":"$63$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$67$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=67.2×5=336$.
**Step 2:** Known sum $=276$.
**Step 3:** $x=336-276=60$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $60$

**Distractor analysis:**
- **A** ($57$): Pulls the mean down too far.
- **C** ($63$): Too high for the given mean.
- **D** ($67$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5cd3fb49-9176-40c3-96b6-6d35ddf01a84', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 64, 68, 72, 76, and one score $x$ is unknown. The mean is 68.2.

| Student | Score |
| --- | --- |
| S1 | 29 |
| S2 | 32 |
| S3 | 35 |
| S4 | 38 |', 'table', '[{"id":"SPR","text":"61","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=68.2×5=341$.
**Step 2:** Known sum $=280$.
**Step 3:** $x=341-280=61$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 61', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f8744745-afa9-4b17-8d76-127b4b7e859f', 'What is the missing score $x$?', 'Five test scores: 65, 69, 73, 77, and one score $x$ is unknown. The mean is 69.2.', 'passage', '[{"id":"A","text":"$59$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$62$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=69.2×5=346$. **Step 2:** $x=62$."},{"id":"C","text":"$65$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$69$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=69.2×5=346$.
**Step 2:** Known sum $=284$.
**Step 3:** $x=346-284=62$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $62$

**Distractor analysis:**
- **A** ($59$): Pulls the mean down too far.
- **C** ($65$): Too high for the given mean.
- **D** ($69$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('724131a3-cc91-4b84-80d9-95fc77eae638', 'What is the missing score $x$?', 'Five test scores: 66, 70, 74, 78, and one score $x$ is unknown. The mean is 70.2.', 'passage', '[{"id":"A","text":"$60$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$63$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=70.2×5=351$. **Step 2:** $x=63$."},{"id":"C","text":"$66$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$70$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=70.2×5=351$.
**Step 2:** Known sum $=288$.
**Step 3:** $x=351-288=63$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $63$

**Distractor analysis:**
- **A** ($60$): Pulls the mean down too far.
- **C** ($66$): Too high for the given mean.
- **D** ($70$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0e39cc79-d33a-408b-895d-b3364e8d8b02', 'What is the missing score $x$?', 'Five test scores: 7, 11, 15, 19, and one score $x$ is unknown. The mean is 11.2.

| Student | Score |
| --- | --- |
| S1 | 32 |
| S2 | 35 |
| S3 | 38 |
| S4 | 41 |', 'table', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=11.2×5=56$. **Step 2:** $x=4$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=11.2×5=56$.
**Step 2:** Known sum $=52$.
**Step 3:** $x=56-52=4$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($1$): Pulls the mean down too far.
- **C** ($7$): Too high for the given mean.
- **D** ($11$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
