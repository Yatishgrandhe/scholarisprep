BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('23b881de-8f0b-475c-8307-3eea8d5e9643', 'Given $x+y=52$ and $3x-y=35$, what is $x$?', 'At an event, 52 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=35$.', 'passage', '[{"id":"A","text":"$29$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=116$. **Step 2:** $x=29$."},{"id":"B","text":"$28$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Choice C ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$30$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=52$ and $3x-y=35$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=52+35$ → $4x=116$.
**Step 2:** $x=29$.
**Step 3:** Back-substitute: $y=23$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $29$

**Distractor analysis:**
- **B** ($28$): One less than the solution.
- **C** ($23$): Choice C ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($30$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c9187993-991b-4816-a932-76b8e4530096', 'Given $x+y=54$ and $4x-y=36$, what is $x$? Enter your answer as a number.', 'At an event, 54 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=36$.', 'passage', '[{"id":"SPR","text":"30","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=54$ and $4x-y=36$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=54+36$ → $5x=150$.
**Step 2:** $x=30$.
**Step 3:** Back-substitute: $y=24$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 30', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('914e1de3-9d0d-40c5-9d2e-e7325dd2b285', 'Given $x+y=56$ and $3x-y=37$, what is $x$?', 'At an event, 56 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=37$.', 'passage', '[{"id":"A","text":"$31$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=124$. **Step 2:** $x=31$."},{"id":"B","text":"$30$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Choice C ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$32$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=56$ and $3x-y=37$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=56+37$ → $4x=124$.
**Step 2:** $x=31$.
**Step 3:** Back-substitute: $y=25$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $31$

**Distractor analysis:**
- **B** ($30$): One less than the solution.
- **C** ($25$): Choice C ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($32$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a6543c14-5e1f-4fb2-8c9b-bfcca13b45c1', 'Given $x+y=58$ and $4x-y=38$, what is $x$?', 'At an event, 58 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=38$.', 'passage', '[{"id":"A","text":"$32$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=160$. **Step 2:** $x=32$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Choice C ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$33$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=58$ and $4x-y=38$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=58+38$ → $5x=160$.
**Step 2:** $x=32$.
**Step 3:** Back-substitute: $y=26$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $32$

**Distractor analysis:**
- **B** ($31$): One less than the solution.
- **C** ($26$): Choice C ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($33$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('877b5012-9dd1-4c78-ac85-b94d8f1b5955', 'Given $x+y=60$ and $3x-y=39$, what is $x$?', 'At an event, 60 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=39$.', 'passage', '[{"id":"A","text":"$33$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=132$. **Step 2:** $x=33$."},{"id":"B","text":"$32$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$34$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=60$ and $3x-y=39$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=60+39$ → $4x=132$.
**Step 2:** $x=33$.
**Step 3:** Back-substitute: $y=27$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $33$

**Distractor analysis:**
- **B** ($32$): One less than the solution.
- **C** ($27$): Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($34$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2140415f-ec16-46e9-b5ab-f92c6f31dc6d', 'Given $x+y=62$ and $4x-y=40$, what is $x$? Enter your answer as a number.', 'At an event, 62 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=40$.', 'passage', '[{"id":"SPR","text":"34","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=62$ and $4x-y=40$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=62+40$ → $5x=170$.
**Step 2:** $x=34$.
**Step 3:** Back-substitute: $y=28$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 34', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5a1969d-47f9-4a0a-9989-0ff5b2d5d55d', 'Given $x+y=64$ and $3x-y=41$, what is $x$?', 'At an event, 64 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=41$.', 'passage', '[{"id":"A","text":"$35$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=140$. **Step 2:** $x=35$."},{"id":"B","text":"$34$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$36$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=64$ and $3x-y=41$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=64+41$ → $4x=140$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=29$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $35$

**Distractor analysis:**
- **B** ($34$): One less than the solution.
- **C** ($29$): Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($36$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ed0bc96-6d54-43ae-a5bb-e9bdbdf54ede', 'Given $x+y=66$ and $4x-y=42$, what is $x$?', 'At an event, 66 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=42$.', 'passage', '[{"id":"A","text":"$36$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=180$. **Step 2:** $x=36$."},{"id":"B","text":"$35$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$37$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=66$ and $4x-y=42$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=66+42$ → $5x=180$.
**Step 2:** $x=36$.
**Step 3:** Back-substitute: $y=30$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $36$

**Distractor analysis:**
- **B** ($35$): One less than the solution.
- **C** ($30$): Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($37$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fc98f2dd-ea90-41da-890c-b5bc81f3ce75', 'Given $x+y=68$ and $3x-y=43$, what is $x$?', 'At an event, 68 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=43$.', 'passage', '[{"id":"A","text":"$37$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=148$. **Step 2:** $x=37$."},{"id":"B","text":"$36$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Choice C ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$38$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=68$ and $3x-y=43$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=68+43$ → $4x=148$.
**Step 2:** $x=37$.
**Step 3:** Back-substitute: $y=31$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $37$

**Distractor analysis:**
- **B** ($36$): One less than the solution.
- **C** ($31$): Choice C ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($38$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('21568434-3aef-4420-b55e-e09925c8ba2b', 'Given $x+y=70$ and $4x-y=44$, what is $x$? Enter your answer as a number.', 'At an event, 70 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=44$.', 'passage', '[{"id":"SPR","text":"38","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=70$ and $4x-y=44$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=70+44$ → $5x=190$.
**Step 2:** $x=38$.
**Step 3:** Back-substitute: $y=32$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 38', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dc17d225-4b2b-48b7-bd2d-23fd8a1e5bc5', 'Given $x+y=72$ and $3x-y=45$, what is $x$?', 'At an event, 72 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=45$.', 'passage', '[{"id":"A","text":"$39$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=156$. **Step 2:** $x=39$."},{"id":"B","text":"$38$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$40$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=72$ and $3x-y=45$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=72+45$ → $4x=156$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=33$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $39$

**Distractor analysis:**
- **B** ($38$): One less than the solution.
- **C** ($33$): Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($40$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('06f941a9-1d26-46db-a4c8-19665d127eef', 'Given $x+y=74$ and $4x-y=46$, what is $x$?', 'At an event, 74 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=46$.', 'passage', '[{"id":"A","text":"$40$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=200$. **Step 2:** $x=40$."},{"id":"B","text":"$39$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Choice C ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$41$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=74$ and $4x-y=46$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=74+46$ → $5x=200$.
**Step 2:** $x=40$.
**Step 3:** Back-substitute: $y=34$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $40$

**Distractor analysis:**
- **B** ($39$): One less than the solution.
- **C** ($34$): Choice C ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($41$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
