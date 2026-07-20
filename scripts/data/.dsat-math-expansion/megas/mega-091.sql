BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9832b713-c40d-4272-9412-42dc0cefaff1', 'Given $x+y=119$ and $3x-y=61$, what is $x$?', 'At an event, 119 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=61$.', 'passage', '[{"id":"A","text":"$60$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=240$. **Step 2:** $x=60$."},{"id":"B","text":"$59$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$61$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=119$ and $3x-y=61$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=119+61$ → $4x=240$.
**Step 2:** $x=60$.
**Step 3:** Back-substitute: $y=59$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $60$

**Distractor analysis:**
- **B** ($59$): One less than the solution.
- **C** ($59$): Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($61$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('07007c82-c126-403b-a280-26b4268e4f42', 'Given $x+y=121$ and $4x-y=62$, what is $x$? Enter your answer as a number.', 'At an event, 121 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=62$.', 'passage', '[{"id":"SPR","text":"61","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=121$ and $4x-y=62$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=121+62$ → $5x=305$.
**Step 2:** $x=61$.
**Step 3:** Back-substitute: $y=60$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 61', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('322330ad-65a6-4ba3-93be-cbe958c3af59', 'Given $x+y=123$ and $3x-y=63$, what is $x$?', 'At an event, 123 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=63$.', 'passage', '[{"id":"A","text":"$62$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=248$. **Step 2:** $x=62$."},{"id":"B","text":"$61$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Choice C ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$63$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=123$ and $3x-y=63$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=123+63$ → $4x=248$.
**Step 2:** $x=62$.
**Step 3:** Back-substitute: $y=61$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $62$

**Distractor analysis:**
- **B** ($61$): One less than the solution.
- **C** ($61$): Choice C ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($63$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3fcf82d6-bc64-494d-b83f-affa4b3e9510', 'Given $x+y=125$ and $4x-y=64$, what is $x$?', 'At an event, 125 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=64$.', 'passage', '[{"id":"A","text":"$63$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=315$. **Step 2:** $x=63$."},{"id":"B","text":"$62$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Choice C ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$64$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=125$ and $4x-y=64$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=125+64$ → $5x=315$.
**Step 2:** $x=63$.
**Step 3:** Back-substitute: $y=62$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $63$

**Distractor analysis:**
- **B** ($62$): One less than the solution.
- **C** ($62$): Choice C ($62$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($64$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00df1b5a-db33-425d-9503-726f66a5ef07', 'Given $x+y=7$ and $3x-y=5$, what is $x$?', 'At an event, 7 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=5$.', 'passage', '[{"id":"A","text":"$4$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=16$. **Step 2:** $x=4$."},{"id":"B","text":"$3$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$3$","is_correct":false,"explanation":"Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$5$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=7$ and $3x-y=5$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=7+5$ → $4x=16$.
**Step 2:** $x=4$.
**Step 3:** Back-substitute: $y=3$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $4$

**Distractor analysis:**
- **B** ($3$): One less than the solution.
- **C** ($3$): Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($5$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f7ecffdb-7bbd-4768-8a9d-56a50d02e4a6', 'Given $x+y=9$ and $4x-y=6$, what is $x$? Enter your answer as a number.', 'At an event, 9 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=6$.', 'passage', '[{"id":"SPR","text":"5","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=9$ and $4x-y=6$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=9+6$ → $5x=25$.
**Step 2:** $x=5$.
**Step 3:** Back-substitute: $y=4$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 5', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('250f0899-dc29-4384-b3ce-ccf091c93601', 'Given $x+y=11$ and $3x-y=7$, what is $x$?', 'At an event, 11 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=7$.', 'passage', '[{"id":"A","text":"$6$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=24$. **Step 2:** $x=6$."},{"id":"B","text":"$5$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$7$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=11$ and $3x-y=7$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=11+7$ → $4x=24$.
**Step 2:** $x=6$.
**Step 3:** Back-substitute: $y=5$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $6$

**Distractor analysis:**
- **B** ($5$): One less than the solution.
- **C** ($5$): Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($7$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b7f0970-913f-46c3-9645-e63457d4442d', 'Given $x+y=13$ and $4x-y=8$, what is $x$?', 'At an event, 13 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=8$.', 'passage', '[{"id":"A","text":"$7$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=35$. **Step 2:** $x=7$."},{"id":"B","text":"$6$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$8$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=13$ and $4x-y=8$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=13+8$ → $5x=35$.
**Step 2:** $x=7$.
**Step 3:** Back-substitute: $y=6$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $7$

**Distractor analysis:**
- **B** ($6$): One less than the solution.
- **C** ($6$): Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($8$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d85f0a74-89a0-49c8-9a7b-c808b23b48f2', 'Given $x+y=15$ and $3x-y=9$, what is $x$?', 'At an event, 15 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=9$.', 'passage', '[{"id":"A","text":"$8$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=32$. **Step 2:** $x=8$."},{"id":"B","text":"$7$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$9$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=15$ and $3x-y=9$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=15+9$ → $4x=32$.
**Step 2:** $x=8$.
**Step 3:** Back-substitute: $y=7$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $8$

**Distractor analysis:**
- **B** ($7$): One less than the solution.
- **C** ($7$): Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($9$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('77d61e9b-767a-44d0-a731-8318fafb1a85', 'Given $x+y=17$ and $4x-y=10$, what is $x$? Enter your answer as a number.', 'At an event, 17 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=10$.', 'passage', '[{"id":"SPR","text":"9","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=17$ and $4x-y=10$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=17+10$ → $5x=45$.
**Step 2:** $x=9$.
**Step 3:** Back-substitute: $y=8$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 9', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4943c122-a37b-4418-a7c9-417914ceee92', 'Given $x+y=21$ and $3x-y=15$, what is $x$?', 'At an event, 21 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=15$.', 'passage', '[{"id":"A","text":"$12$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=48$. **Step 2:** $x=12$."},{"id":"B","text":"$11$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$13$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=21$ and $3x-y=15$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=21+15$ → $4x=48$.
**Step 2:** $x=12$.
**Step 3:** Back-substitute: $y=9$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $12$

**Distractor analysis:**
- **B** ($11$): One less than the solution.
- **C** ($9$): Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5d365d98-4392-4dba-a14e-aece2ae82d02', 'Given $x+y=23$ and $4x-y=16$, what is $x$?', 'At an event, 23 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=16$.', 'passage', '[{"id":"A","text":"$13$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=65$. **Step 2:** $x=13$."},{"id":"B","text":"$12$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$14$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=23$ and $4x-y=16$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=23+16$ → $5x=65$.
**Step 2:** $x=13$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $13$

**Distractor analysis:**
- **B** ($12$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
