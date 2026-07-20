BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1cecb776-1871-4917-b027-41544d06c5f7', 'Given $x+y=71$ and $3x-y=37$, what is $x$?', 'At an event, 71 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=37$.', 'passage', '[{"id":"A","text":"$36$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=144$. **Step 2:** $x=36$."},{"id":"B","text":"$35$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Choice C ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$37$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=71$ and $3x-y=37$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=71+37$ → $4x=144$.
**Step 2:** $x=36$.
**Step 3:** Back-substitute: $y=35$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $36$

**Distractor analysis:**
- **B** ($35$): One less than the solution.
- **C** ($35$): Choice C ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($37$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5dbd75e-e0a6-49f4-88f0-e895c9a1b126', 'Given $x+y=73$ and $4x-y=38$, what is $x$? Enter your answer as a number.', 'At an event, 73 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=38$.', 'passage', '[{"id":"SPR","text":"37","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=73$ and $4x-y=38$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=73+38$ → $5x=185$.
**Step 2:** $x=37$.
**Step 3:** Back-substitute: $y=36$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 37', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6d3c1ad2-6e73-45a4-92e2-0c4f726b4921', 'Given $x+y=75$ and $3x-y=39$, what is $x$?', 'At an event, 75 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=39$.', 'passage', '[{"id":"A","text":"$38$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=152$. **Step 2:** $x=38$."},{"id":"B","text":"$37$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Choice C ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$39$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=75$ and $3x-y=39$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=75+39$ → $4x=152$.
**Step 2:** $x=38$.
**Step 3:** Back-substitute: $y=37$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $38$

**Distractor analysis:**
- **B** ($37$): One less than the solution.
- **C** ($37$): Choice C ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($39$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62f1e433-5b9f-476a-a5ee-af84d5faf872', 'Given $x+y=77$ and $4x-y=40$, what is $x$?', 'At an event, 77 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=40$.', 'passage', '[{"id":"A","text":"$39$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=195$. **Step 2:** $x=39$."},{"id":"B","text":"$38$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Choice C ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$40$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=77$ and $4x-y=40$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=77+40$ → $5x=195$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=38$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $39$

**Distractor analysis:**
- **B** ($38$): One less than the solution.
- **C** ($38$): Choice C ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($40$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('56758689-c7bf-452a-8562-7cbd0dcf7bf0', 'Given $x+y=79$ and $3x-y=41$, what is $x$?', 'At an event, 79 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=41$.', 'passage', '[{"id":"A","text":"$40$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=160$. **Step 2:** $x=40$."},{"id":"B","text":"$39$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$41$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=79$ and $3x-y=41$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=79+41$ → $4x=160$.
**Step 2:** $x=40$.
**Step 3:** Back-substitute: $y=39$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $40$

**Distractor analysis:**
- **B** ($39$): One less than the solution.
- **C** ($39$): Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($41$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3cfc649c-f3aa-43a1-b0aa-05379acc452b', 'Given $x+y=81$ and $4x-y=42$, what is $x$? Enter your answer as a number.', 'At an event, 81 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=42$.', 'passage', '[{"id":"SPR","text":"41","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=81$ and $4x-y=42$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=81+42$ → $5x=205$.
**Step 2:** $x=41$.
**Step 3:** Back-substitute: $y=40$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 41', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('82b712e3-b7e7-46a6-a034-ac87610938db', 'Given $x+y=83$ and $3x-y=43$, what is $x$?', 'At an event, 83 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=43$.', 'passage', '[{"id":"A","text":"$42$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=168$. **Step 2:** $x=42$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Choice C ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$43$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=83$ and $3x-y=43$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=83+43$ → $4x=168$.
**Step 2:** $x=42$.
**Step 3:** Back-substitute: $y=41$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $42$

**Distractor analysis:**
- **B** ($41$): One less than the solution.
- **C** ($41$): Choice C ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($43$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('391af4d2-9cc7-431f-940a-a20260f94af0', 'Given $x+y=85$ and $4x-y=44$, what is $x$?', 'At an event, 85 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=44$.', 'passage', '[{"id":"A","text":"$43$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=215$. **Step 2:** $x=43$."},{"id":"B","text":"$42$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Choice C ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$44$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=85$ and $4x-y=44$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=85+44$ → $5x=215$.
**Step 2:** $x=43$.
**Step 3:** Back-substitute: $y=42$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $43$

**Distractor analysis:**
- **B** ($42$): One less than the solution.
- **C** ($42$): Choice C ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($44$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('66e62267-785f-458f-aed1-1ee2bf943311', 'Given $x+y=87$ and $3x-y=45$, what is $x$?', 'At an event, 87 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=45$.', 'passage', '[{"id":"A","text":"$44$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=176$. **Step 2:** $x=44$."},{"id":"B","text":"$43$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Choice C ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$45$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=87$ and $3x-y=45$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=87+45$ → $4x=176$.
**Step 2:** $x=44$.
**Step 3:** Back-substitute: $y=43$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $44$

**Distractor analysis:**
- **B** ($43$): One less than the solution.
- **C** ($43$): Choice C ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($45$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('60bd3e1f-e406-4dfe-9a47-6459898709ef', 'Given $x+y=89$ and $4x-y=46$, what is $x$? Enter your answer as a number.', 'At an event, 89 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=46$.', 'passage', '[{"id":"SPR","text":"45","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=89$ and $4x-y=46$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=89+46$ → $5x=225$.
**Step 2:** $x=45$.
**Step 3:** Back-substitute: $y=44$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 45', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1b07e8ac-b1c8-4c10-9d25-f2f34c9ac40d', 'Given $x+y=91$ and $3x-y=47$, what is $x$?', 'At an event, 91 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=47$.', 'passage', '[{"id":"A","text":"$46$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=184$. **Step 2:** $x=46$."},{"id":"B","text":"$45$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Choice C ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$47$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=91$ and $3x-y=47$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=91+47$ → $4x=184$.
**Step 2:** $x=46$.
**Step 3:** Back-substitute: $y=45$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $46$

**Distractor analysis:**
- **B** ($45$): One less than the solution.
- **C** ($45$): Choice C ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($47$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('948e6dc4-84d5-404c-bff6-9fabf4dca97d', 'Given $x+y=93$ and $4x-y=48$, what is $x$?', 'At an event, 93 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=48$.', 'passage', '[{"id":"A","text":"$47$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=235$. **Step 2:** $x=47$."},{"id":"B","text":"$46$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Choice C ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$48$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=93$ and $4x-y=48$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=93+48$ → $5x=235$.
**Step 2:** $x=47$.
**Step 3:** Back-substitute: $y=46$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $47$

**Distractor analysis:**
- **B** ($46$): One less than the solution.
- **C** ($46$): Choice C ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($48$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
