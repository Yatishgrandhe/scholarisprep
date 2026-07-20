BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f1807be4-f98a-40bf-b8c7-ed67066c1db2', 'Given $x+y=121$ and $3x-y=65$, what is $x$?', 'At an event, 121 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=65$.', 'passage', '[{"id":"A","text":"$62$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=248$. **Step 2:** $x=62$."},{"id":"B","text":"$61$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$63$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=121$ and $3x-y=65$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=121+65$ → $4x=248$.
**Step 2:** $x=62$.
**Step 3:** Back-substitute: $y=59$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $62$

**Distractor analysis:**
- **B** ($61$): One less than the solution.
- **C** ($59$): Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($63$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3974ac5a-a575-4cf0-ae29-e795439da228', 'Given $x+y=123$ and $4x-y=66$, what is $x$? Enter your answer as a number.', 'At an event, 123 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=66$.', 'passage', '[{"id":"SPR","text":"63","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=123$ and $4x-y=66$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=123+66$ → $5x=315$.
**Step 2:** $x=63$.
**Step 3:** Back-substitute: $y=60$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 63', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6fed0ab6-e690-43f5-ad35-e41842aba0ed', 'Given $x+y=125$ and $3x-y=67$, what is $x$?', 'At an event, 125 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=67$.', 'passage', '[{"id":"A","text":"$64$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=256$. **Step 2:** $x=64$."},{"id":"B","text":"$63$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Choice C ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$65$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=125$ and $3x-y=67$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=125+67$ → $4x=256$.
**Step 2:** $x=64$.
**Step 3:** Back-substitute: $y=61$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $64$

**Distractor analysis:**
- **B** ($63$): One less than the solution.
- **C** ($61$): Choice C ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($65$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7659e3a4-0f0e-4e21-a0f3-ba9bdc241051', 'Given $x+y=127$ and $4x-y=68$, what is $x$?', 'At an event, 127 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=68$.', 'passage', '[{"id":"A","text":"$65$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=325$. **Step 2:** $x=65$."},{"id":"B","text":"$64$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Choice C ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$66$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=127$ and $4x-y=68$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=127+68$ → $5x=325$.
**Step 2:** $x=65$.
**Step 3:** Back-substitute: $y=62$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $65$

**Distractor analysis:**
- **B** ($64$): One less than the solution.
- **C** ($62$): Choice C ($62$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($66$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe56fe21-2734-494a-9ddf-51ba8945a427', 'Given $x+y=9$ and $3x-y=9$, what is $x$?', 'At an event, 9 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=9$.', 'passage', '[{"id":"A","text":"$6$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=24$. **Step 2:** $x=6$."},{"id":"B","text":"$5$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$3$","is_correct":false,"explanation":"Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$7$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=9$ and $3x-y=9$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=9+9$ → $4x=24$.
**Step 2:** $x=6$.
**Step 3:** Back-substitute: $y=3$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $6$

**Distractor analysis:**
- **B** ($5$): One less than the solution.
- **C** ($3$): Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($7$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0f2330e7-fdc4-4179-ae03-58c4440a9ed7', 'Given $x+y=11$ and $4x-y=10$, what is $x$? Enter your answer as a number.', 'At an event, 11 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=10$.', 'passage', '[{"id":"SPR","text":"7","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=11$ and $4x-y=10$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=11+10$ → $5x=35$.
**Step 2:** $x=7$.
**Step 3:** Back-substitute: $y=4$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 7', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('68b22d50-71c2-4ad2-860d-e873098d510a', 'Given $x+y=13$ and $3x-y=11$, what is $x$?', 'At an event, 13 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=11$.', 'passage', '[{"id":"A","text":"$8$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=32$. **Step 2:** $x=8$."},{"id":"B","text":"$7$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$9$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=13$ and $3x-y=11$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=13+11$ → $4x=32$.
**Step 2:** $x=8$.
**Step 3:** Back-substitute: $y=5$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $8$

**Distractor analysis:**
- **B** ($7$): One less than the solution.
- **C** ($5$): Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($9$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('13d816a2-8d29-4709-898d-bcb51407199d', 'Given $x+y=15$ and $4x-y=12$, what is $x$?', 'At an event, 15 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=12$.', 'passage', '[{"id":"A","text":"$9$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=45$. **Step 2:** $x=9$."},{"id":"B","text":"$8$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$10$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=15$ and $4x-y=12$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=15+12$ → $5x=45$.
**Step 2:** $x=9$.
**Step 3:** Back-substitute: $y=6$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $9$

**Distractor analysis:**
- **B** ($8$): One less than the solution.
- **C** ($6$): Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($10$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('df56e450-44f2-4428-a6a2-45253149d0c6', 'Given $x+y=17$ and $3x-y=13$, what is $x$?', 'At an event, 17 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=13$.', 'passage', '[{"id":"A","text":"$10$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=40$. **Step 2:** $x=10$."},{"id":"B","text":"$9$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$11$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=17$ and $3x-y=13$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=17+13$ → $4x=40$.
**Step 2:** $x=10$.
**Step 3:** Back-substitute: $y=7$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $10$

**Distractor analysis:**
- **B** ($9$): One less than the solution.
- **C** ($7$): Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($11$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('047fa5bb-329b-48b2-a115-2072adc17467', 'Given $x+y=19$ and $4x-y=14$, what is $x$? Enter your answer as a number.', 'At an event, 19 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=14$.', 'passage', '[{"id":"SPR","text":"11","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=19$ and $4x-y=14$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=19+14$ → $5x=55$.
**Step 2:** $x=11$.
**Step 3:** Back-substitute: $y=8$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 11', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ab1c4f12-ed25-4e2e-b3bf-a9127e1b25ab', 'Given $x+y=21$ and $3x-y=15$, what is $x$?', 'At an event, 21 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=15$.', 'passage', '[{"id":"A","text":"$12$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=48$. **Step 2:** $x=12$."},{"id":"B","text":"$11$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$13$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=21$ and $3x-y=15$, what is $x$?

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
VALUES ('28631bb7-539a-4f57-a6c0-6a437a837413', 'Given $x+y=23$ and $4x-y=16$, what is $x$?', 'At an event, 23 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=16$.', 'passage', '[{"id":"A","text":"$13$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=65$. **Step 2:** $x=13$."},{"id":"B","text":"$12$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$14$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=23$ and $4x-y=16$, what is $x$?

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
