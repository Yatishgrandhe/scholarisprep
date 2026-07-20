BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('397a25cb-8d7c-46fa-85a9-e7bdaffa3e46', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 387 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7f0d24df-9514-421d-a575-699f8d7a0977', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 393 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('30ebf93c-d2fe-41d8-859f-b161db6913a3', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 399 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('702dc525-1d52-456e-ae3d-b6ad0e7f92ad', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 45 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72b854fd-7b71-45a2-a3ba-e509eadfac9c', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 51 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcb9749b-f459-4107-b6c8-4661bf6d8cbd', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 57 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b95bfaf9-70da-49a3-a6da-7f343fe2ac53', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 63 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d2cfd6ea-dea6-4d96-8085-cb41572ff0f7', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 69 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('efbd8346-a808-4e4a-b3fe-25dc8bf8483f', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 75 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ac1b687d-2899-4bbc-a34d-fc965f6bf4a5', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 81 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a43689f-cf5d-4b41-8ca2-c43527b2d0b1', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 87 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cd10eca1-7828-4855-bcb2-69eae42fb86f', 'Which choice best evaluates the claim?', 'A critic claims "nobody likes the new app" after surveying 93 followers who commented on one negative post.', 'passage', '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb, 'A', '**Step 1 — Understand.** Which choice best evaluates the claim?

**Step 2 — Solve.** **Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Step 3 — Answer A.** The claim overgeneralizes from a biased, non-random sample

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.', NULL, 'Problem-Solving and Data Analysis', 'Evaluating statistical claims', 'math', 'psda', 'EVA', 'EVA', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EVA","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
