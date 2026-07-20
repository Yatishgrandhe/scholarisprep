BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('16da53b4-3684-4fec-b3db-3bec9b895c1e', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 19 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{27}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{26}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{27}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{26}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 26. **Step 2:** P $=\\frac{7}{26}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 26 total.
**Step 2:** Conditional probability $=\frac{7}{26}$.
**Step 3:** Do not use $\frac{8}{27}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{26}$

**Distractor analysis:**
- **A** ($\frac{8}{27}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{26}$): Uses original count in numerator.
- **C** ($\frac{8}{27}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f37dfb6b-58ce-42e2-b8f8-5041af9f5e52', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 20 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{25}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{24}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{25}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{24}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 24. **Step 2:** P $=\\frac{4}{24}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 24 total.
**Step 2:** Conditional probability $=\frac{4}{24}$.
**Step 3:** Do not use $\frac{5}{25}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{24}$

**Distractor analysis:**
- **A** ($\frac{5}{25}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{24}$): Uses original count in numerator.
- **C** ($\frac{5}{25}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f9df6214-d089-44f5-a42f-ccc5fc6b59a4', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 21 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{27}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{26}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{27}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{26}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 26. **Step 2:** P $=\\frac{5}{26}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 26 total.
**Step 2:** Conditional probability $=\frac{5}{26}$.
**Step 3:** Do not use $\frac{6}{27}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{26}$

**Distractor analysis:**
- **A** ($\frac{6}{27}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{26}$): Uses original count in numerator.
- **C** ($\frac{6}{27}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5b84333a-ba6b-46a1-a32d-269af919072b', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 22 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{29}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{28}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{29}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{28}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 28. **Step 2:** P $=\\frac{6}{28}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 28 total.
**Step 2:** Conditional probability $=\frac{6}{28}$.
**Step 3:** Do not use $\frac{7}{29}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{28}$

**Distractor analysis:**
- **A** ($\frac{7}{29}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{28}$): Uses original count in numerator.
- **C** ($\frac{7}{29}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce0743fe-59e3-4f8e-a11d-9d5465548ae1', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 23 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{31}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{30}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{31}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{30}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 30. **Step 2:** P $=\\frac{7}{30}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 30 total.
**Step 2:** Conditional probability $=\frac{7}{30}$.
**Step 3:** Do not use $\frac{8}{31}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{30}$

**Distractor analysis:**
- **A** ($\frac{8}{31}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{30}$): Uses original count in numerator.
- **C** ($\frac{8}{31}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0891bd13-5cf1-4719-a4a8-5acf270a2d21', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 24 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{29}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{28}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{29}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{28}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 28. **Step 2:** P $=\\frac{4}{28}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 28 total.
**Step 2:** Conditional probability $=\frac{4}{28}$.
**Step 3:** Do not use $\frac{5}{29}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{28}$

**Distractor analysis:**
- **A** ($\frac{5}{29}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{28}$): Uses original count in numerator.
- **C** ($\frac{5}{29}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5a99bbeb-7baa-4a3b-a525-b6028270873e', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 25 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{31}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{30}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{31}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{30}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 30. **Step 2:** P $=\\frac{5}{30}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 30 total.
**Step 2:** Conditional probability $=\frac{5}{30}$.
**Step 3:** Do not use $\frac{6}{31}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{30}$

**Distractor analysis:**
- **A** ($\frac{6}{31}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{30}$): Uses original count in numerator.
- **C** ($\frac{6}{31}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('39bdad33-801b-47ca-9da1-6f901a0025bf', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 26 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{33}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{32}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{33}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{32}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 32. **Step 2:** P $=\\frac{6}{32}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 32 total.
**Step 2:** Conditional probability $=\frac{6}{32}$.
**Step 3:** Do not use $\frac{7}{33}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{32}$

**Distractor analysis:**
- **A** ($\frac{7}{33}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{32}$): Uses original count in numerator.
- **C** ($\frac{7}{33}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b6d2f78b-9207-407c-9a05-46215b78168e', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 27 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{35}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{34}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{35}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{34}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 34. **Step 2:** P $=\\frac{7}{34}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 34 total.
**Step 2:** Conditional probability $=\frac{7}{34}$.
**Step 3:** Do not use $\frac{8}{35}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{34}$

**Distractor analysis:**
- **A** ($\frac{8}{35}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{34}$): Uses original count in numerator.
- **C** ($\frac{8}{35}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2b5ca021-ab17-4b2d-ba54-e22ba3e61142', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 28 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{32}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{32}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 32. **Step 2:** P $=\\frac{4}{32}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 32 total.
**Step 2:** Conditional probability $=\frac{4}{32}$.
**Step 3:** Do not use $\frac{5}{33}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{32}$

**Distractor analysis:**
- **A** ($\frac{5}{33}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{32}$): Uses original count in numerator.
- **C** ($\frac{5}{33}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b4e48301-6311-4cbd-b47f-6bc8b31c8cc9', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 29 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{35}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{34}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{35}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{34}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 34. **Step 2:** P $=\\frac{5}{34}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 34 total.
**Step 2:** Conditional probability $=\frac{5}{34}$.
**Step 3:** Do not use $\frac{6}{35}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{34}$

**Distractor analysis:**
- **A** ($\frac{6}{35}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{34}$): Uses original count in numerator.
- **C** ($\frac{6}{35}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe5a9850-14ae-41bf-bc5e-eaea98e2240a', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 30 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{37}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{36}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{37}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{36}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 36. **Step 2:** P $=\\frac{6}{36}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 36 total.
**Step 2:** Conditional probability $=\frac{6}{36}$.
**Step 3:** Do not use $\frac{7}{37}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{36}$

**Distractor analysis:**
- **A** ($\frac{7}{37}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{36}$): Uses original count in numerator.
- **C** ($\frac{7}{37}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
