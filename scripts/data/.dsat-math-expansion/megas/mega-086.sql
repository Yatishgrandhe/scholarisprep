BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cd115338-96fc-4e1b-9473-4ad102a2558d', 'Given $x+y=119$ and $3x-y=61$, what is $x$?', 'At an event, 119 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=61$.', 'passage', '[{"id":"A","text":"$60$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=240$. **Step 2:** $x=60$."},{"id":"B","text":"$59$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$61$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=119$ and $3x-y=61$, what is $x$?

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
VALUES ('fb3e551a-1c0e-45a0-951c-f091a88789d4', 'Given $x+y=121$ and $4x-y=62$, what is $x$? Enter your answer as a number.', 'At an event, 121 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=62$.', 'passage', '[{"id":"SPR","text":"61","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=121$ and $4x-y=62$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=121+62$ → $5x=305$.
**Step 2:** $x=61$.
**Step 3:** Back-substitute: $y=60$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 61', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('34e94b80-8411-431d-9efe-225a5249ea41', 'Given $x+y=123$ and $3x-y=63$, what is $x$?', 'At an event, 123 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=63$.', 'passage', '[{"id":"A","text":"$62$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=248$. **Step 2:** $x=62$."},{"id":"B","text":"$61$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Choice C ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$63$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=123$ and $3x-y=63$, what is $x$?

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
VALUES ('bd8b6af5-a2e2-4b6f-b395-2866cd237521', 'Given $x+y=125$ and $4x-y=64$, what is $x$?', 'At an event, 125 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=64$.', 'passage', '[{"id":"A","text":"$63$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=315$. **Step 2:** $x=63$."},{"id":"B","text":"$62$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Choice C ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$64$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=125$ and $4x-y=64$, what is $x$?

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
VALUES ('c25c0517-4946-4b61-8c53-3b1ae5f02d98', 'Given $x+y=7$ and $3x-y=5$, what is $x$?', 'At an event, 7 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=5$.', 'passage', '[{"id":"A","text":"$4$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=16$. **Step 2:** $x=4$."},{"id":"B","text":"$3$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$3$","is_correct":false,"explanation":"Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$5$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=7$ and $3x-y=5$, what is $x$?

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
VALUES ('89b0fe87-31ed-4cbe-ba94-d69bc98959d6', 'Given $x+y=9$ and $4x-y=6$, what is $x$? Enter your answer as a number.', 'At an event, 9 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=6$.', 'passage', '[{"id":"SPR","text":"5","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=9$ and $4x-y=6$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=9+6$ → $5x=25$.
**Step 2:** $x=5$.
**Step 3:** Back-substitute: $y=4$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 5', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4fe9807b-e553-4646-9d3c-22d41acce1a5', 'Given $x+y=11$ and $3x-y=7$, what is $x$?', 'At an event, 11 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=7$.', 'passage', '[{"id":"A","text":"$6$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=24$. **Step 2:** $x=6$."},{"id":"B","text":"$5$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$7$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=11$ and $3x-y=7$, what is $x$?

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
VALUES ('4f3d601a-7263-4f6a-9ab4-1530749ff3e3', 'Given $x+y=13$ and $4x-y=8$, what is $x$?', 'At an event, 13 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=8$.', 'passage', '[{"id":"A","text":"$7$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=35$. **Step 2:** $x=7$."},{"id":"B","text":"$6$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$8$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=13$ and $4x-y=8$, what is $x$?

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
VALUES ('1777c684-d27a-4bf7-a90d-8b8c582d4645', 'Given $x+y=15$ and $3x-y=9$, what is $x$?', 'At an event, 15 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=9$.', 'passage', '[{"id":"A","text":"$8$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=32$. **Step 2:** $x=8$."},{"id":"B","text":"$7$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$9$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=15$ and $3x-y=9$, what is $x$?

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
VALUES ('3e34e1be-1e39-4273-afa8-0c2f73faf293', 'Given $x+y=17$ and $4x-y=10$, what is $x$? Enter your answer as a number.', 'At an event, 17 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=10$.', 'passage', '[{"id":"SPR","text":"9","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=17$ and $4x-y=10$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=17+10$ → $5x=45$.
**Step 2:** $x=9$.
**Step 3:** Back-substitute: $y=8$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 9', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('373171f9-bd0f-4b1f-b343-95d807a16c2c', 'Given $x+y=19$ and $3x-y=11$, what is $x$?', 'At an event, 19 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=11$.', 'passage', '[{"id":"A","text":"$10$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=40$. **Step 2:** $x=10$."},{"id":"B","text":"$9$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$11$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=19$ and $3x-y=11$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=19+11$ → $4x=40$.
**Step 2:** $x=10$.
**Step 3:** Back-substitute: $y=9$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $10$

**Distractor analysis:**
- **B** ($9$): One less than the solution.
- **C** ($9$): Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($11$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f32bf89b-1834-46a0-88a7-a53c9e3b85e3', 'Given $x+y=21$ and $4x-y=12$, what is $x$?', 'At an event, 21 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=12$.', 'passage', '[{"id":"A","text":"$11$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=55$. **Step 2:** $x=11$."},{"id":"B","text":"$10$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$12$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=21$ and $4x-y=12$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=21+12$ → $5x=55$.
**Step 2:** $x=11$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $11$

**Distractor analysis:**
- **B** ($10$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($12$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
