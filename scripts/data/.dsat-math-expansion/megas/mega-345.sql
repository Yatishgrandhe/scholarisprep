BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dc31f64d-8154-4acf-bc07-b5e019a4e5da', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 67 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{75}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{74}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{75}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{74}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 74. **Step 2:** P $=\\frac{7}{74}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 74 total.
**Step 2:** Conditional probability $=\frac{7}{74}$.
**Step 3:** Do not use $\frac{8}{75}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{74}$

**Distractor analysis:**
- **A** ($\frac{8}{75}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{74}$): Uses original count in numerator.
- **C** ($\frac{8}{75}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8299fd78-f3c7-49ad-9e3b-2d6b974e9ed8', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 8 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{13}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{12}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{13}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{12}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 12. **Step 2:** P $=\\frac{4}{12}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 12 total.
**Step 2:** Conditional probability $=\frac{4}{12}$.
**Step 3:** Do not use $\frac{5}{13}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{12}$

**Distractor analysis:**
- **A** ($\frac{5}{13}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{12}$): Uses original count in numerator.
- **C** ($\frac{5}{13}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('398180ae-ea89-4353-8cf9-2238acb6657f', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 9 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{15}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{15}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{14}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 14. **Step 2:** P $=\\frac{5}{14}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 14 total.
**Step 2:** Conditional probability $=\frac{5}{14}$.
**Step 3:** Do not use $\frac{6}{15}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{14}$

**Distractor analysis:**
- **A** ($\frac{6}{15}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{14}$): Uses original count in numerator.
- **C** ($\frac{6}{15}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5ef3616c-308b-4dae-afcb-c8fc60c50795', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 10 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{17}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{16}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{17}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{16}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 16. **Step 2:** P $=\\frac{6}{16}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 16 total.
**Step 2:** Conditional probability $=\frac{6}{16}$.
**Step 3:** Do not use $\frac{7}{17}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{16}$

**Distractor analysis:**
- **A** ($\frac{7}{17}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{16}$): Uses original count in numerator.
- **C** ($\frac{7}{17}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcda5f19-0387-4f03-9a76-ca742a603478', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 11 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{19}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{18}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{19}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{18}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 18. **Step 2:** P $=\\frac{7}{18}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 18 total.
**Step 2:** Conditional probability $=\frac{7}{18}$.
**Step 3:** Do not use $\frac{8}{19}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{18}$

**Distractor analysis:**
- **A** ($\frac{8}{19}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{18}$): Uses original count in numerator.
- **C** ($\frac{8}{19}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5ccf08e6-4a17-4bea-87d6-b653eacf5757', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 12 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{17}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{16}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{17}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{16}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 16. **Step 2:** P $=\\frac{4}{16}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 16 total.
**Step 2:** Conditional probability $=\frac{4}{16}$.
**Step 3:** Do not use $\frac{5}{17}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{16}$

**Distractor analysis:**
- **A** ($\frac{5}{17}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{16}$): Uses original count in numerator.
- **C** ($\frac{5}{17}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('544bd7d6-6a79-4800-a0d2-477ddf321778', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 13 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{19}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{18}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{19}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{18}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 18. **Step 2:** P $=\\frac{5}{18}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 18 total.
**Step 2:** Conditional probability $=\frac{5}{18}$.
**Step 3:** Do not use $\frac{6}{19}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{18}$

**Distractor analysis:**
- **A** ($\frac{6}{19}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{18}$): Uses original count in numerator.
- **C** ($\frac{6}{19}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fac58f35-c4de-464d-a4fc-a70d2a09d12e', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 14 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{21}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{20}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{21}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{20}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 20. **Step 2:** P $=\\frac{6}{20}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 20 total.
**Step 2:** Conditional probability $=\frac{6}{20}$.
**Step 3:** Do not use $\frac{7}{21}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{20}$

**Distractor analysis:**
- **A** ($\frac{7}{21}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{20}$): Uses original count in numerator.
- **C** ($\frac{7}{21}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('16e20824-2495-4d21-93f3-5524ab35ec9c', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 15 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{23}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{22}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{23}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{22}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 22. **Step 2:** P $=\\frac{7}{22}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 22 total.
**Step 2:** Conditional probability $=\frac{7}{22}$.
**Step 3:** Do not use $\frac{8}{23}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{22}$

**Distractor analysis:**
- **A** ($\frac{8}{23}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{22}$): Uses original count in numerator.
- **C** ($\frac{8}{23}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b97a8c96-93ea-4b56-a4e3-7f336ebbf17b', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 16 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{21}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{20}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{21}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{20}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 20. **Step 2:** P $=\\frac{4}{20}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 20 total.
**Step 2:** Conditional probability $=\frac{4}{20}$.
**Step 3:** Do not use $\frac{5}{21}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{20}$

**Distractor analysis:**
- **A** ($\frac{5}{21}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{20}$): Uses original count in numerator.
- **C** ($\frac{5}{21}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90b61a45-d1f8-4886-82a0-ee0b35d0997b', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 17 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{23}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{22}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{23}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{22}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 22. **Step 2:** P $=\\frac{5}{22}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 22 total.
**Step 2:** Conditional probability $=\frac{5}{22}$.
**Step 3:** Do not use $\frac{6}{23}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{22}$

**Distractor analysis:**
- **A** ($\frac{6}{23}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{22}$): Uses original count in numerator.
- **C** ($\frac{6}{23}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('93028a71-23bf-48ba-9bad-505fada00395', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 18 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{25}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{24}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{25}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{24}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 24. **Step 2:** P $=\\frac{6}{24}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 24 total.
**Step 2:** Conditional probability $=\frac{6}{24}$.
**Step 3:** Do not use $\frac{7}{25}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{24}$

**Distractor analysis:**
- **A** ($\frac{7}{25}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{24}$): Uses original count in numerator.
- **C** ($\frac{7}{25}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
