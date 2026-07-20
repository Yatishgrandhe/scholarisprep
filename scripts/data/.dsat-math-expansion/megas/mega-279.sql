BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4447b0b0-3fa6-4b6e-b987-cbf67960d64f', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 44, 48, 52, 56, and one score $x$ is unknown. The mean is 48.2.', 'passage', '[{"id":"SPR","text":"41","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=48.2×5=241$.
**Step 2:** Known sum $=200$.
**Step 3:** $x=241-200=41$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 41', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bbde92b2-556d-48ea-a9b0-3b97c95909da', 'What is the missing score $x$?', 'Five test scores: 45, 49, 53, 57, and one score $x$ is unknown. The mean is 49.2.', 'passage', '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$42$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=49.2×5=246$. **Step 2:** $x=42$."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$49$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=49.2×5=246$.
**Step 2:** Known sum $=204$.
**Step 3:** $x=246-204=42$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $42$

**Distractor analysis:**
- **A** ($39$): Pulls the mean down too far.
- **C** ($45$): Too high for the given mean.
- **D** ($49$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('07254e9d-038c-42e4-af7b-755ae8b62d34', 'What is the missing score $x$?', 'Five test scores: 46, 50, 54, 58, and one score $x$ is unknown. The mean is 50.2.

| Student | Score |
| --- | --- |
| S1 | 31 |
| S2 | 34 |
| S3 | 37 |
| S4 | 40 |', 'table', '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$43$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=50.2×5=251$. **Step 2:** $x=43$."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$50$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=50.2×5=251$.
**Step 2:** Known sum $=208$.
**Step 3:** $x=251-208=43$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $43$

**Distractor analysis:**
- **A** ($40$): Pulls the mean down too far.
- **C** ($46$): Too high for the given mean.
- **D** ($50$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08924479-bb49-44bd-b73e-d4faa17d17c5', 'What is the missing score $x$?', 'Five test scores: 47, 51, 55, 59, and one score $x$ is unknown. The mean is 51.2.', 'passage', '[{"id":"A","text":"$41$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$44$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=51.2×5=256$. **Step 2:** $x=44$."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$51$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=51.2×5=256$.
**Step 2:** Known sum $=212$.
**Step 3:** $x=256-212=44$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $44$

**Distractor analysis:**
- **A** ($41$): Pulls the mean down too far.
- **C** ($47$): Too high for the given mean.
- **D** ($51$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('562eda16-5ba7-457c-ab41-cffc202b1f84', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 48, 52, 56, 60, and one score $x$ is unknown. The mean is 52.2.', 'passage', '[{"id":"SPR","text":"45","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=52.2×5=261$.
**Step 2:** Known sum $=216$.
**Step 3:** $x=261-216=45$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 45', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1aaab69-6140-4f3c-a776-ffadc1f32941', 'What is the missing score $x$?', 'Five test scores: 49, 53, 57, 61, and one score $x$ is unknown. The mean is 53.2.

| Student | Score |
| --- | --- |
| S1 | 34 |
| S2 | 37 |
| S3 | 40 |
| S4 | 43 |', 'table', '[{"id":"A","text":"$43$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$46$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=53.2×5=266$. **Step 2:** $x=46$."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$53$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=53.2×5=266$.
**Step 2:** Known sum $=220$.
**Step 3:** $x=266-220=46$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $46$

**Distractor analysis:**
- **A** ($43$): Pulls the mean down too far.
- **C** ($49$): Too high for the given mean.
- **D** ($53$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dad761d4-6d1b-42df-83c1-e447c5c0d599', 'What is the missing score $x$?', 'Five test scores: 50, 54, 58, 62, and one score $x$ is unknown. The mean is 54.2.', 'passage', '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$47$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=54.2×5=271$. **Step 2:** $x=47$."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$54$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=54.2×5=271$.
**Step 2:** Known sum $=224$.
**Step 3:** $x=271-224=47$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $47$

**Distractor analysis:**
- **A** ($44$): Pulls the mean down too far.
- **C** ($50$): Too high for the given mean.
- **D** ($54$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e06521a5-513a-4681-802c-c5b3c2c91e95', 'What is the missing score $x$?', 'Five test scores: 51, 55, 59, 63, and one score $x$ is unknown. The mean is 55.2.', 'passage', '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$48$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=55.2×5=276$. **Step 2:** $x=48$."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$55$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=55.2×5=276$.
**Step 2:** Known sum $=228$.
**Step 3:** $x=276-228=48$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $48$

**Distractor analysis:**
- **A** ($45$): Pulls the mean down too far.
- **C** ($51$): Too high for the given mean.
- **D** ($55$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ec338dd1-a238-4a5c-a061-488f4aefa2e1', 'What is the missing score $x$? Enter your answer as a number.', 'Five test scores: 52, 56, 60, 64, and one score $x$ is unknown. The mean is 56.2.

| Student | Score |
| --- | --- |
| S1 | 37 |
| S2 | 40 |
| S3 | 43 |
| S4 | 46 |', 'table', '[{"id":"SPR","text":"49","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** What is the missing score $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Total sum $=56.2×5=281$.
**Step 2:** Known sum $=232$.
**Step 3:** $x=281-232=49$.
**Step 4:** Verify mean.

**Step 3 — Answer SPR.** 49', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b3251f0c-94b2-430d-9328-4f035e21b1b8', 'What is the missing score $x$?', 'Five test scores: 53, 57, 61, 65, and one score $x$ is unknown. The mean is 57.2.', 'passage', '[{"id":"A","text":"$47$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$50$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=57.2×5=286$. **Step 2:** $x=50$."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$57$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=57.2×5=286$.
**Step 2:** Known sum $=236$.
**Step 3:** $x=286-236=50$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $50$

**Distractor analysis:**
- **A** ($47$): Pulls the mean down too far.
- **C** ($53$): Too high for the given mean.
- **D** ($57$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('028a2c3e-7081-425e-ae8d-29156e34b961', 'What is the missing score $x$?', 'Five test scores: 54, 58, 62, 66, and one score $x$ is unknown. The mean is 58.2.', 'passage', '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$51$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=58.2×5=291$. **Step 2:** $x=51$."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$58$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=58.2×5=291$.
**Step 2:** Known sum $=240$.
**Step 3:** $x=291-240=51$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $51$

**Distractor analysis:**
- **A** ($48$): Pulls the mean down too far.
- **C** ($54$): Too high for the given mean.
- **D** ($58$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1d472b69-3aa4-40b7-9b28-5793666fe7ec', 'What is the missing score $x$?', 'Five test scores: 55, 59, 63, 67, and one score $x$ is unknown. The mean is 59.2.

| Student | Score |
| --- | --- |
| S1 | 40 |
| S2 | 43 |
| S3 | 46 |
| S4 | 49 |', 'table', '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$52$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=59.2×5=296$. **Step 2:** $x=52$."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$59$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb, 'B', '**Step 1 — Understand.** What is the missing score $x$?

**Step 2 — Solve.** **Step 1:** Total sum $=59.2×5=296$.
**Step 2:** Known sum $=244$.
**Step 3:** $x=296-244=52$.
**Step 4:** Verify mean.

**Step 3 — Answer B.** $52$

**Distractor analysis:**
- **A** ($49$): Pulls the mean down too far.
- **C** ($55$): Too high for the given mean.
- **D** ($59$): Confuses mean with the missing value.', NULL, 'Problem-Solving and Data Analysis', 'One-variable data', 'math', 'psda', 'OIA', 'OIA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"OIA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
