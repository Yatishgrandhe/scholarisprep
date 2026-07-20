BEGIN;
DELETE FROM public.questions WHERE exam_type = 'SAT' AND section = 'math' AND is_platform_question = true;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b267b079-1009-48cb-ba57-5417a6556f87', 'Solve for $x$: $2x + 3 = 11$', NULL, NULL, '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Choice A ($2$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$3$","is_correct":false,"explanation":"Choice B ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$4$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 3. **Step 2:** Divide by 2."},{"id":"D","text":"$5$","is_correct":false,"explanation":"Choice D ($5$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $2x + 3 = 11$

**Step 2 — Solve.** **Step 1:** $2x = 8$
**Step 2:** $x = 4$

**Step 3 — Answer C.** $4$

**Distractor analysis:**
- **A** ($2$): Choice A ($2$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($3$): Choice B ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($5$): Choice D ($5$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('35f29157-32b8-4d9a-b782-ab4d89e21e45', 'Solve for $x$: $3x + 4 = 19$ Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"5","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Solve for $x$: $3x + 4 = 19$ Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $3x = 15$
**Step 2:** $x = 5$

**Step 3 — Answer SPR.** 5', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d702a990-a108-4b42-a97a-9154c223b8f7', 'Solve for $x$: $4x + 5 = 29$', NULL, NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$5$","is_correct":false,"explanation":"Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 5. **Step 2:** Divide by 4."},{"id":"D","text":"$7$","is_correct":false,"explanation":"Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $4x + 5 = 29$

**Step 2 — Solve.** **Step 1:** $4x = 24$
**Step 2:** $x = 6$

**Step 3 — Answer C.** $6$

**Distractor analysis:**
- **A** ($4$): Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($5$): Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($7$): Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d6f0503d-7509-40da-887f-7a028e0dba42', 'Solve for $x$: $2x + 6 = 20$', NULL, NULL, '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$6$","is_correct":false,"explanation":"Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 6. **Step 2:** Divide by 2."},{"id":"D","text":"$8$","is_correct":false,"explanation":"Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $2x + 6 = 20$

**Step 2 — Solve.** **Step 1:** $2x = 14$
**Step 2:** $x = 7$

**Step 3 — Answer C.** $7$

**Distractor analysis:**
- **A** ($5$): Choice A ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($6$): Choice B ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($8$): Choice D ($8$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a5c1085-da23-46c0-b285-aaa1ea298159', 'Solve for $x$: $3x + 3 = 27$', NULL, NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$7$","is_correct":false,"explanation":"Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 3. **Step 2:** Divide by 3."},{"id":"D","text":"$9$","is_correct":false,"explanation":"Choice D ($9$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $3x + 3 = 27$

**Step 2 — Solve.** **Step 1:** $3x = 24$
**Step 2:** $x = 8$

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($6$): Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($7$): Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($9$): Choice D ($9$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dd279a35-904a-4f77-b1fd-c5dde028ff67', 'Solve for $x$: $4x + 4 = 40$ Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"9","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Solve for $x$: $4x + 4 = 40$ Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $4x = 36$
**Step 2:** $x = 9$

**Step 3 — Answer SPR.** 9', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8b546b1f-0669-4b43-974d-6303456c6d98', 'Solve for $x$: $2x + 5 = 13$', NULL, NULL, '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Choice A ($2$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$3$","is_correct":false,"explanation":"Choice B ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$4$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 5. **Step 2:** Divide by 2."},{"id":"D","text":"$5$","is_correct":false,"explanation":"Choice D ($5$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $2x + 5 = 13$

**Step 2 — Solve.** **Step 1:** $2x = 8$
**Step 2:** $x = 4$

**Step 3 — Answer C.** $4$

**Distractor analysis:**
- **A** ($2$): Choice A ($2$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($3$): Choice B ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($5$): Choice D ($5$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b0eec64c-a1a3-406e-bc8b-8d51a06b8d7e', 'Solve for $x$: $3x + 6 = 21$', NULL, NULL, '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Choice A ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$4$","is_correct":false,"explanation":"Choice B ($4$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$5$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 6. **Step 2:** Divide by 3."},{"id":"D","text":"$6$","is_correct":false,"explanation":"Choice D ($6$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $3x + 6 = 21$

**Step 2 — Solve.** **Step 1:** $3x = 15$
**Step 2:** $x = 5$

**Step 3 — Answer C.** $5$

**Distractor analysis:**
- **A** ($3$): Choice A ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($4$): Choice B ($4$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($6$): Choice D ($6$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('074bba3a-2401-452c-87f1-dab25078ce38', 'Solve for $x$: $4x + 3 = 27$', NULL, NULL, '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$5$","is_correct":false,"explanation":"Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 3. **Step 2:** Divide by 4."},{"id":"D","text":"$7$","is_correct":false,"explanation":"Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $4x + 3 = 27$

**Step 2 — Solve.** **Step 1:** $4x = 24$
**Step 2:** $x = 6$

**Step 3 — Answer C.** $6$

**Distractor analysis:**
- **A** ($4$): Choice A ($4$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($5$): Choice B ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($7$): Choice D ($7$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e91ad4ab-8e69-43aa-a915-feb2ed161651', 'Solve for $x$: $2x + 4 = 18$ Enter your answer as a number.', NULL, NULL, '[{"id":"SPR","text":"7","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Solve for $x$: $2x + 4 = 18$ Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** $2x = 14$
**Step 2:** $x = 7$

**Step 3 — Answer SPR.** 7', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6e2bbe9-ff81-4d9d-a630-60386a340dce', 'Solve for $x$: $3x + 5 = 29$', NULL, NULL, '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$7$","is_correct":false,"explanation":"Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Subtract 5. **Step 2:** Divide by 3."},{"id":"D","text":"$9$","is_correct":false,"explanation":"Choice D ($9$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb, 'C', '**Step 1 — Understand.** Solve for $x$: $3x + 5 = 29$

**Step 2 — Solve.** **Step 1:** $3x = 24$
**Step 2:** $x = 8$

**Step 3 — Answer C.** $8$

**Distractor analysis:**
- **A** ($6$): Choice A ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($7$): Choice B ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($9$): Choice D ($9$…) reflects a common misread or arithmetic slip — re-check each operation.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
