BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('92dafdfc-73fd-42e3-ac84-0d79a2ad1ebe', 'Given $x+y=95$ and $3x-y=49$, what is $x$?', 'At an event, 95 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=49$.', 'passage', '[{"id":"A","text":"$48$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=192$. **Step 2:** $x=48$."},{"id":"B","text":"$47$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Choice C ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$49$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=95$ and $3x-y=49$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=95+49$ → $4x=192$.
**Step 2:** $x=48$.
**Step 3:** Back-substitute: $y=47$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $48$

**Distractor analysis:**
- **B** ($47$): One less than the solution.
- **C** ($47$): Choice C ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($49$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e25b39e1-0104-435b-ad09-76025e07c145', 'Given $x+y=97$ and $4x-y=50$, what is $x$? Enter your answer as a number.', 'At an event, 97 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=50$.', 'passage', '[{"id":"SPR","text":"49","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=97$ and $4x-y=50$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=97+50$ → $5x=245$.
**Step 2:** $x=49$.
**Step 3:** Back-substitute: $y=48$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 49', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('961d14de-2a2b-4a64-bd64-e2e2fbbb6320', 'Given $x+y=99$ and $3x-y=51$, what is $x$?', 'At an event, 99 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=51$.', 'passage', '[{"id":"A","text":"$50$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=200$. **Step 2:** $x=50$."},{"id":"B","text":"$49$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$51$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=99$ and $3x-y=51$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=99+51$ → $4x=200$.
**Step 2:** $x=50$.
**Step 3:** Back-substitute: $y=49$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $50$

**Distractor analysis:**
- **B** ($49$): One less than the solution.
- **C** ($49$): Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($51$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('538ccbca-930a-4aee-ac2d-3e37976cfa2c', 'Given $x+y=101$ and $4x-y=52$, what is $x$?', 'At an event, 101 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=52$.', 'passage', '[{"id":"A","text":"$51$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=255$. **Step 2:** $x=51$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$52$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=101$ and $4x-y=52$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=101+52$ → $5x=255$.
**Step 2:** $x=51$.
**Step 3:** Back-substitute: $y=50$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $51$

**Distractor analysis:**
- **B** ($50$): One less than the solution.
- **C** ($50$): Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($52$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('59f25516-ef4b-4c22-a514-76f2cacf5efa', 'Given $x+y=103$ and $3x-y=53$, what is $x$?', 'At an event, 103 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=53$.', 'passage', '[{"id":"A","text":"$52$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=208$. **Step 2:** $x=52$."},{"id":"B","text":"$51$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$53$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=103$ and $3x-y=53$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=103+53$ → $4x=208$.
**Step 2:** $x=52$.
**Step 3:** Back-substitute: $y=51$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $52$

**Distractor analysis:**
- **B** ($51$): One less than the solution.
- **C** ($51$): Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($53$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6cc2b96f-f6b5-4554-8b67-768237b625d4', 'Given $x+y=105$ and $4x-y=54$, what is $x$? Enter your answer as a number.', 'At an event, 105 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=54$.', 'passage', '[{"id":"SPR","text":"53","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=105$ and $4x-y=54$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=105+54$ → $5x=265$.
**Step 2:** $x=53$.
**Step 3:** Back-substitute: $y=52$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 53', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e3b1968c-88c4-4465-96e4-3e280da13713', 'Given $x+y=107$ and $3x-y=55$, what is $x$?', 'At an event, 107 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=55$.', 'passage', '[{"id":"A","text":"$54$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=216$. **Step 2:** $x=54$."},{"id":"B","text":"$53$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Choice C ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$55$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=107$ and $3x-y=55$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=107+55$ → $4x=216$.
**Step 2:** $x=54$.
**Step 3:** Back-substitute: $y=53$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $54$

**Distractor analysis:**
- **B** ($53$): One less than the solution.
- **C** ($53$): Choice C ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($55$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2f685805-3b65-4833-ad45-fed3b4dccb69', 'Given $x+y=109$ and $4x-y=56$, what is $x$?', 'At an event, 109 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=56$.', 'passage', '[{"id":"A","text":"$55$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=275$. **Step 2:** $x=55$."},{"id":"B","text":"$54$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Choice C ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$56$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=109$ and $4x-y=56$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=109+56$ → $5x=275$.
**Step 2:** $x=55$.
**Step 3:** Back-substitute: $y=54$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $55$

**Distractor analysis:**
- **B** ($54$): One less than the solution.
- **C** ($54$): Choice C ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($56$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f6fb548b-203d-403d-b7a3-9f900ddd9032', 'Given $x+y=111$ and $3x-y=57$, what is $x$?', 'At an event, 111 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=57$.', 'passage', '[{"id":"A","text":"$56$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=224$. **Step 2:** $x=56$."},{"id":"B","text":"$55$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Choice C ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$57$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=111$ and $3x-y=57$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=111+57$ → $4x=224$.
**Step 2:** $x=56$.
**Step 3:** Back-substitute: $y=55$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $56$

**Distractor analysis:**
- **B** ($55$): One less than the solution.
- **C** ($55$): Choice C ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($57$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8bc0a7d2-4bd5-4129-b4ef-64a2a15ffcee', 'Given $x+y=113$ and $4x-y=58$, what is $x$? Enter your answer as a number.', 'At an event, 113 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=58$.', 'passage', '[{"id":"SPR","text":"57","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=113$ and $4x-y=58$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=113+58$ → $5x=285$.
**Step 2:** $x=57$.
**Step 3:** Back-substitute: $y=56$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 57', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('41a6e156-80d7-442e-a849-f860030a9753', 'Given $x+y=115$ and $3x-y=59$, what is $x$?', 'At an event, 115 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=59$.', 'passage', '[{"id":"A","text":"$58$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=232$. **Step 2:** $x=58$."},{"id":"B","text":"$57$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Choice C ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$59$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=115$ and $3x-y=59$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=115+59$ → $4x=232$.
**Step 2:** $x=58$.
**Step 3:** Back-substitute: $y=57$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $58$

**Distractor analysis:**
- **B** ($57$): One less than the solution.
- **C** ($57$): Choice C ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($59$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('382e0634-3d2e-4f1c-a6c6-8d007b7066b2', 'Given $x+y=117$ and $4x-y=60$, what is $x$?', 'At an event, 117 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=60$.', 'passage', '[{"id":"A","text":"$59$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=295$. **Step 2:** $x=59$."},{"id":"B","text":"$58$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Choice C ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$60$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=117$ and $4x-y=60$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=117+60$ → $5x=295$.
**Step 2:** $x=59$.
**Step 3:** Back-substitute: $y=58$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $59$

**Distractor analysis:**
- **B** ($58$): One less than the solution.
- **C** ($58$): Choice C ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($60$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
