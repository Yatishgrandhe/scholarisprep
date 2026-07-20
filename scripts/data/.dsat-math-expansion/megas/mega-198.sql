BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c8fcb4c4-34db-44ab-b4e6-f2c7e041926d', 'Which expression is equivalent to $(4x+45)^2 - (4x-45)^2$?', NULL, NULL, '[{"id":"A","text":"$720x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+45$, $v=4x-45$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$180x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2025$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+45)^2 - (4x-45)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+45$, $v=4x-45$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(90)=720x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $720x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($180x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2025$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6739c27d-0632-4382-a25b-8f13811a619a', 'Which expression is equivalent to $(5x+46)^2 - (5x-46)^2$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"920x","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which expression is equivalent to $(5x+46)^2 - (5x-46)^2$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Let $u=5x+46$, $v=5x-46$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(92)=920x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer SPR.** 920x', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3dee9f0b-994c-4cee-b075-73f97cb3e996', 'Which expression is equivalent to $(3x+47)^2 - (3x-47)^2$?', NULL, NULL, '[{"id":"A","text":"$564x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+47$, $v=3x-47$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$188x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2209$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+47)^2 - (3x-47)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+47$, $v=3x-47$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(94)=564x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $564x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($188x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+2209$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d59e7660-652a-4947-907d-fb61b799e6ee', 'Which expression is equivalent to $(4x+48)^2 - (4x-48)^2$?', NULL, NULL, '[{"id":"A","text":"$768x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+48$, $v=4x-48$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$192x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2304$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+48)^2 - (4x-48)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+48$, $v=4x-48$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(96)=768x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $768x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($192x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2304$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('794171a3-2fde-4e9d-a3e5-14c4c7dbdbe4', 'Which expression is equivalent to $(5x+49)^2 - (5x-49)^2$?', NULL, NULL, '[{"id":"A","text":"$980x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+49$, $v=5x-49$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$196x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+2401$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+49)^2 - (5x-49)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+49$, $v=5x-49$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(98)=980x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $980x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($196x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+2401$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e8491f54-8333-456c-af87-d0285c8c5f56', 'Which expression is equivalent to $(3x+50)^2 - (3x-50)^2$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"600x","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which expression is equivalent to $(3x+50)^2 - (3x-50)^2$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Let $u=3x+50$, $v=3x-50$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(100)=600x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer SPR.** 600x', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('653ca374-1cac-4194-a820-4df71665a2d9', 'Which expression is equivalent to $(4x+51)^2 - (4x-51)^2$?', NULL, NULL, '[{"id":"A","text":"$816x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+51$, $v=4x-51$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$204x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2601$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(4x+51)^2 - (4x-51)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=4x+51$, $v=4x-51$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(102)=816x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $816x$

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($204x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2601$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('84f73269-6964-4a90-8cf2-2bdff9198b7d', 'Which expression is equivalent to $(5x+52)^2 - (5x-52)^2$?', NULL, NULL, '[{"id":"A","text":"$1040x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+52$, $v=5x-52$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$208x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+2704$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+52)^2 - (5x-52)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+52$, $v=5x-52$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(104)=1040x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $1040x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($208x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+2704$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3669e190-8417-4496-8de8-bb179a644930', 'Which expression is equivalent to $(3x+53)^2 - (3x-53)^2$?', NULL, NULL, '[{"id":"A","text":"$636x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+53$, $v=3x-53$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$212x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2809$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+53)^2 - (3x-53)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+53$, $v=3x-53$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(106)=636x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $636x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($212x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+2809$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('081b664b-4c2d-4a24-a9c1-07ac479a14ea', 'Which expression is equivalent to $(4x+54)^2 - (4x-54)^2$? Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"864x","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Which expression is equivalent to $(4x+54)^2 - (4x-54)^2$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Let $u=4x+54$, $v=4x-54$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(108)=864x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer SPR.** 864x', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a8804f4-a07b-45ed-9758-8533da28a18c', 'Which expression is equivalent to $(5x+55)^2 - (5x-55)^2$?', NULL, NULL, '[{"id":"A","text":"$1100x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+55$, $v=5x-55$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$220x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+3025$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(5x+55)^2 - (5x-55)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=5x+55$, $v=5x-55$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(110)=1100x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $1100x$

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($220x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+3025$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('543719e9-60ac-4950-80c3-daefc13904d1', 'Which expression is equivalent to $(3x+56)^2 - (3x-56)^2$?', NULL, NULL, '[{"id":"A","text":"$672x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+56$, $v=3x-56$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$224x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+3136$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1 — Understand.** Which expression is equivalent to $(3x+56)^2 - (3x-56)^2$?

**Step 2 — Solve.** **Step 1:** Let $u=3x+56$, $v=3x-56$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(112)=672x$.
**Step 4:** Confirm by expanding both forms.

**Step 3 — Answer A.** $672x$

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($224x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+3136$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"EQS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
