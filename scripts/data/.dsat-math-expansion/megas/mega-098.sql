BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('580c74c8-c406-40a4-85b9-0d6819911cc0', 'Given $x+y=49$ and $3x-y=29$, what is $x$?', 'At an event, 49 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=29$.', 'passage', '[{"id":"A","text":"$26$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=104$. **Step 2:** $x=26$."},{"id":"B","text":"$25$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Choice C ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$27$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=49$ and $3x-y=29$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=49+29$ → $4x=104$.
**Step 2:** $x=26$.
**Step 3:** Back-substitute: $y=23$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $26$

**Distractor analysis:**
- **B** ($25$): One less than the solution.
- **C** ($23$): Choice C ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($27$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('411f692a-3adb-4daf-aed3-ea0efcf128a9', 'Given $x+y=51$ and $4x-y=30$, what is $x$? Enter your answer as a number.', 'At an event, 51 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=30$.', 'passage', '[{"id":"SPR","text":"27","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=51$ and $4x-y=30$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=51+30$ → $5x=135$.
**Step 2:** $x=27$.
**Step 3:** Back-substitute: $y=24$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 27', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4c63a7ac-35b3-431b-a5df-d0ef8b307d65', 'Given $x+y=53$ and $3x-y=31$, what is $x$?', 'At an event, 53 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=31$.', 'passage', '[{"id":"A","text":"$28$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=112$. **Step 2:** $x=28$."},{"id":"B","text":"$27$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Choice C ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$29$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=53$ and $3x-y=31$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=53+31$ → $4x=112$.
**Step 2:** $x=28$.
**Step 3:** Back-substitute: $y=25$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $28$

**Distractor analysis:**
- **B** ($27$): One less than the solution.
- **C** ($25$): Choice C ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($29$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90fa60bb-a673-4f55-a8e0-27df63a9dbcf', 'Given $x+y=55$ and $4x-y=32$, what is $x$?', 'At an event, 55 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=32$.', 'passage', '[{"id":"A","text":"$29$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=145$. **Step 2:** $x=29$."},{"id":"B","text":"$28$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Choice C ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$30$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=55$ and $4x-y=32$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=55+32$ → $5x=145$.
**Step 2:** $x=29$.
**Step 3:** Back-substitute: $y=26$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $29$

**Distractor analysis:**
- **B** ($28$): One less than the solution.
- **C** ($26$): Choice C ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($30$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('23a6a365-ff15-4aea-8966-7ca96329f122', 'Given $x+y=57$ and $3x-y=33$, what is $x$?', 'At an event, 57 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=33$.', 'passage', '[{"id":"A","text":"$30$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=120$. **Step 2:** $x=30$."},{"id":"B","text":"$29$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$31$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=57$ and $3x-y=33$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=57+33$ → $4x=120$.
**Step 2:** $x=30$.
**Step 3:** Back-substitute: $y=27$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $30$

**Distractor analysis:**
- **B** ($29$): One less than the solution.
- **C** ($27$): Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($31$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('164a02c1-3425-4527-9ae2-24a55c5be211', 'Given $x+y=59$ and $4x-y=34$, what is $x$? Enter your answer as a number.', 'At an event, 59 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=34$.', 'passage', '[{"id":"SPR","text":"31","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=59$ and $4x-y=34$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=59+34$ → $5x=155$.
**Step 2:** $x=31$.
**Step 3:** Back-substitute: $y=28$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 31', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a28b2181-2fbc-43c3-8d03-e54069a936ec', 'Given $x+y=61$ and $3x-y=35$, what is $x$?', 'At an event, 61 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=35$.', 'passage', '[{"id":"A","text":"$32$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=128$. **Step 2:** $x=32$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$33$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=61$ and $3x-y=35$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=61+35$ → $4x=128$.
**Step 2:** $x=32$.
**Step 3:** Back-substitute: $y=29$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $32$

**Distractor analysis:**
- **B** ($31$): One less than the solution.
- **C** ($29$): Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($33$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0951f926-05cf-43a1-b90e-27d9997d0b1c', 'Given $x+y=63$ and $4x-y=36$, what is $x$?', 'At an event, 63 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=36$.', 'passage', '[{"id":"A","text":"$33$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=165$. **Step 2:** $x=33$."},{"id":"B","text":"$32$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$34$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=63$ and $4x-y=36$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=63+36$ → $5x=165$.
**Step 2:** $x=33$.
**Step 3:** Back-substitute: $y=30$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $33$

**Distractor analysis:**
- **B** ($32$): One less than the solution.
- **C** ($30$): Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($34$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d14df081-778d-4626-9633-cdf8a16dea63', 'Given $x+y=65$ and $3x-y=37$, what is $x$?', 'At an event, 65 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=37$.', 'passage', '[{"id":"A","text":"$34$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=136$. **Step 2:** $x=34$."},{"id":"B","text":"$33$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Choice C ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$35$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=65$ and $3x-y=37$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=65+37$ → $4x=136$.
**Step 2:** $x=34$.
**Step 3:** Back-substitute: $y=31$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $34$

**Distractor analysis:**
- **B** ($33$): One less than the solution.
- **C** ($31$): Choice C ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($35$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('873912b5-c9f1-43c6-bc8d-25b7cd4a9e80', 'Given $x+y=67$ and $4x-y=38$, what is $x$? Enter your answer as a number.', 'At an event, 67 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=38$.', 'passage', '[{"id":"SPR","text":"35","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=67$ and $4x-y=38$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=67+38$ → $5x=175$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=32$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 35', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fff14838-6501-47db-ba0a-6b556e1c1d1a', 'Given $x+y=69$ and $3x-y=39$, what is $x$?', 'At an event, 69 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=39$.', 'passage', '[{"id":"A","text":"$36$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=144$. **Step 2:** $x=36$."},{"id":"B","text":"$35$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$37$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=69$ and $3x-y=39$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=69+39$ → $4x=144$.
**Step 2:** $x=36$.
**Step 3:** Back-substitute: $y=33$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $36$

**Distractor analysis:**
- **B** ($35$): One less than the solution.
- **C** ($33$): Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($37$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6b9d94af-a9b2-4db1-a9e0-6786debe1f5d', 'Given $x+y=71$ and $4x-y=40$, what is $x$?', 'At an event, 71 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=40$.', 'passage', '[{"id":"A","text":"$37$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=185$. **Step 2:** $x=37$."},{"id":"B","text":"$36$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Choice C ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$38$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=71$ and $4x-y=40$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=71+40$ → $5x=185$.
**Step 2:** $x=37$.
**Step 3:** Back-substitute: $y=34$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $37$

**Distractor analysis:**
- **B** ($36$): One less than the solution.
- **C** ($34$): Choice C ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($38$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
