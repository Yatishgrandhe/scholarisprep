BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('338a50c1-f5c5-4bb7-a1fc-36436335bcbc', 'Given $x+y=100$ and $3x-y=59$, what is $x$?', 'At an event, 100 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=59$.', 'passage', '[{"id":"A","text":"$53$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=212$. **Step 2:** $x=53$."},{"id":"B","text":"$52$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Choice C ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$54$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=100$ and $3x-y=59$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=100+59$ → $4x=212$.
**Step 2:** $x=53$.
**Step 3:** Back-substitute: $y=47$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $53$

**Distractor analysis:**
- **B** ($52$): One less than the solution.
- **C** ($47$): Choice C ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($54$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('110292e3-1a89-47a0-a924-6e503bff7dfc', 'Given $x+y=102$ and $4x-y=60$, what is $x$? Enter your answer as a number.', 'At an event, 102 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=60$.', 'passage', '[{"id":"SPR","text":"54","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=102$ and $4x-y=60$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=102+60$ → $5x=270$.
**Step 2:** $x=54$.
**Step 3:** Back-substitute: $y=48$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 54', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c31017cb-3696-4742-9729-ed7046245e86', 'Given $x+y=104$ and $3x-y=61$, what is $x$?', 'At an event, 104 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=61$.', 'passage', '[{"id":"A","text":"$55$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=220$. **Step 2:** $x=55$."},{"id":"B","text":"$54$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$56$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=104$ and $3x-y=61$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=104+61$ → $4x=220$.
**Step 2:** $x=55$.
**Step 3:** Back-substitute: $y=49$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $55$

**Distractor analysis:**
- **B** ($54$): One less than the solution.
- **C** ($49$): Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($56$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dba85101-b533-47d1-87b9-6ab079261b0d', 'Given $x+y=106$ and $4x-y=62$, what is $x$?', 'At an event, 106 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=62$.', 'passage', '[{"id":"A","text":"$56$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=280$. **Step 2:** $x=56$."},{"id":"B","text":"$55$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$57$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=106$ and $4x-y=62$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=106+62$ → $5x=280$.
**Step 2:** $x=56$.
**Step 3:** Back-substitute: $y=50$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $56$

**Distractor analysis:**
- **B** ($55$): One less than the solution.
- **C** ($50$): Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($57$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3a883930-1360-4257-bb7c-de6ec3cf49b1', 'Given $x+y=108$ and $3x-y=63$, what is $x$?', 'At an event, 108 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=63$.', 'passage', '[{"id":"A","text":"$57$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=228$. **Step 2:** $x=57$."},{"id":"B","text":"$56$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$58$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=108$ and $3x-y=63$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=108+63$ → $4x=228$.
**Step 2:** $x=57$.
**Step 3:** Back-substitute: $y=51$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $57$

**Distractor analysis:**
- **B** ($56$): One less than the solution.
- **C** ($51$): Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($58$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('08486125-683b-4f45-aa46-360bc28996a4', 'Given $x+y=110$ and $4x-y=64$, what is $x$? Enter your answer as a number.', 'At an event, 110 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=64$.', 'passage', '[{"id":"SPR","text":"58","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=110$ and $4x-y=64$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=110+64$ → $5x=290$.
**Step 2:** $x=58$.
**Step 3:** Back-substitute: $y=52$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 58', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7556b631-1fff-43a6-b06c-4ba874702c9e', 'Given $x+y=112$ and $3x-y=65$, what is $x$?', 'At an event, 112 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=65$.', 'passage', '[{"id":"A","text":"$59$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=236$. **Step 2:** $x=59$."},{"id":"B","text":"$58$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Choice C ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$60$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=112$ and $3x-y=65$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=112+65$ → $4x=236$.
**Step 2:** $x=59$.
**Step 3:** Back-substitute: $y=53$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $59$

**Distractor analysis:**
- **B** ($58$): One less than the solution.
- **C** ($53$): Choice C ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($60$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d616059d-2d64-4df7-9a68-161938874f54', 'Given $x+y=114$ and $4x-y=66$, what is $x$?', 'At an event, 114 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=66$.', 'passage', '[{"id":"A","text":"$60$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=300$. **Step 2:** $x=60$."},{"id":"B","text":"$59$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Choice C ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$61$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=114$ and $4x-y=66$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=114+66$ → $5x=300$.
**Step 2:** $x=60$.
**Step 3:** Back-substitute: $y=54$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $60$

**Distractor analysis:**
- **B** ($59$): One less than the solution.
- **C** ($54$): Choice C ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($61$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8c41af3b-8b2c-4542-8c87-963c1e3468cd', 'Given $x+y=116$ and $3x-y=67$, what is $x$?', 'At an event, 116 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=67$.', 'passage', '[{"id":"A","text":"$61$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=244$. **Step 2:** $x=61$."},{"id":"B","text":"$60$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Choice C ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$62$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=116$ and $3x-y=67$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=116+67$ → $4x=244$.
**Step 2:** $x=61$.
**Step 3:** Back-substitute: $y=55$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $61$

**Distractor analysis:**
- **B** ($60$): One less than the solution.
- **C** ($55$): Choice C ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($62$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7404f032-402c-4eef-bbc7-3005f6a8803d', 'Given $x+y=118$ and $4x-y=68$, what is $x$? Enter your answer as a number.', 'At an event, 118 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=68$.', 'passage', '[{"id":"SPR","text":"62","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=118$ and $4x-y=68$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=118+68$ → $5x=310$.
**Step 2:** $x=62$.
**Step 3:** Back-substitute: $y=56$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 62', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('51d726cd-db23-4c99-9a3e-2b73d6f37151', 'Given $x+y=120$ and $3x-y=69$, what is $x$?', 'At an event, 120 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=69$.', 'passage', '[{"id":"A","text":"$63$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=252$. **Step 2:** $x=63$."},{"id":"B","text":"$62$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Choice C ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$64$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=120$ and $3x-y=69$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=120+69$ → $4x=252$.
**Step 2:** $x=63$.
**Step 3:** Back-substitute: $y=57$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $63$

**Distractor analysis:**
- **B** ($62$): One less than the solution.
- **C** ($57$): Choice C ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($64$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a9f2c61a-9370-4a34-bf40-cab60a6ebcc9', 'Given $x+y=122$ and $4x-y=70$, what is $x$?', 'At an event, 122 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=70$.', 'passage', '[{"id":"A","text":"$64$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=320$. **Step 2:** $x=64$."},{"id":"B","text":"$63$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Choice C ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$65$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=122$ and $4x-y=70$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=122+70$ → $5x=320$.
**Step 2:** $x=64$.
**Step 3:** Back-substitute: $y=58$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $64$

**Distractor analysis:**
- **B** ($63$): One less than the solution.
- **C** ($58$): Choice C ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($65$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
