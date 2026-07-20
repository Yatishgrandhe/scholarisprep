BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8d06c225-ab05-4447-b5a2-7f247e6bed40', 'Given $x+y=97$ and $3x-y=53$, what is $x$?', 'At an event, 97 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=53$.', 'passage', '[{"id":"A","text":"$50$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=200$. **Step 2:** $x=50$."},{"id":"B","text":"$49$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Choice C ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$51$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=97$ and $3x-y=53$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=97+53$ → $4x=200$.
**Step 2:** $x=50$.
**Step 3:** Back-substitute: $y=47$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $50$

**Distractor analysis:**
- **B** ($49$): One less than the solution.
- **C** ($47$): Choice C ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($51$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9543dbc0-8196-421e-9637-a8bb39fafa7f', 'Given $x+y=99$ and $4x-y=54$, what is $x$? Enter your answer as a number.', 'At an event, 99 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=54$.', 'passage', '[{"id":"SPR","text":"51","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=99$ and $4x-y=54$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=99+54$ → $5x=255$.
**Step 2:** $x=51$.
**Step 3:** Back-substitute: $y=48$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 51', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d9bca6f1-8875-448c-8300-9ec762d568a9', 'Given $x+y=101$ and $3x-y=55$, what is $x$?', 'At an event, 101 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=55$.', 'passage', '[{"id":"A","text":"$52$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=208$. **Step 2:** $x=52$."},{"id":"B","text":"$51$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$53$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=101$ and $3x-y=55$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=101+55$ → $4x=208$.
**Step 2:** $x=52$.
**Step 3:** Back-substitute: $y=49$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $52$

**Distractor analysis:**
- **B** ($51$): One less than the solution.
- **C** ($49$): Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($53$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('58a27b85-f4d4-4791-9fea-fdc175cc9dd4', 'Given $x+y=103$ and $4x-y=56$, what is $x$?', 'At an event, 103 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=56$.', 'passage', '[{"id":"A","text":"$53$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=265$. **Step 2:** $x=53$."},{"id":"B","text":"$52$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$54$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=103$ and $4x-y=56$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=103+56$ → $5x=265$.
**Step 2:** $x=53$.
**Step 3:** Back-substitute: $y=50$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $53$

**Distractor analysis:**
- **B** ($52$): One less than the solution.
- **C** ($50$): Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($54$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('51a7644d-e623-4779-850d-74740338109f', 'Given $x+y=105$ and $3x-y=57$, what is $x$?', 'At an event, 105 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=57$.', 'passage', '[{"id":"A","text":"$54$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=216$. **Step 2:** $x=54$."},{"id":"B","text":"$53$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$55$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=105$ and $3x-y=57$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=105+57$ → $4x=216$.
**Step 2:** $x=54$.
**Step 3:** Back-substitute: $y=51$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $54$

**Distractor analysis:**
- **B** ($53$): One less than the solution.
- **C** ($51$): Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($55$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1208ccf6-8cb9-4f53-b53a-fcf3b705ae6a', 'Given $x+y=107$ and $4x-y=58$, what is $x$? Enter your answer as a number.', 'At an event, 107 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=58$.', 'passage', '[{"id":"SPR","text":"55","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=107$ and $4x-y=58$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=107+58$ → $5x=275$.
**Step 2:** $x=55$.
**Step 3:** Back-substitute: $y=52$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 55', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('24c0a35c-f92c-4036-b8e1-07073a4209a0', 'Given $x+y=109$ and $3x-y=59$, what is $x$?', 'At an event, 109 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=59$.', 'passage', '[{"id":"A","text":"$56$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=224$. **Step 2:** $x=56$."},{"id":"B","text":"$55$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Choice C ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$57$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=109$ and $3x-y=59$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=109+59$ → $4x=224$.
**Step 2:** $x=56$.
**Step 3:** Back-substitute: $y=53$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $56$

**Distractor analysis:**
- **B** ($55$): One less than the solution.
- **C** ($53$): Choice C ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($57$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bf2492f9-ba1d-4ab4-97a6-87e7b6967a4f', 'Given $x+y=114$ and $4x-y=66$, what is $x$?', 'At an event, 114 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=66$.', 'passage', '[{"id":"A","text":"$60$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=300$. **Step 2:** $x=60$."},{"id":"B","text":"$59$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Choice C ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$61$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=114$ and $4x-y=66$, what is $x$?

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
VALUES ('fa95cc4b-dbac-4aea-971c-f430e9ed76d6', 'Given $x+y=116$ and $3x-y=67$, what is $x$?', 'At an event, 116 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=67$.', 'passage', '[{"id":"A","text":"$61$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=244$. **Step 2:** $x=61$."},{"id":"B","text":"$60$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Choice C ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$62$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=116$ and $3x-y=67$, what is $x$?

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
VALUES ('5fb6c3c2-aec3-4853-929a-78f61c1c43f4', 'Given $x+y=118$ and $4x-y=68$, what is $x$? Enter your answer as a number.', 'At an event, 118 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=68$.', 'passage', '[{"id":"SPR","text":"62","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=118$ and $4x-y=68$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=118+68$ → $5x=310$.
**Step 2:** $x=62$.
**Step 3:** Back-substitute: $y=56$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 62', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3fa5aaf2-7f84-4e2b-b1a9-f5840e1f8e95', 'Given $x+y=120$ and $3x-y=69$, what is $x$?', 'At an event, 120 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=69$.', 'passage', '[{"id":"A","text":"$63$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=252$. **Step 2:** $x=63$."},{"id":"B","text":"$62$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Choice C ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$64$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=120$ and $3x-y=69$, what is $x$?

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
VALUES ('54d308a8-d33f-4b72-973e-ac33f7e1cb34', 'Given $x+y=122$ and $4x-y=70$, what is $x$?', 'At an event, 122 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=70$.', 'passage', '[{"id":"A","text":"$64$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=320$. **Step 2:** $x=64$."},{"id":"B","text":"$63$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Choice C ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$65$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=122$ and $4x-y=70$, what is $x$?

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
