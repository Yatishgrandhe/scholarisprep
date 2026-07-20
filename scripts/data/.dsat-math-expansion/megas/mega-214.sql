BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b880d33b-8ee4-410b-9c39-8d7b1bc96d85', 'Which expression is equivalent to $(4x+57)^2 - (4x-57)^2$?', NULL, NULL, '[{"id":"A","text":"$912x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+57$, $v=4x-57$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$228x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+3249$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+57)^2 - (4x-57)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+57$, $v=4x-57$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(114)=912x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $912x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($228x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+3249$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2653a631-35fe-4c10-8dfb-27248aa6d42a', 'Which expression is equivalent to $(5x+58)^2 - (5x-58)^2$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"1160x","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which expression is equivalent to $(5x+58)^2 - (5x-58)^2$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Let $u=5x+58$, $v=5x-58$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(116)=1160x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer SPR.** 1160x', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('93a1dd41-fc3e-46b8-8271-667935b0733c', 'Which expression is equivalent to $(3x+59)^2 - (3x-59)^2$?', NULL, NULL, '[{"id":"A","text":"$708x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+59$, $v=3x-59$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$236x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+3481$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+59)^2 - (3x-59)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+59$, $v=3x-59$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(118)=708x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $708x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($236x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+3481$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('19c3c6d9-57af-4998-b88e-d8fedc75e046', 'Which expression is equivalent to $(4x+60)^2 - (4x-60)^2$?', NULL, NULL, '[{"id":"A","text":"$960x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+60$, $v=4x-60$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$240x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+3600$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+60)^2 - (4x-60)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+60$, $v=4x-60$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(120)=960x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $960x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($240x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+3600$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('828f56e8-bb0c-4b87-86c1-eb5cfb8661b2', 'Which expression is equivalent to $(5x+61)^2 - (5x-61)^2$?', NULL, NULL, '[{"id":"A","text":"$1220x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+61$, $v=5x-61$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$244x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+3721$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+61)^2 - (5x-61)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+61$, $v=5x-61$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(122)=1220x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $1220x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($244x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+3721$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3b1d568b-452e-491b-a569-3e04ae6d7179', 'Which expression is equivalent to $(3x+62)^2 - (3x-62)^2$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"744x","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which expression is equivalent to $(3x+62)^2 - (3x-62)^2$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Let $u=3x+62$, $v=3x-62$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(124)=744x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer SPR.** 744x', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('712fbe4c-d47f-401b-91c9-4f69dfe6677c', 'Which expression is equivalent to $(4x+63)^2 - (4x-63)^2$?', NULL, NULL, '[{"id":"A","text":"$1008x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+63$, $v=4x-63$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$252x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+3969$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+63)^2 - (4x-63)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+63$, $v=4x-63$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(126)=1008x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $1008x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($252x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+3969$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6703a8f6-5d35-410e-8751-c26371adcc17', 'Which expression is equivalent to $(5x+64)^2 - (5x-64)^2$?', NULL, NULL, '[{"id":"A","text":"$1280x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+64$, $v=5x-64$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$256x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+4096$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+64)^2 - (5x-64)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+64$, $v=5x-64$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(128)=1280x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $1280x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($256x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+4096$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e5298e12-cc22-42b4-a6f0-952033693697', 'Which expression is equivalent to $(3x+5)^2 - (3x-5)^2$?', NULL, NULL, '[{"id":"A","text":"$60x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+5$, $v=3x-5$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$20x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+25$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+5)^2 - (3x-5)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+5$, $v=3x-5$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(10)=60x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $60x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($20x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+25$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('16c6dbec-fe10-49f7-a468-2468efdad877', 'Which expression is equivalent to $(4x+6)^2 - (4x-6)^2$?', NULL, NULL, '[{"id":"A","text":"$96x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+6$, $v=4x-6$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$24x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+36$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+6)^2 - (4x-6)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+6$, $v=4x-6$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(12)=96x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $96x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($24x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+36$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('370535bb-1248-48b8-bfc1-813414ee8545', 'Which expression is equivalent to $(5x+7)^2 - (5x-7)^2$?', NULL, NULL, '[{"id":"A","text":"$140x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+7$, $v=5x-7$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$28x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+49$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+7)^2 - (5x-7)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+7$, $v=5x-7$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(14)=140x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $140x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($28x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+49$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ec63d274-ad2e-4213-ae88-67225d05080c', 'Which expression is equivalent to $(3x+8)^2 - (3x-8)^2$?', NULL, NULL, '[{"id":"A","text":"$96x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+8$, $v=3x-8$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$32x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+64$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+8)^2 - (3x-8)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+8$, $v=3x-8$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(16)=96x$.
**Step 4:** Confirm by expanding both forms.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $96x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($32x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+64$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
