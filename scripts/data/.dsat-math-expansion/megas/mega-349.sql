BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('43a9353a-fe04-4f7e-a2c7-e45d02eaa170', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 55 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{63}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{62}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{63}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{62}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 62. **Step 2:** P $=\\frac{7}{62}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 62 total.
**Step 2:** Conditional probability $=\frac{7}{62}$.
**Step 3:** Do not use $\frac{8}{63}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{62}$

**Distractor analysis:**
- **A** ($\frac{8}{63}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{62}$): Uses original count in numerator.
- **C** ($\frac{8}{63}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c044f37f-3dda-4e4c-b846-7e2a09048e4e', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 56 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{61}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{60}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{61}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{60}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 60. **Step 2:** P $=\\frac{4}{60}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 60 total.
**Step 2:** Conditional probability $=\frac{4}{60}$.
**Step 3:** Do not use $\frac{5}{61}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{60}$

**Distractor analysis:**
- **A** ($\frac{5}{61}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{60}$): Uses original count in numerator.
- **C** ($\frac{5}{61}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cc7305f7-9d01-4b0a-a636-e061afb0d9bf', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 57 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{63}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{62}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{63}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{62}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 62. **Step 2:** P $=\\frac{5}{62}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 62 total.
**Step 2:** Conditional probability $=\frac{5}{62}$.
**Step 3:** Do not use $\frac{6}{63}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{62}$

**Distractor analysis:**
- **A** ($\frac{6}{63}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{62}$): Uses original count in numerator.
- **C** ($\frac{6}{63}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6797dcc7-2570-4da0-8a77-9993caa7c143', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 58 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{65}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{64}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{65}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{64}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 64. **Step 2:** P $=\\frac{6}{64}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 64 total.
**Step 2:** Conditional probability $=\frac{6}{64}$.
**Step 3:** Do not use $\frac{7}{65}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{64}$

**Distractor analysis:**
- **A** ($\frac{7}{65}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{64}$): Uses original count in numerator.
- **C** ($\frac{7}{65}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c53c3677-df2c-4487-aa73-ed9b77ed1bef', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 59 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{67}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{66}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{67}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{66}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 66. **Step 2:** P $=\\frac{7}{66}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 66 total.
**Step 2:** Conditional probability $=\frac{7}{66}$.
**Step 3:** Do not use $\frac{8}{67}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{66}$

**Distractor analysis:**
- **A** ($\frac{8}{67}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{66}$): Uses original count in numerator.
- **C** ($\frac{8}{67}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('54d1f718-570e-4f10-842f-088064fd9705', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 60 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{65}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{64}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{65}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{64}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 64. **Step 2:** P $=\\frac{4}{64}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 64 total.
**Step 2:** Conditional probability $=\frac{4}{64}$.
**Step 3:** Do not use $\frac{5}{65}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{64}$

**Distractor analysis:**
- **A** ($\frac{5}{65}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{64}$): Uses original count in numerator.
- **C** ($\frac{5}{65}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6647866f-d056-49af-bc35-1e2a710b7fa0', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 61 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{67}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{66}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{67}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{66}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 66. **Step 2:** P $=\\frac{5}{66}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 66 total.
**Step 2:** Conditional probability $=\frac{5}{66}$.
**Step 3:** Do not use $\frac{6}{67}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{66}$

**Distractor analysis:**
- **A** ($\frac{6}{67}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{66}$): Uses original count in numerator.
- **C** ($\frac{6}{67}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('76c8e883-0992-4333-a939-27248a9d812d', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 62 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{69}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{68}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{69}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{68}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 68. **Step 2:** P $=\\frac{6}{68}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 68 total.
**Step 2:** Conditional probability $=\frac{6}{68}$.
**Step 3:** Do not use $\frac{7}{69}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{68}$

**Distractor analysis:**
- **A** ($\frac{7}{69}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{68}$): Uses original count in numerator.
- **C** ($\frac{7}{69}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1e5eaf9d-7cb0-4fa3-ad91-c642dca7c76f', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 63 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{71}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{70}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{71}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{70}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 70. **Step 2:** P $=\\frac{7}{70}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 70 total.
**Step 2:** Conditional probability $=\frac{7}{70}$.
**Step 3:** Do not use $\frac{8}{71}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{70}$

**Distractor analysis:**
- **A** ($\frac{8}{71}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{70}$): Uses original count in numerator.
- **C** ($\frac{8}{71}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('23e2095b-33d5-4b76-907a-8dd4e7d90a87', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 64 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{69}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{68}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{69}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{68}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 68. **Step 2:** P $=\\frac{4}{68}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 68 total.
**Step 2:** Conditional probability $=\frac{4}{68}$.
**Step 3:** Do not use $\frac{5}{69}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{68}$

**Distractor analysis:**
- **A** ($\frac{5}{69}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{68}$): Uses original count in numerator.
- **C** ($\frac{5}{69}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c598748d-c719-4762-90ca-688dd0ff0629', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 65 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{71}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{70}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{71}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{70}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 70. **Step 2:** P $=\\frac{5}{70}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 70 total.
**Step 2:** Conditional probability $=\frac{5}{70}$.
**Step 3:** Do not use $\frac{6}{71}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{70}$

**Distractor analysis:**
- **A** ($\frac{6}{71}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{70}$): Uses original count in numerator.
- **C** ($\frac{6}{71}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04f02641-9a7b-4bbc-aec6-e10b69b8197b', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 66 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{73}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{72}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{73}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{72}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 72. **Step 2:** P $=\\frac{6}{72}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 72 total.
**Step 2:** Conditional probability $=\frac{6}{72}$.
**Step 3:** Do not use $\frac{7}{73}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{72}$

**Distractor analysis:**
- **A** ($\frac{7}{73}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{72}$): Uses original count in numerator.
- **C** ($\frac{7}{73}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
