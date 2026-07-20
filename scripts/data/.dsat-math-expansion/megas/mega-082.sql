BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('975c668e-522e-405e-a39d-f775db62e2d0', 'Given $x+y=23$ and $3x-y=13$, what is $x$?', 'At an event, 23 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=13$.', 'passage', '[{"id":"A","text":"$12$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=48$. **Step 2:** $x=12$."},{"id":"B","text":"$11$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$13$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=23$ and $3x-y=13$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=23+13$ → $4x=48$.
**Step 2:** $x=12$.
**Step 3:** Back-substitute: $y=11$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $12$

**Distractor analysis:**
- **B** ($11$): One less than the solution.
- **C** ($11$): Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ba2e7c9e-cbb0-4921-8b8e-866b781a58a1', 'Given $x+y=25$ and $4x-y=14$, what is $x$? Enter your answer as a number.', 'At an event, 25 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=14$.', 'passage', '[{"id":"SPR","text":"13","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=25$ and $4x-y=14$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=25+14$ → $5x=65$.
**Step 2:** $x=13$.
**Step 3:** Back-substitute: $y=12$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 13', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6935d2bf-4878-4355-910d-ad86431cf7b4', 'Given $x+y=27$ and $3x-y=15$, what is $x$?', 'At an event, 27 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=15$.', 'passage', '[{"id":"A","text":"$14$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=56$. **Step 2:** $x=14$."},{"id":"B","text":"$13$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$15$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=27$ and $3x-y=15$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=27+15$ → $4x=56$.
**Step 2:** $x=14$.
**Step 3:** Back-substitute: $y=13$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $14$

**Distractor analysis:**
- **B** ($13$): One less than the solution.
- **C** ($13$): Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1b59a287-aa91-41ef-9bb6-4324e489ebde', 'Given $x+y=29$ and $4x-y=16$, what is $x$?', 'At an event, 29 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=16$.', 'passage', '[{"id":"A","text":"$15$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=75$. **Step 2:** $x=15$."},{"id":"B","text":"$14$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$16$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=29$ and $4x-y=16$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=29+16$ → $5x=75$.
**Step 2:** $x=15$.
**Step 3:** Back-substitute: $y=14$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $15$

**Distractor analysis:**
- **B** ($14$): One less than the solution.
- **C** ($14$): Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('95749cb1-81c2-440d-975c-88f8d4359304', 'Given $x+y=31$ and $3x-y=17$, what is $x$?', 'At an event, 31 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=17$.', 'passage', '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=64$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=31$ and $3x-y=17$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=31+17$ → $4x=64$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=15$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $16$

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($15$): Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b2561f4a-2996-45d9-9fa6-780096e47595', 'Given $x+y=33$ and $4x-y=18$, what is $x$? Enter your answer as a number.', 'At an event, 33 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=18$.', 'passage', '[{"id":"SPR","text":"17","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=33$ and $4x-y=18$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=33+18$ → $5x=85$.
**Step 2:** $x=17$.
**Step 3:** Back-substitute: $y=16$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 17', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b363d5f0-a1e2-4e4f-8756-a34dc1523d52', 'Given $x+y=35$ and $3x-y=19$, what is $x$?', 'At an event, 35 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=19$.', 'passage', '[{"id":"A","text":"$18$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=72$. **Step 2:** $x=18$."},{"id":"B","text":"$17$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$19$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=35$ and $3x-y=19$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=35+19$ → $4x=72$.
**Step 2:** $x=18$.
**Step 3:** Back-substitute: $y=17$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $18$

**Distractor analysis:**
- **B** ($17$): One less than the solution.
- **C** ($17$): Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8586c9a8-6927-4823-b6bf-8caa65da5b0c', 'Given $x+y=37$ and $4x-y=20$, what is $x$?', 'At an event, 37 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=20$.', 'passage', '[{"id":"A","text":"$19$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=95$. **Step 2:** $x=19$."},{"id":"B","text":"$18$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$20$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=37$ and $4x-y=20$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=37+20$ → $5x=95$.
**Step 2:** $x=19$.
**Step 3:** Back-substitute: $y=18$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $19$

**Distractor analysis:**
- **B** ($18$): One less than the solution.
- **C** ($18$): Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($20$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a99adc5f-a0e4-4234-b0a5-3875859368d8', 'Given $x+y=39$ and $3x-y=21$, what is $x$?', 'At an event, 39 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=21$.', 'passage', '[{"id":"A","text":"$20$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=80$. **Step 2:** $x=20$."},{"id":"B","text":"$19$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$21$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=39$ and $3x-y=21$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=39+21$ → $4x=80$.
**Step 2:** $x=20$.
**Step 3:** Back-substitute: $y=19$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $20$

**Distractor analysis:**
- **B** ($19$): One less than the solution.
- **C** ($19$): Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($21$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bc47248b-23e9-43d7-8d0e-1d29cf274705', 'Given $x+y=41$ and $4x-y=22$, what is $x$? Enter your answer as a number.', 'At an event, 41 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.', 'passage', '[{"id":"SPR","text":"21","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=41$ and $4x-y=22$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=41+22$ → $5x=105$.
**Step 2:** $x=21$.
**Step 3:** Back-substitute: $y=20$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 21', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1cc10e18-9aaa-4b03-a742-9a11d204305c', 'Given $x+y=43$ and $3x-y=23$, what is $x$?', 'At an event, 43 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=23$.', 'passage', '[{"id":"A","text":"$22$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=88$. **Step 2:** $x=22$."},{"id":"B","text":"$21$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$23$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=43$ and $3x-y=23$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=43+23$ → $4x=88$.
**Step 2:** $x=22$.
**Step 3:** Back-substitute: $y=21$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $22$

**Distractor analysis:**
- **B** ($21$): One less than the solution.
- **C** ($21$): Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($23$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f4c66d34-8758-41f2-b67c-8a899de78456', 'Given $x+y=45$ and $4x-y=24$, what is $x$?', 'At an event, 45 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=24$.', 'passage', '[{"id":"A","text":"$23$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=115$. **Step 2:** $x=23$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=45$ and $4x-y=24$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=45+24$ → $5x=115$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=22$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $23$

**Distractor analysis:**
- **B** ($22$): One less than the solution.
- **C** ($22$): Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
