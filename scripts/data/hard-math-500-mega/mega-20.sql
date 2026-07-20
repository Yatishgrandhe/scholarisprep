BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fcd4ec47-0f8a-4280-8ee0-d7fad03523b5', 'For $x^2 - 12x + 32 = 0$, what is the positive solution? (Discriminant $=16$.)', NULL, NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-4)(x-8)=0$.
**Step 2:** Roots $x=4$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":50}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('355d3c12-fecd-441f-9f6b-d8abdea9b3c4', 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)', NULL, NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-5)(x-9)=0$.
**Step 2:** Roots $x=5$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":51}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5cbd50cc-403f-4c7d-981b-261083880ac0', 'For $x^2 - 12x + 36 = 0$, what is the positive solution? (Discriminant $=0$.)', NULL, NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-6)(x-6)=0$.
**Step 2:** Roots $x=6$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":52}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bd0bc172-30b7-4999-8800-78dce99f7ac4', 'For $x^2 - 14x + 49 = 0$, what is the positive solution? (Discriminant $=0$.)', NULL, NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-7)(x-7)=0$.
**Step 2:** Roots $x=7$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":53}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('18d47d0b-011c-4418-aa69-9e6e81ae2d16', 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)', NULL, NULL, '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":54}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e32ff527-f67a-4937-8a6c-3b6f5d4dbcc2', 'For $x^2 - 13x + 36 = 0$, what is the positive solution? (Discriminant $=25$.)', NULL, NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1:** Factor: $(x-4)(x-9)=0$.
**Step 2:** Roots $x=4$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $25$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Advanced Math', 'Nonlinear equations in one variable', 'math', 'advanced', 'NRE', 'NRE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"NRE","insert_index":55}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0528a86-c601-4bc7-8300-77d4537cb4ff', 'Which expression is equivalent to $(3x+41)^2 - (3x-41)^2$?', NULL, NULL, '[{"id":"A","text":"$492x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+41$, $v=3x-41$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$164x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1681$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=3x+41$, $v=3x-41$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(82)=492x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($164x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+1681$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":56}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8fb9e4ec-24cf-4e6b-afa1-1b535402c650', 'Which expression is equivalent to $(4x+42)^2 - (4x-42)^2$?', NULL, NULL, '[{"id":"A","text":"$672x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+42$, $v=4x-42$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$168x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+1764$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=4x+42$, $v=4x-42$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(84)=672x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($168x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+1764$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":57}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('804ebb66-5c91-4031-97be-1de877b925ae', 'Which expression is equivalent to $(5x+43)^2 - (5x-43)^2$?', NULL, NULL, '[{"id":"A","text":"$860x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+43$, $v=5x-43$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$172x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+1849$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=5x+43$, $v=5x-43$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(86)=860x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($172x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+1849$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":58}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0aa3df1d-889c-4fa6-8912-2eb96133f629', 'Which expression is equivalent to $(3x+44)^2 - (3x-44)^2$?', NULL, NULL, '[{"id":"A","text":"$528x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+44$, $v=3x-44$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$176x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1936$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=3x+44$, $v=3x-44$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(88)=528x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($176x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+1936$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":59}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b090a112-ec26-44cc-8866-1a69ef45c155', 'Which expression is equivalent to $(4x+45)^2 - (4x-45)^2$?', NULL, NULL, '[{"id":"A","text":"$720x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+45$, $v=4x-45$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$180x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2025$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=4x+45$, $v=4x-45$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(90)=720x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($180x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2025$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":60}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('20c695d6-3387-40cf-990e-25238aa72f4a', 'Which expression is equivalent to $(5x+46)^2 - (5x-46)^2$?', NULL, NULL, '[{"id":"A","text":"$920x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+46$, $v=5x-46$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$184x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+2116$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=5x+46$, $v=5x-46$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(92)=920x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($184x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+2116$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":61}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe98f400-d83f-44f7-bee1-f93d644b00b0', 'Which expression is equivalent to $(3x+47)^2 - (3x-47)^2$?', NULL, NULL, '[{"id":"A","text":"$564x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+47$, $v=3x-47$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$188x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2209$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=3x+47$, $v=3x-47$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(94)=564x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($188x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+2209$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":62}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c822baa7-2433-4a9c-90f9-0716ef4fdcb2', 'Which expression is equivalent to $(4x+48)^2 - (4x-48)^2$?', NULL, NULL, '[{"id":"A","text":"$768x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=4x+48$, $v=4x-48$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$192x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+2304$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb, 'A', '**Step 1:** Let $u=4x+48$, $v=4x-48$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(8x)(96)=768x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($8x^2$): Squares each binomial separately — wrong approach.
- **C** ($192x$): Uses $4b$ instead of $4ab$.
- **D** ($16x^2+2304$): Adds squares; not equivalent.', NULL, 'Advanced Math', 'Equivalent expressions', 'math', 'advanced', 'EQS', 'EQS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"EQS","insert_index":63}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c83a203-720d-4f52-9529-8ec053c19bbe', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:11$ over 48 hours at 5 tasks/hour combined.', NULL, '[{"id":"A","text":"$955$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$958$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$960$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×48×(4+11)=3600$. **Step 2:** A''s share $\\frac{4}{15}×3600=960$."},{"id":"D","text":"$3600$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=5×48×(4+11)=3600$ tasks.
**Step 2:** A''s fraction $\frac{4}{15}$.
**Step 3:** $\frac{4}{15}×3600=960$ tasks.

**Distractor analysis:**
- **A** ($955$): Underestimates A''s share of the total.
- **B** ($958$): Close but ratio arithmetic is off.
- **D** ($3600$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":64}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c72afbf5-a7b3-4277-8a90-14f55f05a1cf', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:7$ over 49 hours at 3 tasks/hour combined.', NULL, '[{"id":"A","text":"$730$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$733$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$735$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×49×(5+7)=1764$. **Step 2:** A''s share $\\frac{5}{12}×1764=735$."},{"id":"D","text":"$1764$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=3×49×(5+7)=1764$ tasks.
**Step 2:** A''s fraction $\frac{5}{12}$.
**Step 3:** $\frac{5}{12}×1764=735$ tasks.

**Distractor analysis:**
- **A** ($730$): Underestimates A''s share of the total.
- **B** ($733$): Close but ratio arithmetic is off.
- **D** ($1764$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":65}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b8295bc-ca86-415d-9878-d6b25c1b9c3d', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $6:8$ over 50 hours at 4 tasks/hour combined.', NULL, '[{"id":"A","text":"$1195$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1198$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1200$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×50×(6+8)=2800$. **Step 2:** A''s share $\\frac{6}{14}×2800=1200$."},{"id":"D","text":"$2800$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=4×50×(6+8)=2800$ tasks.
**Step 2:** A''s fraction $\frac{6}{14}$.
**Step 3:** $\frac{6}{14}×2800=1200$ tasks.

**Distractor analysis:**
- **A** ($1195$): Underestimates A''s share of the total.
- **B** ($1198$): Close but ratio arithmetic is off.
- **D** ($2800$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":66}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5e6d5d6c-003c-4bd3-9fc3-2e443a74a758', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $7:9$ over 51 hours at 5 tasks/hour combined.', NULL, '[{"id":"A","text":"$1780$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1783$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1785$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=5×51×(7+9)=4080$. **Step 2:** A''s share $\\frac{7}{16}×4080=1785$."},{"id":"D","text":"$4080$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=5×51×(7+9)=4080$ tasks.
**Step 2:** A''s fraction $\frac{7}{16}$.
**Step 3:** $\frac{7}{16}×4080=1785$ tasks.

**Distractor analysis:**
- **A** ($1780$): Underestimates A''s share of the total.
- **B** ($1783$): Close but ratio arithmetic is off.
- **D** ($4080$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":67}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('386d2a19-2c3c-4722-8903-f33a89347e9e', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $4:10$ over 52 hours at 3 tasks/hour combined.', NULL, '[{"id":"A","text":"$619$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$622$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$624$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=3×52×(4+10)=2184$. **Step 2:** A''s share $\\frac{4}{14}×2184=624$."},{"id":"D","text":"$2184$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=3×52×(4+10)=2184$ tasks.
**Step 2:** A''s fraction $\frac{4}{14}$.
**Step 3:** $\frac{4}{14}×2184=624$ tasks.

**Distractor analysis:**
- **A** ($619$): Underestimates A''s share of the total.
- **B** ($622$): Close but ratio arithmetic is off.
- **D** ($2184$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":68}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('49b1b769-b509-403d-b10a-f2777e2c8a74', 'How many tasks did the first worker complete?', 'Two workers split tasks in ratio $5:11$ over 53 hours at 4 tasks/hour combined.', NULL, '[{"id":"A","text":"$1055$","is_correct":false,"explanation":"Underestimates A''s share of the total."},{"id":"B","text":"$1058$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$1060$","is_correct":true,"explanation":"Correct (C). **Step 1:** Total $=4×53×(5+11)=3392$. **Step 2:** A''s share $\\frac{5}{16}×3392=1060$."},{"id":"D","text":"$3392$","is_correct":false,"explanation":"That is the combined total, not worker A''s count."}]'::jsonb, 'C', '**Step 1:** Combined output $=4×53×(5+11)=3392$ tasks.
**Step 2:** A''s fraction $\frac{5}{16}$.
**Step 3:** $\frac{5}{16}×3392=1060$ tasks.

**Distractor analysis:**
- **A** ($1055$): Underestimates A''s share of the total.
- **B** ($1058$): Close but ratio arithmetic is off.
- **D** ($3392$): That is the combined total, not worker A''s count.', NULL, 'Problem-Solving and Data Analysis', 'Ratios, rates, and proportions', 'math', 'psda', 'RAT', 'RAT', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"RAT","insert_index":69}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
