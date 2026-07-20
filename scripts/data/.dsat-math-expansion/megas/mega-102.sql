BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cc541e42-a02d-458e-b84d-71eab2c83b25', 'Given $x+y=28$ and $3x-y=23$, what is $x$?', 'At an event, 28 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=23$.', 'passage', '[{"id":"A","text":"$17$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=68$. **Step 2:** $x=17$."},{"id":"B","text":"$16$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$18$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=28$ and $3x-y=23$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=28+23$ → $4x=68$.
**Step 2:** $x=17$.
**Step 3:** Back-substitute: $y=11$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $17$

**Distractor analysis:**
- **B** ($16$): One less than the solution.
- **C** ($11$): Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d00b75b2-6da7-4411-9e55-a6ba55b745fe', 'Given $x+y=30$ and $4x-y=24$, what is $x$? Enter your answer as a number.', 'At an event, 30 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=24$.', 'passage', '[{"id":"SPR","text":"18","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=30$ and $4x-y=24$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=30+24$ → $5x=90$.
**Step 2:** $x=18$.
**Step 3:** Back-substitute: $y=12$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 18', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a2ccaa09-e021-40e8-b94b-dd7433d3f896', 'Given $x+y=32$ and $3x-y=25$, what is $x$?', 'At an event, 32 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=25$.', 'passage', '[{"id":"A","text":"$19$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=76$. **Step 2:** $x=19$."},{"id":"B","text":"$18$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$20$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=32$ and $3x-y=25$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=32+25$ → $4x=76$.
**Step 2:** $x=19$.
**Step 3:** Back-substitute: $y=13$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $19$

**Distractor analysis:**
- **B** ($18$): One less than the solution.
- **C** ($13$): Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($20$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('85ce774d-fc39-4a59-b811-446050c94c4e', 'Given $x+y=34$ and $4x-y=26$, what is $x$?', 'At an event, 34 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=26$.', 'passage', '[{"id":"A","text":"$20$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=100$. **Step 2:** $x=20$."},{"id":"B","text":"$19$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$21$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=34$ and $4x-y=26$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=34+26$ → $5x=100$.
**Step 2:** $x=20$.
**Step 3:** Back-substitute: $y=14$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $20$

**Distractor analysis:**
- **B** ($19$): One less than the solution.
- **C** ($14$): Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($21$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a165049e-c688-4b86-a88c-aff04fc4343d', 'Given $x+y=36$ and $3x-y=27$, what is $x$?', 'At an event, 36 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=27$.', 'passage', '[{"id":"A","text":"$21$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=84$. **Step 2:** $x=21$."},{"id":"B","text":"$20$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$22$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=36$ and $3x-y=27$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=36+27$ → $4x=84$.
**Step 2:** $x=21$.
**Step 3:** Back-substitute: $y=15$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $21$

**Distractor analysis:**
- **B** ($20$): One less than the solution.
- **C** ($15$): Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($22$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f81ef297-6b74-4225-a407-50db499e89b0', 'Given $x+y=38$ and $4x-y=28$, what is $x$? Enter your answer as a number.', 'At an event, 38 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=28$.', 'passage', '[{"id":"SPR","text":"22","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=38$ and $4x-y=28$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=38+28$ → $5x=110$.
**Step 2:** $x=22$.
**Step 3:** Back-substitute: $y=16$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 22', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3d3f183e-eb62-4e5b-b47f-c906543add31', 'Given $x+y=40$ and $3x-y=29$, what is $x$?', 'At an event, 40 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=29$.', 'passage', '[{"id":"A","text":"$23$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=92$. **Step 2:** $x=23$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=40$ and $3x-y=29$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=40+29$ → $4x=92$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=17$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $23$

**Distractor analysis:**
- **B** ($22$): One less than the solution.
- **C** ($17$): Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('37497628-c150-46aa-a5cf-aa149726b5e4', 'Given $x+y=42$ and $4x-y=30$, what is $x$?', 'At an event, 42 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=30$.', 'passage', '[{"id":"A","text":"$24$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=120$. **Step 2:** $x=24$."},{"id":"B","text":"$23$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$25$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=42$ and $4x-y=30$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=42+30$ → $5x=120$.
**Step 2:** $x=24$.
**Step 3:** Back-substitute: $y=18$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $24$

**Distractor analysis:**
- **B** ($23$): One less than the solution.
- **C** ($18$): Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($25$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9fa188bf-3dd3-47d4-8107-65fc6ba9e7a0', 'Given $x+y=44$ and $3x-y=31$, what is $x$?', 'At an event, 44 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=31$.', 'passage', '[{"id":"A","text":"$25$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=100$. **Step 2:** $x=25$."},{"id":"B","text":"$24$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$26$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=44$ and $3x-y=31$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=44+31$ → $4x=100$.
**Step 2:** $x=25$.
**Step 3:** Back-substitute: $y=19$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $25$

**Distractor analysis:**
- **B** ($24$): One less than the solution.
- **C** ($19$): Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($26$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e5fdb229-5b14-4dc2-b1fb-c03ec172900b', 'Given $x+y=46$ and $4x-y=32$, what is $x$? Enter your answer as a number.', 'At an event, 46 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=32$.', 'passage', '[{"id":"SPR","text":"26","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=46$ and $4x-y=32$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=46+32$ → $5x=130$.
**Step 2:** $x=26$.
**Step 3:** Back-substitute: $y=20$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 26', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1bf739d9-182f-4dbf-b049-69e138e8a292', 'Given $x+y=48$ and $3x-y=33$, what is $x$?', 'At an event, 48 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=33$.', 'passage', '[{"id":"A","text":"$27$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=108$. **Step 2:** $x=27$."},{"id":"B","text":"$26$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$28$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=48$ and $3x-y=33$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=48+33$ → $4x=108$.
**Step 2:** $x=27$.
**Step 3:** Back-substitute: $y=21$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $27$

**Distractor analysis:**
- **B** ($26$): One less than the solution.
- **C** ($21$): Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($28$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f570417-e687-4ee4-a916-6e23dc72828f', 'Given $x+y=50$ and $4x-y=34$, what is $x$?', 'At an event, 50 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=34$.', 'passage', '[{"id":"A","text":"$28$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=140$. **Step 2:** $x=28$."},{"id":"B","text":"$27$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$29$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=50$ and $4x-y=34$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=50+34$ → $5x=140$.
**Step 2:** $x=28$.
**Step 3:** Back-substitute: $y=22$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $28$

**Distractor analysis:**
- **B** ($27$): One less than the solution.
- **C** ($22$): Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($29$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
