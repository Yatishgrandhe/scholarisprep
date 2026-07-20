BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b20c96e5-1b49-42df-adec-dba5f0690e5e', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 44, 48, 52, 56, and one score $x$ is unknown. The mean is 48.2.', 'passage', '[{"id":"SPR","text":"41","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=48.2×5=241$.
**Step 2:** Known sum $=200$.
**Step 3:** $x=241-200=41$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 41', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f1e43f65-6364-4a70-ba53-1c95b725f29c', 'What is the missing score $x$?', 'Five test scores: 45, 49, 53, 57, and one score $x$ is unknown. The mean is 49.2.', 'passage', '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$42$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=49.2×5=246$. **Step 2:** $x=42$."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$49$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=49.2×5=246$.
**Step 2:** Known sum $=204$.
**Step 3:** $x=246-204=42$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $42$

**Distractor analysis:**
- **A** ($39$): Pulls the mean down too far.
- **C** ($45$): Too high for the given mean.
- **D** ($49$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1cf9e63b-e1ed-40c7-a58b-8c05768cea33', 'What is the missing score $x$?', 'Five test scores: 46, 50, 54, 58, and one score $x$ is unknown. The mean is 50.2.

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

**Step 3 — Answer B.** $43$

**Distractor analysis:**
- **A** ($40$): Pulls the mean down too far.
- **C** ($46$): Too high for the given mean.
- **D** ($50$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d124980b-0779-4067-9775-43b2ca004fcd', 'What is the missing score $x$?', 'Five test scores: 47, 51, 55, 59, and one score $x$ is unknown. The mean is 51.2.', 'passage', '[{"id":"A","text":"$41$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$44$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=51.2×5=256$. **Step 2:** $x=44$."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$51$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=51.2×5=256$.
**Step 2:** Known sum $=212$.
**Step 3:** $x=256-212=44$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $44$

**Distractor analysis:**
- **A** ($41$): Pulls the mean down too far.
- **C** ($47$): Too high for the given mean.
- **D** ($51$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ef888748-1869-4adf-a925-194a1d1c7b09', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 48, 52, 56, 60, and one score $x$ is unknown. The mean is 52.2.', 'passage', '[{"id":"SPR","text":"45","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=52.2×5=261$.
**Step 2:** Known sum $=216$.
**Step 3:** $x=261-216=45$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 45', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('52032440-8e7a-4b98-91e6-05a913224753', 'What is the missing score $x$?', 'Five test scores: 49, 53, 57, 61, and one score $x$ is unknown. The mean is 53.2.

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

**Step 3 — Answer B.** $46$

**Distractor analysis:**
- **A** ($43$): Pulls the mean down too far.
- **C** ($49$): Too high for the given mean.
- **D** ($53$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59f0c08e-89a1-4ef9-af9e-35305142fdcf', 'What is the missing score $x$?', 'Five test scores: 50, 54, 58, 62, and one score $x$ is unknown. The mean is 54.2.', 'passage', '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$47$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=54.2×5=271$. **Step 2:** $x=47$."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$54$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=54.2×5=271$.
**Step 2:** Known sum $=224$.
**Step 3:** $x=271-224=47$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $47$

**Distractor analysis:**
- **A** ($44$): Pulls the mean down too far.
- **C** ($50$): Too high for the given mean.
- **D** ($54$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('09de1621-c7ec-46ab-bced-4a7f3075d8df', 'What is the missing score $x$?', 'Five test scores: 51, 55, 59, 63, and one score $x$ is unknown. The mean is 55.2.', 'passage', '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$48$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=55.2×5=276$. **Step 2:** $x=48$."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$55$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=55.2×5=276$.
**Step 2:** Known sum $=228$.
**Step 3:** $x=276-228=48$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $48$

**Distractor analysis:**
- **A** ($45$): Pulls the mean down too far.
- **C** ($51$): Too high for the given mean.
- **D** ($55$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7343fe22-53ba-460b-8c35-71ba56ea0c50', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 52, 56, 60, 64, and one score $x$ is unknown. The mean is 56.2.

| Student | Score |
| --- | --- |
| S1 | 17 |
| S2 | 20 |
| S3 | 23 |
| S4 | 26 |', 'table', '[{"id":"SPR","text":"49","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=56.2×5=281$.
**Step 2:** Known sum $=232$.
**Step 3:** $x=281-232=49$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 49', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('69e4e316-e51a-4c16-ba8c-289f509aabb3', 'What is the missing score $x$?', 'Five test scores: 53, 57, 61, 65, and one score $x$ is unknown. The mean is 57.2.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$50$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=57.2×5=286$. **Step 2:** $x=50$."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$57$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=57.2×5=286$.
**Step 2:** Known sum $=236$.
**Step 3:** $x=286-236=50$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $50$

**Distractor analysis:**
- **A** ($47$): Pulls the mean down too far.
- **C** ($53$): Too high for the given mean.
- **D** ($57$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a67f5453-cf23-4aa6-aaf0-ef9ed0c87f89', 'What is the missing score $x$?', 'Five test scores: 54, 58, 62, 66, and one score $x$ is unknown. The mean is 58.2.', 'passage', '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$51$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=58.2×5=291$. **Step 2:** $x=51$."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$58$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=58.2×5=291$.
**Step 2:** Known sum $=240$.
**Step 3:** $x=291-240=51$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $51$

**Distractor analysis:**
- **A** ($48$): Pulls the mean down too far.
- **C** ($54$): Too high for the given mean.
- **D** ($58$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a0635241-0b4a-4241-8329-cf1c5fe2875e', 'What is the missing score $x$?', 'Five test scores: 55, 59, 63, 67, and one score $x$ is unknown. The mean is 59.2.

| Student | Score |
| --- | --- |
| S1 | 20 |
| S2 | 23 |
| S3 | 26 |
| S4 | 29 |', 'table', '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$52$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=59.2×5=296$. **Step 2:** $x=52$."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$59$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=59.2×5=296$.
**Step 2:** Known sum $=244$.
**Step 3:** $x=296-244=52$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $52$

**Distractor analysis:**
- **A** ($49$): Pulls the mean down too far.
- **C** ($55$): Too high for the given mean.
- **D** ($59$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
