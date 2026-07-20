BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d0b5a0d3-9780-4d19-8ef2-bee7773a5d0f', 'Given $x+y=97$ and $3x-y=53$, what is $x$?', 'At an event, 97 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=53$.', 'passage', '[{"id":"A","text":"$50$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=200$. **Step 2:** $x=50$."},{"id":"B","text":"$49$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Choice C ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$51$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=97$ and $3x-y=53$, what is $x$?

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
VALUES ('942aab2d-0661-4d30-81b8-14676a776a38', 'Given $x+y=99$ and $4x-y=54$, what is $x$? Enter your answer as a number.', 'At an event, 99 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=54$.', 'passage', '[{"id":"SPR","text":"51","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=99$ and $4x-y=54$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=99+54$ → $5x=255$.
**Step 2:** $x=51$.
**Step 3:** Back-substitute: $y=48$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 51', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('043fd919-6cec-4f47-a639-973986fd5ffd', 'Given $x+y=101$ and $3x-y=55$, what is $x$?', 'At an event, 101 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=55$.', 'passage', '[{"id":"A","text":"$52$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=208$. **Step 2:** $x=52$."},{"id":"B","text":"$51$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$53$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=101$ and $3x-y=55$, what is $x$?

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
VALUES ('f490d78b-0a37-4034-81d9-6ac44579eb39', 'Given $x+y=103$ and $4x-y=56$, what is $x$?', 'At an event, 103 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=56$.', 'passage', '[{"id":"A","text":"$53$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=265$. **Step 2:** $x=53$."},{"id":"B","text":"$52$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$54$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=103$ and $4x-y=56$, what is $x$?

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
VALUES ('1f9e482c-6402-4af7-ae7d-9f7721afe644', 'Given $x+y=105$ and $3x-y=57$, what is $x$?', 'At an event, 105 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=57$.', 'passage', '[{"id":"A","text":"$54$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=216$. **Step 2:** $x=54$."},{"id":"B","text":"$53$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Choice C ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$55$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=105$ and $3x-y=57$, what is $x$?

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
VALUES ('c79473d6-c114-4874-9380-f59da1939db8', 'Given $x+y=107$ and $4x-y=58$, what is $x$? Enter your answer as a number.', 'At an event, 107 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=58$.', 'passage', '[{"id":"SPR","text":"55","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=107$ and $4x-y=58$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=107+58$ → $5x=275$.
**Step 2:** $x=55$.
**Step 3:** Back-substitute: $y=52$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 55', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('02b3a873-9083-46e0-b0e8-43f01f4ab137', 'Given $x+y=109$ and $3x-y=59$, what is $x$?', 'At an event, 109 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=59$.', 'passage', '[{"id":"A","text":"$56$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=224$. **Step 2:** $x=56$."},{"id":"B","text":"$55$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Choice C ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$57$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=109$ and $3x-y=59$, what is $x$?

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
VALUES ('f40360e4-3c86-4e8a-863b-b163d0134593', 'Given $x+y=111$ and $4x-y=60$, what is $x$?', 'At an event, 111 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=60$.', 'passage', '[{"id":"A","text":"$57$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=285$. **Step 2:** $x=57$."},{"id":"B","text":"$56$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Choice C ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$58$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=111$ and $4x-y=60$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=111+60$ → $5x=285$.
**Step 2:** $x=57$.
**Step 3:** Back-substitute: $y=54$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $57$

**Distractor analysis:**
- **B** ($56$): One less than the solution.
- **C** ($54$): Choice C ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($58$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3bc6fa90-d3b2-4f34-ab33-5ad4e87564e6', 'Given $x+y=113$ and $3x-y=61$, what is $x$?', 'At an event, 113 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=61$.', 'passage', '[{"id":"A","text":"$58$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=232$. **Step 2:** $x=58$."},{"id":"B","text":"$57$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Choice C ($55$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$59$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=113$ and $3x-y=61$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=113+61$ → $4x=232$.
**Step 2:** $x=58$.
**Step 3:** Back-substitute: $y=55$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $58$

**Distractor analysis:**
- **B** ($57$): One less than the solution.
- **C** ($55$): Choice C ($55$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($59$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cd966baf-09e3-417f-bcdf-283d4cd34e0f', 'Given $x+y=115$ and $4x-y=62$, what is $x$? Enter your answer as a number.', 'At an event, 115 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=62$.', 'passage', '[{"id":"SPR","text":"59","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=115$ and $4x-y=62$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=115+62$ → $5x=295$.
**Step 2:** $x=59$.
**Step 3:** Back-substitute: $y=56$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 59', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c7e94473-0001-4c37-a57b-3b091e83a23a', 'Given $x+y=117$ and $3x-y=63$, what is $x$?', 'At an event, 117 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=63$.', 'passage', '[{"id":"A","text":"$60$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=240$. **Step 2:** $x=60$."},{"id":"B","text":"$59$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Choice C ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$61$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=117$ and $3x-y=63$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=117+63$ → $4x=240$.
**Step 2:** $x=60$.
**Step 3:** Back-substitute: $y=57$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $60$

**Distractor analysis:**
- **B** ($59$): One less than the solution.
- **C** ($57$): Choice C ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($61$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6643bfd9-8719-4a6b-b084-8c1dbb986286', 'Given $x+y=119$ and $4x-y=64$, what is $x$?', 'At an event, 119 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=64$.', 'passage', '[{"id":"A","text":"$61$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=305$. **Step 2:** $x=61$."},{"id":"B","text":"$60$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Choice C ($58$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$62$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=119$ and $4x-y=64$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=119+64$ → $5x=305$.
**Step 2:** $x=61$.
**Step 3:** Back-substitute: $y=58$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $61$

**Distractor analysis:**
- **B** ($60$): One less than the solution.
- **C** ($58$): Choice C ($58$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($62$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
