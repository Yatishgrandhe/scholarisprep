BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('945eba8d-235a-4b04-91be-796a74f49069', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 31 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{39}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{38}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{39}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{38}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 38. **Step 2:** P $=\\frac{7}{38}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 38 total.
**Step 2:** Conditional probability $=\frac{7}{38}$.
**Step 3:** Do not use $\frac{8}{39}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{38}$

**Distractor analysis:**
- **A** ($\frac{8}{39}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{38}$): Uses original count in numerator.
- **C** ($\frac{8}{39}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('04a3b34f-bb2c-43bb-af33-4c311f37f761', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 32 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{37}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{36}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{37}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{36}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 36. **Step 2:** P $=\\frac{4}{36}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 36 total.
**Step 2:** Conditional probability $=\frac{4}{36}$.
**Step 3:** Do not use $\frac{5}{37}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{36}$

**Distractor analysis:**
- **A** ($\frac{5}{37}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{36}$): Uses original count in numerator.
- **C** ($\frac{5}{37}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9d32b56a-acf8-46ed-816e-18eaf25ec8dc', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 33 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{39}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{38}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{39}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{38}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 38. **Step 2:** P $=\\frac{5}{38}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 38 total.
**Step 2:** Conditional probability $=\frac{5}{38}$.
**Step 3:** Do not use $\frac{6}{39}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{38}$

**Distractor analysis:**
- **A** ($\frac{6}{39}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{38}$): Uses original count in numerator.
- **C** ($\frac{6}{39}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('799c4d91-a3ae-4a4b-b521-8bcfdcf40d87', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 34 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{41}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{40}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{41}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{40}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 40. **Step 2:** P $=\\frac{6}{40}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 40 total.
**Step 2:** Conditional probability $=\frac{6}{40}$.
**Step 3:** Do not use $\frac{7}{41}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{40}$

**Distractor analysis:**
- **A** ($\frac{7}{41}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{40}$): Uses original count in numerator.
- **C** ($\frac{7}{41}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('79502de3-51da-4e50-8c36-243f1ce297ce', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 35 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{43}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{42}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{43}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{42}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 42. **Step 2:** P $=\\frac{7}{42}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 42 total.
**Step 2:** Conditional probability $=\frac{7}{42}$.
**Step 3:** Do not use $\frac{8}{43}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{42}$

**Distractor analysis:**
- **A** ($\frac{8}{43}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{42}$): Uses original count in numerator.
- **C** ($\frac{8}{43}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3e24330c-0e86-463c-b684-bc80ae92d7f3', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 36 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{41}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{40}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{41}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{40}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 40. **Step 2:** P $=\\frac{4}{40}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 40 total.
**Step 2:** Conditional probability $=\frac{4}{40}$.
**Step 3:** Do not use $\frac{5}{41}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{40}$

**Distractor analysis:**
- **A** ($\frac{5}{41}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{40}$): Uses original count in numerator.
- **C** ($\frac{5}{41}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('29f503a3-9b63-49c2-9913-dd0853616893', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 37 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{43}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{42}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{43}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{42}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 42. **Step 2:** P $=\\frac{5}{42}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 42 total.
**Step 2:** Conditional probability $=\frac{5}{42}$.
**Step 3:** Do not use $\frac{6}{43}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{42}$

**Distractor analysis:**
- **A** ($\frac{6}{43}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{42}$): Uses original count in numerator.
- **C** ($\frac{6}{43}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f81644bb-b5be-429b-8bd4-a25ca357900d', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 38 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{45}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{44}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{45}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{44}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 44. **Step 2:** P $=\\frac{6}{44}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 44 total.
**Step 2:** Conditional probability $=\frac{6}{44}$.
**Step 3:** Do not use $\frac{7}{45}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{44}$

**Distractor analysis:**
- **A** ($\frac{7}{45}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{44}$): Uses original count in numerator.
- **C** ($\frac{7}{45}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dc51f112-7c14-47e5-b92a-755f2744d544', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 8 red and 39 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{8}{47}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{8}{46}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{8}{47}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{7}{46}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 7 red remain of 46. **Step 2:** P $=\\frac{7}{46}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 7 red left, 46 total.
**Step 2:** Conditional probability $=\frac{7}{46}$.
**Step 3:** Do not use $\frac{8}{47}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{7}{46}$

**Distractor analysis:**
- **A** ($\frac{8}{47}$): Ignores that one red chip was removed.
- **B** ($\frac{8}{46}$): Uses original count in numerator.
- **C** ($\frac{8}{47}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8fde4a14-3e95-454c-9885-91e7f1b49eaa', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 5 red and 40 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{5}{45}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{44}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{45}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{44}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 4 red remain of 44. **Step 2:** P $=\\frac{4}{44}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 4 red left, 44 total.
**Step 2:** Conditional probability $=\frac{4}{44}$.
**Step 3:** Do not use $\frac{5}{45}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{4}{44}$

**Distractor analysis:**
- **A** ($\frac{5}{45}$): Ignores that one red chip was removed.
- **B** ($\frac{5}{44}$): Uses original count in numerator.
- **C** ($\frac{5}{45}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('522ef16a-f327-4208-b268-891a59f04689', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 6 red and 41 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{6}{47}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{46}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{47}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{46}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 5 red remain of 46. **Step 2:** P $=\\frac{5}{46}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 5 red left, 46 total.
**Step 2:** Conditional probability $=\frac{5}{46}$.
**Step 3:** Do not use $\frac{6}{47}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{5}{46}$

**Distractor analysis:**
- **A** ($\frac{6}{47}$): Ignores that one red chip was removed.
- **B** ($\frac{6}{46}$): Uses original count in numerator.
- **C** ($\frac{6}{47}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('70a7b9ca-cc89-47dc-82af-70e5259a67dc', 'Given the first chip is red, what is the probability the second is also red?', 'A bag has 7 red and 42 blue chips. Two chips drawn without replacement; first is red.', 'passage', '[{"id":"A","text":"$\\frac{7}{49}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{7}{48}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{7}{49}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{6}{48}$","is_correct":true,"explanation":"Correct (D). **Step 1:** 6 red remain of 48. **Step 2:** P $=\\frac{6}{48}$."}]'::jsonb, 'D', '**Step 1 — Understand.** Given the first chip is red, what is the probability the second is also red?

**Step 2 — Solve.** **Step 1:** First chip red → 6 red left, 48 total.
**Step 2:** Conditional probability $=\frac{6}{48}$.
**Step 3:** Do not use $\frac{7}{49}$ — that ignores the first draw.

**Step 3 — Answer D.** $\frac{6}{48}$

**Distractor analysis:**
- **A** ($\frac{7}{49}$): Ignores that one red chip was removed.
- **B** ($\frac{7}{48}$): Uses original count in numerator.
- **C** ($\frac{7}{49}$): Wrong numerator after first draw.', NULL, 'Problem-Solving and Data Analysis', 'Probability and conditional probability', 'math', 'psda', 'PRO', 'PRO', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"PRO","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
