BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21ad2caf-0271-4c3a-bed9-08afb9f8d3dd', 'Which expression is equivalent to $(4x+9)^2 - (4x-9)^2$?', NULL, NULL, '[{"id":"A","text":"$144x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+9$, $v=4x-9$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$36x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+81$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+9)^2 - (4x-9)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+9$, $v=4x-9$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(18)=144x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $144x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($36x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+81$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('70121dce-7f1e-4b22-a549-a0381a8c1a04', 'Which expression is equivalent to $(5x+10)^2 - (5x-10)^2$?', NULL, NULL, '[{"id":"A","text":"$200x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+10$, $v=5x-10$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$40x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+100$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+10)^2 - (5x-10)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+10$, $v=5x-10$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(20)=200x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $200x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($40x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+100$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('48b8050b-5878-4401-ac6b-55dfae5c9f1b', 'Which expression is equivalent to $(3x+11)^2 - (3x-11)^2$?', NULL, NULL, '[{"id":"A","text":"$132x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+11$, $v=3x-11$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$44x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+121$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+11)^2 - (3x-11)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+11$, $v=3x-11$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(22)=132x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $132x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($44x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+121$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6dc1dbf7-678d-40a1-8e22-d1db537ec9c1', 'Which expression is equivalent to $(4x+12)^2 - (4x-12)^2$?', NULL, NULL, '[{"id":"A","text":"$192x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+12$, $v=4x-12$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$48x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+144$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+12)^2 - (4x-12)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+12$, $v=4x-12$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(24)=192x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $192x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($48x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+144$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6c60214a-7395-4601-8f10-84b4c5c01e0a', 'Which expression is equivalent to $(5x+13)^2 - (5x-13)^2$?', NULL, NULL, '[{"id":"A","text":"$260x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+13$, $v=5x-13$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$52x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+169$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+13)^2 - (5x-13)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+13$, $v=5x-13$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(26)=260x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $260x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($52x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+169$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0adcf4ab-0d8f-4fe9-af94-214ba8d11b95', 'Which expression is equivalent to $(3x+14)^2 - (3x-14)^2$?', NULL, NULL, '[{"id":"A","text":"$168x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+14$, $v=3x-14$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$56x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+196$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+14)^2 - (3x-14)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+14$, $v=3x-14$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(28)=168x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $168x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($56x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+196$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('870a868b-4aa5-4526-9816-4d894a52a737', 'Which expression is equivalent to $(4x+15)^2 - (4x-15)^2$?', NULL, NULL, '[{"id":"A","text":"$240x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+15$, $v=4x-15$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$60x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+225$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+15)^2 - (4x-15)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+15$, $v=4x-15$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(30)=240x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $240x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($60x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+225$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2a036a05-7247-40a8-b275-141d756c8732', 'Which expression is equivalent to $(5x+16)^2 - (5x-16)^2$?', NULL, NULL, '[{"id":"A","text":"$320x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+16$, $v=5x-16$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$64x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+256$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+16)^2 - (5x-16)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+16$, $v=5x-16$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(32)=320x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $320x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($64x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+256$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('49319529-b6c9-48d4-af8a-9c84dff7b286', 'Which expression is equivalent to $(3x+17)^2 - (3x-17)^2$?', NULL, NULL, '[{"id":"A","text":"$204x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+17$, $v=3x-17$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$68x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+289$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+17)^2 - (3x-17)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+17$, $v=3x-17$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(34)=204x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $204x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($68x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+289$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6cdf793-346b-40d5-9ef1-664f3f07cb22', 'Which expression is equivalent to $(4x+18)^2 - (4x-18)^2$?', NULL, NULL, '[{"id":"A","text":"$288x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+18$, $v=4x-18$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$72x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+324$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+18)^2 - (4x-18)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+18$, $v=4x-18$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(36)=288x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $288x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($72x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+324$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fa747f52-f041-4d42-a5d5-9a9b23bd4136', 'Which expression is equivalent to $(5x+19)^2 - (5x-19)^2$?', NULL, NULL, '[{"id":"A","text":"$380x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+19$, $v=5x-19$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$76x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+361$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+19)^2 - (5x-19)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+19$, $v=5x-19$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(38)=380x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $380x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($76x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+361$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21d5dd95-d15b-4714-bcaf-96f1834b4d98', 'Which expression is equivalent to $(3x+20)^2 - (3x-20)^2$?', NULL, NULL, '[{"id":"A","text":"$240x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+20$, $v=3x-20$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$80x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+400$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+20)^2 - (3x-20)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+20$, $v=3x-20$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(40)=240x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $240x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($80x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+400$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
