BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fab09271-4f16-493f-93fd-c640f4fbca67', 'Given $x+y=124$ and $3x-y=71$, what is $x$?', 'At an event, 124 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=71$.', 'passage', '[{"id":"A","text":"$65$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=260$. **Step 2:** $x=65$."},{"id":"B","text":"$64$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$66$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=124$ and $3x-y=71$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=124+71$ → $4x=260$.
**Step 2:** $x=65$.
**Step 3:** Back-substitute: $y=59$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $65$

**Distractor analysis:**
- **B** ($64$): One less than the solution.
- **C** ($59$): Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($66$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('378601a6-6e8f-469e-a3f2-135ef6996509', 'Given $x+y=126$ and $4x-y=72$, what is $x$? Enter your answer as a number.', 'At an event, 126 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=72$.', 'passage', '[{"id":"SPR","text":"66","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=126$ and $4x-y=72$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=126+72$ → $5x=330$.
**Step 2:** $x=66$.
**Step 3:** Back-substitute: $y=60$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 66', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('44af9ad6-0a4e-4a88-962f-b5d63f7b576d', 'Given $x+y=128$ and $3x-y=73$, what is $x$?', 'At an event, 128 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=73$.', 'passage', '[{"id":"A","text":"$67$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=268$. **Step 2:** $x=67$."},{"id":"B","text":"$66$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Choice C ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$68$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=128$ and $3x-y=73$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=128+73$ → $4x=268$.
**Step 2:** $x=67$.
**Step 3:** Back-substitute: $y=61$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $67$

**Distractor analysis:**
- **B** ($66$): One less than the solution.
- **C** ($61$): Choice C ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($68$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6b405bb9-8fd3-4adb-9e3e-a6a3006f3a10', 'Given $x+y=130$ and $4x-y=74$, what is $x$?', 'At an event, 130 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=74$.', 'passage', '[{"id":"A","text":"$68$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=340$. **Step 2:** $x=68$."},{"id":"B","text":"$67$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Choice C ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$69$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=130$ and $4x-y=74$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=130+74$ → $5x=340$.
**Step 2:** $x=68$.
**Step 3:** Back-substitute: $y=62$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $68$

**Distractor analysis:**
- **B** ($67$): One less than the solution.
- **C** ($62$): Choice C ($62$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($69$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('059e4815-6fd6-4fc8-a305-4e89621bedf8', 'Given $x+y=12$ and $3x-y=15$, what is $x$?', 'At an event, 12 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=15$.', 'passage', '[{"id":"A","text":"$9$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=36$. **Step 2:** $x=9$."},{"id":"B","text":"$8$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$3$","is_correct":false,"explanation":"Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$10$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=12$ and $3x-y=15$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=12+15$ → $4x=36$.
**Step 2:** $x=9$.
**Step 3:** Back-substitute: $y=3$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $9$

**Distractor analysis:**
- **B** ($8$): One less than the solution.
- **C** ($3$): Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($10$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3809284a-0870-4cd3-af5e-bf4c5195fc1c', 'Given $x+y=14$ and $4x-y=16$, what is $x$? Enter your answer as a number.', 'At an event, 14 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=16$.', 'passage', '[{"id":"SPR","text":"10","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=14$ and $4x-y=16$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=14+16$ → $5x=50$.
**Step 2:** $x=10$.
**Step 3:** Back-substitute: $y=4$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 10', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a102e6e-8812-4db4-a41f-f294c2a41b4e', 'Given $x+y=16$ and $3x-y=17$, what is $x$?', 'At an event, 16 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=17$.', 'passage', '[{"id":"A","text":"$11$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=44$. **Step 2:** $x=11$."},{"id":"B","text":"$10$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$12$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=16$ and $3x-y=17$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=16+17$ → $4x=44$.
**Step 2:** $x=11$.
**Step 3:** Back-substitute: $y=5$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $11$

**Distractor analysis:**
- **B** ($10$): One less than the solution.
- **C** ($5$): Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($12$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('123ccc1d-b39e-431d-8a64-80529926a2d4', 'Given $x+y=18$ and $4x-y=18$, what is $x$?', 'At an event, 18 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=18$.', 'passage', '[{"id":"A","text":"$12$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=60$. **Step 2:** $x=12$."},{"id":"B","text":"$11$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$13$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=18$ and $4x-y=18$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=18+18$ → $5x=60$.
**Step 2:** $x=12$.
**Step 3:** Back-substitute: $y=6$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $12$

**Distractor analysis:**
- **B** ($11$): One less than the solution.
- **C** ($6$): Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7da05b42-2bb7-4a76-86fb-c24643e690f8', 'Given $x+y=20$ and $3x-y=19$, what is $x$?', 'At an event, 20 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=19$.', 'passage', '[{"id":"A","text":"$13$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=52$. **Step 2:** $x=13$."},{"id":"B","text":"$12$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$14$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=20$ and $3x-y=19$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=20+19$ → $4x=52$.
**Step 2:** $x=13$.
**Step 3:** Back-substitute: $y=7$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $13$

**Distractor analysis:**
- **B** ($12$): One less than the solution.
- **C** ($7$): Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('64b8efc7-18f2-4d6d-b43f-cbc2894bc96e', 'Given $x+y=22$ and $4x-y=20$, what is $x$? Enter your answer as a number.', 'At an event, 22 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=20$.', 'passage', '[{"id":"SPR","text":"14","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=22$ and $4x-y=20$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=22+20$ → $5x=70$.
**Step 2:** $x=14$.
**Step 3:** Back-substitute: $y=8$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 14', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('80aca9aa-cacd-4237-be2b-f12f979876ae', 'Given $x+y=24$ and $3x-y=21$, what is $x$?', 'At an event, 24 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=21$.', 'passage', '[{"id":"A","text":"$15$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=60$. **Step 2:** $x=15$."},{"id":"B","text":"$14$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$16$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=24$ and $3x-y=21$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=24+21$ → $4x=60$.
**Step 2:** $x=15$.
**Step 3:** Back-substitute: $y=9$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $15$

**Distractor analysis:**
- **B** ($14$): One less than the solution.
- **C** ($9$): Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('01c30f3b-61dc-4f0a-8375-a1246075ffd6', 'Given $x+y=26$ and $4x-y=22$, what is $x$?', 'At an event, 26 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.', 'passage', '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=80$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=26$ and $4x-y=22$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=26+22$ → $5x=80$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $16$

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
