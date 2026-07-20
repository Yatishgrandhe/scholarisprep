BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('998574dd-f06f-4c03-8f74-891a1374eb1a', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 55 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{63}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{62}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{63}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{62}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 62. **Step 2:** P $=\\frac{7}{62}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 62 total.
**Step 2:** Conditional probability $=\frac{7}{62}$.
**Step 3:** Do not use $\frac{8}{63}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{62}$

**Distractor analysis:**
- **A** ($\frac{8}{63}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{62}$): Uses original count in numerator.
- **C** ($\frac{8}{63}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('da3be0c2-96a2-4a16-b368-4b359660b91a', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 56 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{61}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{60}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{61}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{60}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 60. **Step 2:** P $=\\frac{4}{60}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 60 total.
**Step 2:** Conditional probability $=\frac{4}{60}$.
**Step 3:** Do not use $\frac{5}{61}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{60}$

**Distractor analysis:**
- **A** ($\frac{5}{61}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{60}$): Uses original count in numerator.
- **C** ($\frac{5}{61}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3ce7a535-9797-49a4-8849-b5dbe1eea88a', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 57 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{63}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{62}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{63}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{62}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 62. **Step 2:** P $=\\frac{5}{62}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 62 total.
**Step 2:** Conditional probability $=\frac{5}{62}$.
**Step 3:** Do not use $\frac{6}{63}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{62}$

**Distractor analysis:**
- **A** ($\frac{6}{63}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{62}$): Uses original count in numerator.
- **C** ($\frac{6}{63}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7056a32e-3aff-49b7-af1d-1df666f1d241', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 58 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{65}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{64}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{65}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{64}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 64. **Step 2:** P $=\\frac{6}{64}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 64 total.
**Step 2:** Conditional probability $=\frac{6}{64}$.
**Step 3:** Do not use $\frac{7}{65}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{64}$

**Distractor analysis:**
- **A** ($\frac{7}{65}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{64}$): Uses original count in numerator.
- **C** ($\frac{7}{65}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7deb969e-0a77-4d37-b92c-d53690476aa9', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 59 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{67}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{66}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{67}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{66}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 66. **Step 2:** P $=\\frac{7}{66}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 66 total.
**Step 2:** Conditional probability $=\frac{7}{66}$.
**Step 3:** Do not use $\frac{8}{67}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{66}$

**Distractor analysis:**
- **A** ($\frac{8}{67}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{66}$): Uses original count in numerator.
- **C** ($\frac{8}{67}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('af0bd39b-129f-4d31-8c74-026565c1ba8b', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 60 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{65}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{64}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{65}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{64}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 64. **Step 2:** P $=\\frac{4}{64}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 64 total.
**Step 2:** Conditional probability $=\frac{4}{64}$.
**Step 3:** Do not use $\frac{5}{65}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{64}$

**Distractor analysis:**
- **A** ($\frac{5}{65}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{64}$): Uses original count in numerator.
- **C** ($\frac{5}{65}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('39351d7a-c634-48df-9037-32c779d1aa17', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 61 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{67}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{66}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{67}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{66}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 66. **Step 2:** P $=\\frac{5}{66}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 66 total.
**Step 2:** Conditional probability $=\frac{5}{66}$.
**Step 3:** Do not use $\frac{6}{67}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{66}$

**Distractor analysis:**
- **A** ($\frac{6}{67}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{66}$): Uses original count in numerator.
- **C** ($\frac{6}{67}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('deb83c3b-2be0-4411-b4ec-ae04250f1bba', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 62 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{69}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{68}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{69}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{68}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 68. **Step 2:** P $=\\frac{6}{68}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 68 total.
**Step 2:** Conditional probability $=\frac{6}{68}$.
**Step 3:** Do not use $\frac{7}{69}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{68}$

**Distractor analysis:**
- **A** ($\frac{7}{69}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{68}$): Uses original count in numerator.
- **C** ($\frac{7}{69}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('da6aa8e1-5f68-44be-8138-b4eeba84cb37', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 63 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{71}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{70}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{71}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{70}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 70. **Step 2:** P $=\\frac{7}{70}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 70 total.
**Step 2:** Conditional probability $=\frac{7}{70}$.
**Step 3:** Do not use $\frac{8}{71}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{70}$

**Distractor analysis:**
- **A** ($\frac{8}{71}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{70}$): Uses original count in numerator.
- **C** ($\frac{8}{71}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('faf6942a-c92e-4683-8c31-e9c3328d8a29', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 64 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{69}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{68}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{69}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{68}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 68. **Step 2:** P $=\\frac{4}{68}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 68 total.
**Step 2:** Conditional probability $=\frac{4}{68}$.
**Step 3:** Do not use $\frac{5}{69}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{68}$

**Distractor analysis:**
- **A** ($\frac{5}{69}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{68}$): Uses original count in numerator.
- **C** ($\frac{5}{69}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fd462e02-eeca-4e85-81e5-c6c6534fc2d9', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 65 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{71}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{70}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{71}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{70}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 70. **Step 2:** P $=\\frac{5}{70}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 70 total.
**Step 2:** Conditional probability $=\frac{5}{70}$.
**Step 3:** Do not use $\frac{6}{71}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{70}$

**Distractor analysis:**
- **A** ($\frac{6}{71}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{70}$): Uses original count in numerator.
- **C** ($\frac{6}{71}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bb434cd9-608a-4434-b38f-29068aaa49c3', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 66 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{73}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{72}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{73}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{72}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 72. **Step 2:** P $=\\frac{6}{72}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 72 total.
**Step 2:** Conditional probability $=\frac{6}{72}$.
**Step 3:** Do not use $\frac{7}{73}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{72}$

**Distractor analysis:**
- **A** ($\frac{7}{73}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{72}$): Uses original count in numerator.
- **C** ($\frac{7}{73}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
