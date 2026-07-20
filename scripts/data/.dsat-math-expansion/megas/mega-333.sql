BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c180e725-87d9-432f-b8be-2480cba863ed', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 43 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{51}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{50}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{51}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{50}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 50. **Step 2:** P $=\\frac{7}{50}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 50 total.
**Step 2:** Conditional probability $=\frac{7}{50}$.
**Step 3:** Do not use $\frac{8}{51}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{50}$

**Distractor analysis:**
- **A** ($\frac{8}{51}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{50}$): Uses original count in numerator.
- **C** ($\frac{8}{51}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcde0eab-c2cb-4eca-944c-95e3b7a78255', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 44 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{49}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{48}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{49}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{48}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 48. **Step 2:** P $=\\frac{4}{48}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 48 total.
**Step 2:** Conditional probability $=\frac{4}{48}$.
**Step 3:** Do not use $\frac{5}{49}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{48}$

**Distractor analysis:**
- **A** ($\frac{5}{49}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{48}$): Uses original count in numerator.
- **C** ($\frac{5}{49}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8be8e306-7edc-446a-acd4-1956a81212d3', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 45 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{51}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{50}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{51}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{50}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 50. **Step 2:** P $=\\frac{5}{50}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 50 total.
**Step 2:** Conditional probability $=\frac{5}{50}$.
**Step 3:** Do not use $\frac{6}{51}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{50}$

**Distractor analysis:**
- **A** ($\frac{6}{51}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{50}$): Uses original count in numerator.
- **C** ($\frac{6}{51}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90cf5d40-dbb0-4370-98b3-2a4221f1a43a', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 46 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{53}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{52}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{53}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{52}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 52. **Step 2:** P $=\\frac{6}{52}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 52 total.
**Step 2:** Conditional probability $=\frac{6}{52}$.
**Step 3:** Do not use $\frac{7}{53}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{52}$

**Distractor analysis:**
- **A** ($\frac{7}{53}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{52}$): Uses original count in numerator.
- **C** ($\frac{7}{53}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('022fb1e5-49db-4da8-8d87-a18cd149a9c3', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 47 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{55}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{54}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{55}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{54}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 54. **Step 2:** P $=\\frac{7}{54}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 54 total.
**Step 2:** Conditional probability $=\frac{7}{54}$.
**Step 3:** Do not use $\frac{8}{55}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{54}$

**Distractor analysis:**
- **A** ($\frac{8}{55}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{54}$): Uses original count in numerator.
- **C** ($\frac{8}{55}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d4ad3b1c-3091-4479-a3e4-6f2bd23ac36c', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 48 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{53}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{52}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{53}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{52}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 52. **Step 2:** P $=\\frac{4}{52}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 52 total.
**Step 2:** Conditional probability $=\frac{4}{52}$.
**Step 3:** Do not use $\frac{5}{53}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{52}$

**Distractor analysis:**
- **A** ($\frac{5}{53}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{52}$): Uses original count in numerator.
- **C** ($\frac{5}{53}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ca5ae0a3-7910-4695-85d2-8242f450dc38', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 49 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{55}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{54}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{55}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{54}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 54. **Step 2:** P $=\\frac{5}{54}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 54 total.
**Step 2:** Conditional probability $=\frac{5}{54}$.
**Step 3:** Do not use $\frac{6}{55}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{54}$

**Distractor analysis:**
- **A** ($\frac{6}{55}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{54}$): Uses original count in numerator.
- **C** ($\frac{6}{55}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('53bb5b1b-e799-4b15-9c4f-7a21abe95e8a', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 50 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{57}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{56}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{57}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{56}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 56. **Step 2:** P $=\\frac{6}{56}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 56 total.
**Step 2:** Conditional probability $=\frac{6}{56}$.
**Step 3:** Do not use $\frac{7}{57}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{56}$

**Distractor analysis:**
- **A** ($\frac{7}{57}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{56}$): Uses original count in numerator.
- **C** ($\frac{7}{57}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('be1cba44-36c5-4506-a3c7-53347ecf7b4a', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 51 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{59}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{58}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{59}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{58}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 58. **Step 2:** P $=\\frac{7}{58}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 58 total.
**Step 2:** Conditional probability $=\frac{7}{58}$.
**Step 3:** Do not use $\frac{8}{59}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{58}$

**Distractor analysis:**
- **A** ($\frac{8}{59}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{58}$): Uses original count in numerator.
- **C** ($\frac{8}{59}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('54d5ed0b-4227-4231-b721-a6661281c6a7', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 52 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{57}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{56}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{57}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{56}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 56. **Step 2:** P $=\\frac{4}{56}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 56 total.
**Step 2:** Conditional probability $=\frac{4}{56}$.
**Step 3:** Do not use $\frac{5}{57}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{56}$

**Distractor analysis:**
- **A** ($\frac{5}{57}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{56}$): Uses original count in numerator.
- **C** ($\frac{5}{57}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d6ba869a-4a07-47af-98f5-0ca369cc16b4', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 53 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{59}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{58}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{59}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{58}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 58. **Step 2:** P $=\\frac{5}{58}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 58 total.
**Step 2:** Conditional probability $=\frac{5}{58}$.
**Step 3:** Do not use $\frac{6}{59}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{58}$

**Distractor analysis:**
- **A** ($\frac{6}{59}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{58}$): Uses original count in numerator.
- **C** ($\frac{6}{59}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e7dd4c4e-8d7c-4774-a950-a9be6e818b82', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 54 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{61}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{60}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{61}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{60}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 60. **Step 2:** P $=\\frac{6}{60}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 60 total.
**Step 2:** Conditional probability $=\frac{6}{60}$.
**Step 3:** Do not use $\frac{7}{61}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{60}$

**Distractor analysis:**
- **A** ($\frac{7}{61}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{60}$): Uses original count in numerator.
- **C** ($\frac{7}{61}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
