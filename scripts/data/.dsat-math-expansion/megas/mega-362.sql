BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('12d1ab87-9396-46b9-adbc-4fe8c2315fa9', 'Which conclusion is best supported?', 'Poll: 64% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 64% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 60% and 68%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 60% to 68%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 60% to 68%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 60% and 68%

**Distractor analysis:**
- **A** (Exactly 64% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b159eda0-7713-4bad-a50c-875e31da99b3', 'Which conclusion is best supported?', 'Poll: 65% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 65% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 61% and 69%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 61% to 69%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 61% to 69%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 61% and 69%

**Distractor analysis:**
- **A** (Exactly 65% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a37dd493-7730-4aaa-bb23-486134ab1951', 'Which conclusion is best supported?', 'Poll: 54% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 54% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 50% and 58%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 50% to 58%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 50% to 58%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 50% and 58%

**Distractor analysis:**
- **A** (Exactly 54% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cfe351c9-1b32-4b7a-8f6f-dee26d70e89e', 'Which conclusion is best supported?', 'Poll: 55% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 55% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 51% and 59%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 51% to 59%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 51% to 59%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 51% and 59%

**Distractor analysis:**
- **A** (Exactly 55% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('40af2706-e9ca-4f52-bac5-81b23606bed4', 'Which conclusion is best supported?', 'Poll: 56% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 56% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 52% and 60%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 52% to 60%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 52% to 60%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 52% and 60%

**Distractor analysis:**
- **A** (Exactly 56% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ea1444ab-499a-45dc-b858-8e15f5232f92', 'Which conclusion is best supported?', 'Poll: 57% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 57% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 53% and 61%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 53% to 61%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 53% to 61%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 53% and 61%

**Distractor analysis:**
- **A** (Exactly 57% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('50c9bb40-f1fc-43eb-8173-4068da219d9b', 'Which conclusion is best supported?', 'Poll: 58% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 58% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 54% and 62%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 54% to 62%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 54% to 62%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 54% and 62%

**Distractor analysis:**
- **A** (Exactly 58% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1549570e-d38b-4a7e-ac2e-d411208dc990', 'Which conclusion is best supported?', 'Poll: 59% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 59% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 55% and 63%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 55% to 63%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 55% to 63%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 55% and 63%

**Distractor analysis:**
- **A** (Exactly 59% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c2d3346b-52f2-4ab7-bc40-33243947b151', 'Which conclusion is best supported?', 'Poll: 60% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 60% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 56% and 64%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 56% to 64%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 56% to 64%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 56% and 64%

**Distractor analysis:**
- **A** (Exactly 60% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('660402c2-2a38-4afc-b435-e07f323bf2c0', 'Which conclusion is best supported?', 'Poll: 61% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 57% to 65%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 57% and 65%

**Distractor analysis:**
- **A** (Exactly 61% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6e0e2550-0f93-4cc7-a0a1-31a9ccf10a66', 'Which conclusion is best supported?', 'Poll: 62% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 62% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 58% and 66%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 58% to 66%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 58% to 66%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 58% and 66%

**Distractor analysis:**
- **A** (Exactly 62% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f8ad0431-826f-45fb-8e89-60e242da2e57', 'Which conclusion is best supported?', 'Poll: 63% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.', 'passage', '[{"id":"A","text":"Exactly 63% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 59% and 67%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 59% to 67%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb, 'B', '**Step 1 — Understand.** Which conclusion is best supported?

**Step 2 — Solve.** **Step 1:** Compute interval: 59% to 67%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Step 3 — Answer B.** Plausible support is between 59% and 67%

**Distractor analysis:**
- **A** (Exactly 63% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.', NULL, 'Problem-Solving and Data Analysis', 'Inference from sample statistics', 'math', 'psda', 'IEE', 'IEE', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"IEE","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
