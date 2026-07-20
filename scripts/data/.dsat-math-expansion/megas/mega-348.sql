BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f95feb8d-e10e-4054-88ad-c5935d6a2e44', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 43 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{51}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{50}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{51}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{50}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 50. **Step 2:** P $=\\frac{7}{50}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 50 total.
**Step 2:** Conditional probability $=\frac{7}{50}$.
**Step 3:** Do not use $\frac{8}{51}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{50}$

**Distractor analysis:**
- **A** ($\frac{8}{51}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{50}$): Uses original count in numerator.
- **C** ($\frac{8}{51}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('28570861-ccca-48a0-9170-1729a773693c', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 44 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{49}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{48}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{49}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{48}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 48. **Step 2:** P $=\\frac{4}{48}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 48 total.
**Step 2:** Conditional probability $=\frac{4}{48}$.
**Step 3:** Do not use $\frac{5}{49}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{48}$

**Distractor analysis:**
- **A** ($\frac{5}{49}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{48}$): Uses original count in numerator.
- **C** ($\frac{5}{49}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e54c0bf1-8bbb-4490-9cde-06a277f8faa3', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 45 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{51}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{50}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{51}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{50}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 50. **Step 2:** P $=\\frac{5}{50}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 50 total.
**Step 2:** Conditional probability $=\frac{5}{50}$.
**Step 3:** Do not use $\frac{6}{51}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{50}$

**Distractor analysis:**
- **A** ($\frac{6}{51}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{50}$): Uses original count in numerator.
- **C** ($\frac{6}{51}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a4caab3-dcac-4cb9-9fd2-79a52e839394', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 46 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{53}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{52}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{53}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{52}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 52. **Step 2:** P $=\\frac{6}{52}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 52 total.
**Step 2:** Conditional probability $=\frac{6}{52}$.
**Step 3:** Do not use $\frac{7}{53}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{52}$

**Distractor analysis:**
- **A** ($\frac{7}{53}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{52}$): Uses original count in numerator.
- **C** ($\frac{7}{53}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00121c8d-d292-4d5d-9062-7571f648828f', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 47 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{55}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{54}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{55}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{54}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 54. **Step 2:** P $=\\frac{7}{54}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 54 total.
**Step 2:** Conditional probability $=\frac{7}{54}$.
**Step 3:** Do not use $\frac{8}{55}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{54}$

**Distractor analysis:**
- **A** ($\frac{8}{55}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{54}$): Uses original count in numerator.
- **C** ($\frac{8}{55}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('17c6521f-ec73-415f-8f17-2a23fbf0f81d', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 48 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{53}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{52}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{53}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{52}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 52. **Step 2:** P $=\\frac{4}{52}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 52 total.
**Step 2:** Conditional probability $=\frac{4}{52}$.
**Step 3:** Do not use $\frac{5}{53}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{52}$

**Distractor analysis:**
- **A** ($\frac{5}{53}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{52}$): Uses original count in numerator.
- **C** ($\frac{5}{53}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7d3f8e99-383c-4c73-a343-ded27d79a32d', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 49 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{55}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{54}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{55}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{54}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 54. **Step 2:** P $=\\frac{5}{54}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 54 total.
**Step 2:** Conditional probability $=\frac{5}{54}$.
**Step 3:** Do not use $\frac{6}{55}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{54}$

**Distractor analysis:**
- **A** ($\frac{6}{55}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{54}$): Uses original count in numerator.
- **C** ($\frac{6}{55}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e37fd792-70a6-4792-8642-0bce77ac0367', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 50 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{57}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{56}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{57}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{56}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 56. **Step 2:** P $=\\frac{6}{56}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 56 total.
**Step 2:** Conditional probability $=\frac{6}{56}$.
**Step 3:** Do not use $\frac{7}{57}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{56}$

**Distractor analysis:**
- **A** ($\frac{7}{57}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{56}$): Uses original count in numerator.
- **C** ($\frac{7}{57}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1af019da-46f5-43c1-bd44-28185cac6a23', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 51 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{59}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{58}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{59}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{58}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 58. **Step 2:** P $=\\frac{7}{58}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 58 total.
**Step 2:** Conditional probability $=\frac{7}{58}$.
**Step 3:** Do not use $\frac{8}{59}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{58}$

**Distractor analysis:**
- **A** ($\frac{8}{59}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{58}$): Uses original count in numerator.
- **C** ($\frac{8}{59}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0a05a13e-acdd-43d9-be2b-0a81c829a4f2', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 52 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{57}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{56}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{57}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{56}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 56. **Step 2:** P $=\\frac{4}{56}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 56 total.
**Step 2:** Conditional probability $=\frac{4}{56}$.
**Step 3:** Do not use $\frac{5}{57}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{56}$

**Distractor analysis:**
- **A** ($\frac{5}{57}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{56}$): Uses original count in numerator.
- **C** ($\frac{5}{57}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('07e96357-a4e6-4026-9227-d73094ef7273', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 53 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{59}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{58}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{59}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{58}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 58. **Step 2:** P $=\\frac{5}{58}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 58 total.
**Step 2:** Conditional probability $=\frac{5}{58}$.
**Step 3:** Do not use $\frac{6}{59}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{58}$

**Distractor analysis:**
- **A** ($\frac{6}{59}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{58}$): Uses original count in numerator.
- **C** ($\frac{6}{59}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60fc5e93-9124-470a-b080-a6568eae52c2', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 54 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{61}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{60}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{61}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{60}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 60. **Step 2:** P $=\\frac{6}{60}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 60 total.
**Step 2:** Conditional probability $=\frac{6}{60}$.
**Step 3:** Do not use $\frac{7}{61}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{60}$

**Distractor analysis:**
- **A** ($\frac{7}{61}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{60}$): Uses original count in numerator.
- **C** ($\frac{7}{61}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
