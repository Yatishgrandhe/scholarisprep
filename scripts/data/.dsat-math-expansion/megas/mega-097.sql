BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c50b501-914d-4517-b6df-e15900ce4d13', 'Given $x+y=25$ and $3x-y=17$, what is $x$?', 'At an event, 25 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=17$.', 'passage', '[{"id":"A","text":"$14$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=56$. **Step 2:** $x=14$."},{"id":"B","text":"$13$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$15$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=25$ and $3x-y=17$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=25+17$ → $4x=56$.
**Step 2:** $x=14$.
**Step 3:** Back-substitute: $y=11$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $14$

**Distractor analysis:**
- **B** ($13$): One less than the solution.
- **C** ($11$): Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2cd06a7e-3ca7-4867-8f99-1e78e8fc2322', 'Given $x+y=27$ and $4x-y=18$, what is $x$? Enter your answer as a number.', 'At an event, 27 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=18$.', 'passage', '[{"id":"SPR","text":"15","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=27$ and $4x-y=18$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=27+18$ → $5x=75$.
**Step 2:** $x=15$.
**Step 3:** Back-substitute: $y=12$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 15', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('29f867be-e2d3-481b-8d10-315633ce8ef0', 'Given $x+y=29$ and $3x-y=19$, what is $x$?', 'At an event, 29 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=19$.', 'passage', '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=64$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=29$ and $3x-y=19$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=29+19$ → $4x=64$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=13$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $16$

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($13$): Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('857054b2-8ed3-4e60-a007-00b9cf7f698e', 'Given $x+y=31$ and $4x-y=20$, what is $x$?', 'At an event, 31 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=20$.', 'passage', '[{"id":"A","text":"$17$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=85$. **Step 2:** $x=17$."},{"id":"B","text":"$16$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$18$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=31$ and $4x-y=20$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=31+20$ → $5x=85$.
**Step 2:** $x=17$.
**Step 3:** Back-substitute: $y=14$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $17$

**Distractor analysis:**
- **B** ($16$): One less than the solution.
- **C** ($14$): Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f7c38653-3e67-4fe5-96e1-4fa9d5cc3cb1', 'Given $x+y=33$ and $3x-y=21$, what is $x$?', 'At an event, 33 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=21$.', 'passage', '[{"id":"A","text":"$18$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=72$. **Step 2:** $x=18$."},{"id":"B","text":"$17$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$19$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=33$ and $3x-y=21$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=33+21$ → $4x=72$.
**Step 2:** $x=18$.
**Step 3:** Back-substitute: $y=15$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $18$

**Distractor analysis:**
- **B** ($17$): One less than the solution.
- **C** ($15$): Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bfe58bf2-a0f7-4442-9d04-17ae0d57d07c', 'Given $x+y=35$ and $4x-y=22$, what is $x$? Enter your answer as a number.', 'At an event, 35 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.', 'passage', '[{"id":"SPR","text":"19","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=35$ and $4x-y=22$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=35+22$ → $5x=95$.
**Step 2:** $x=19$.
**Step 3:** Back-substitute: $y=16$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 19', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e753c0c0-63d4-40ed-890a-b81e75cf2b9a', 'Given $x+y=37$ and $3x-y=23$, what is $x$?', 'At an event, 37 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=23$.', 'passage', '[{"id":"A","text":"$20$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=80$. **Step 2:** $x=20$."},{"id":"B","text":"$19$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$21$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=37$ and $3x-y=23$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=37+23$ → $4x=80$.
**Step 2:** $x=20$.
**Step 3:** Back-substitute: $y=17$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $20$

**Distractor analysis:**
- **B** ($19$): One less than the solution.
- **C** ($17$): Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($21$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9e07503d-f060-4037-ac72-885f5cb431c8', 'Given $x+y=39$ and $4x-y=24$, what is $x$?', 'At an event, 39 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=24$.', 'passage', '[{"id":"A","text":"$21$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=105$. **Step 2:** $x=21$."},{"id":"B","text":"$20$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$22$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=39$ and $4x-y=24$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=39+24$ → $5x=105$.
**Step 2:** $x=21$.
**Step 3:** Back-substitute: $y=18$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $21$

**Distractor analysis:**
- **B** ($20$): One less than the solution.
- **C** ($18$): Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($22$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9d868186-e1cd-4b38-9914-0dadc7605930', 'Given $x+y=41$ and $3x-y=25$, what is $x$?', 'At an event, 41 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=25$.', 'passage', '[{"id":"A","text":"$22$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=88$. **Step 2:** $x=22$."},{"id":"B","text":"$21$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$23$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=41$ and $3x-y=25$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=41+25$ → $4x=88$.
**Step 2:** $x=22$.
**Step 3:** Back-substitute: $y=19$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $22$

**Distractor analysis:**
- **B** ($21$): One less than the solution.
- **C** ($19$): Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($23$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('638a49e9-aab6-4b77-96d8-ec1f152191ae', 'Given $x+y=43$ and $4x-y=26$, what is $x$? Enter your answer as a number.', 'At an event, 43 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=26$.', 'passage', '[{"id":"SPR","text":"23","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=43$ and $4x-y=26$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=43+26$ → $5x=115$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=20$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 23', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e9834074-8ada-497a-9ed6-b696a92e1466', 'Given $x+y=45$ and $3x-y=27$, what is $x$?', 'At an event, 45 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=27$.', 'passage', '[{"id":"A","text":"$24$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=96$. **Step 2:** $x=24$."},{"id":"B","text":"$23$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$25$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=45$ and $3x-y=27$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=45+27$ → $4x=96$.
**Step 2:** $x=24$.
**Step 3:** Back-substitute: $y=21$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $24$

**Distractor analysis:**
- **B** ($23$): One less than the solution.
- **C** ($21$): Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($25$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('35d5165e-cc76-42b9-8524-d5a9e6fefda9', 'Given $x+y=47$ and $4x-y=28$, what is $x$?', 'At an event, 47 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=28$.', 'passage', '[{"id":"A","text":"$25$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=125$. **Step 2:** $x=25$."},{"id":"B","text":"$24$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$26$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=47$ and $4x-y=28$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=47+28$ → $5x=125$.
**Step 2:** $x=25$.
**Step 3:** Back-substitute: $y=22$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $25$

**Distractor analysis:**
- **B** ($24$): One less than the solution.
- **C** ($22$): Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($26$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
