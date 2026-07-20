BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f177e84f-d58a-4437-98d3-4b1e643214f8', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 43 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{51}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{50}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{51}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{50}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 50. **Step 2:** P $=\\frac{7}{50}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 50 total.
**Step 2:** Conditional probability $=\frac{7}{50}$.
**Step 3:** Do not use $\frac{8}{51}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{50}$

**Distractor analysis:**
- **A** ($\frac{8}{51}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{50}$): Uses original count in numerator.
- **C** ($\frac{8}{51}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('876c839d-4735-46b4-b972-630f0101328d', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 44 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{49}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{48}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{49}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{48}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 48. **Step 2:** P $=\\frac{4}{48}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 48 total.
**Step 2:** Conditional probability $=\frac{4}{48}$.
**Step 3:** Do not use $\frac{5}{49}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{48}$

**Distractor analysis:**
- **A** ($\frac{5}{49}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{48}$): Uses original count in numerator.
- **C** ($\frac{5}{49}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08da497b-dcc6-4d6e-867b-ef42895e89cc', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 45 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{51}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{50}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{51}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{50}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 50. **Step 2:** P $=\\frac{5}{50}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 50 total.
**Step 2:** Conditional probability $=\frac{5}{50}$.
**Step 3:** Do not use $\frac{6}{51}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{50}$

**Distractor analysis:**
- **A** ($\frac{6}{51}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{50}$): Uses original count in numerator.
- **C** ($\frac{6}{51}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f41009e5-1b2c-4ae2-a6d5-1c4c346f677f', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 46 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{53}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{52}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{53}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{52}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 52. **Step 2:** P $=\\frac{6}{52}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 52 total.
**Step 2:** Conditional probability $=\frac{6}{52}$.
**Step 3:** Do not use $\frac{7}{53}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{52}$

**Distractor analysis:**
- **A** ($\frac{7}{53}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{52}$): Uses original count in numerator.
- **C** ($\frac{7}{53}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c0c6fbf3-4795-40e2-82ba-d5770e48c130', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 47 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{55}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{54}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{55}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{54}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 54. **Step 2:** P $=\\frac{7}{54}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 54 total.
**Step 2:** Conditional probability $=\frac{7}{54}$.
**Step 3:** Do not use $\frac{8}{55}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{54}$

**Distractor analysis:**
- **A** ($\frac{8}{55}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{54}$): Uses original count in numerator.
- **C** ($\frac{8}{55}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3d35bae2-4856-4917-8f01-9b5e2cdfe764', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 48 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{53}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{52}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{53}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{52}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 52. **Step 2:** P $=\\frac{4}{52}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 52 total.
**Step 2:** Conditional probability $=\frac{4}{52}$.
**Step 3:** Do not use $\frac{5}{53}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{52}$

**Distractor analysis:**
- **A** ($\frac{5}{53}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{52}$): Uses original count in numerator.
- **C** ($\frac{5}{53}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eb78dd4d-e234-4798-ae2e-d2bb4d370952', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 49 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{55}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{54}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{55}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{54}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 54. **Step 2:** P $=\\frac{5}{54}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 54 total.
**Step 2:** Conditional probability $=\frac{5}{54}$.
**Step 3:** Do not use $\frac{6}{55}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{54}$

**Distractor analysis:**
- **A** ($\frac{6}{55}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{54}$): Uses original count in numerator.
- **C** ($\frac{6}{55}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7a4f866f-bd77-401e-9826-06a32f3e5172', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 50 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{57}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{56}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{57}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{56}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 56. **Step 2:** P $=\\frac{6}{56}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 56 total.
**Step 2:** Conditional probability $=\frac{6}{56}$.
**Step 3:** Do not use $\frac{7}{57}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{56}$

**Distractor analysis:**
- **A** ($\frac{7}{57}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{56}$): Uses original count in numerator.
- **C** ($\frac{7}{57}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eb28c06c-e1eb-4cfa-b8bf-b31d5e224a45', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 51 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{59}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{58}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{59}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{58}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 58. **Step 2:** P $=\\frac{7}{58}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 58 total.
**Step 2:** Conditional probability $=\frac{7}{58}$.
**Step 3:** Do not use $\frac{8}{59}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{58}$

**Distractor analysis:**
- **A** ($\frac{8}{59}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{58}$): Uses original count in numerator.
- **C** ($\frac{8}{59}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('58467e2f-a68d-48cc-97c3-abf6f6c8cf6e', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 52 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{57}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{56}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{57}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{56}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 56. **Step 2:** P $=\\frac{4}{56}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 56 total.
**Step 2:** Conditional probability $=\frac{4}{56}$.
**Step 3:** Do not use $\frac{5}{57}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{56}$

**Distractor analysis:**
- **A** ($\frac{5}{57}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{56}$): Uses original count in numerator.
- **C** ($\frac{5}{57}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a3d6416-b0bd-45eb-9141-9bfeb5c5f0f7', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 53 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{59}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{58}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{59}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{58}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 58. **Step 2:** P $=\\frac{5}{58}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 58 total.
**Step 2:** Conditional probability $=\frac{5}{58}$.
**Step 3:** Do not use $\frac{6}{59}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{58}$

**Distractor analysis:**
- **A** ($\frac{6}{59}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{58}$): Uses original count in numerator.
- **C** ($\frac{6}{59}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce026aea-f106-4347-b513-3ad6532be771', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 54 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{61}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{60}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{61}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{60}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 60. **Step 2:** P $=\\frac{6}{60}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 60 total.
**Step 2:** Conditional probability $=\frac{6}{60}$.
**Step 3:** Do not use $\frac{7}{61}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{60}$

**Distractor analysis:**
- **A** ($\frac{7}{61}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{60}$): Uses original count in numerator.
- **C** ($\frac{7}{61}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
