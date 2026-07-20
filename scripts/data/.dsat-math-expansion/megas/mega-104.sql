BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ca8725eb-ee80-4feb-808a-05a9a84beea2', 'Given $x+y=76$ and $3x-y=47$, what is $x$?', 'At an event, 76 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=47$.', 'passage', '[{"id":"A","text":"$41$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=164$. **Step 2:** $x=41$."},{"id":"B","text":"$40$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Choice C ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$42$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=76$ and $3x-y=47$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=76+47$ → $4x=164$.
**Step 2:** $x=41$.
**Step 3:** Back-substitute: $y=35$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $41$

**Distractor analysis:**
- **B** ($40$): One less than the solution.
- **C** ($35$): Choice C ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($42$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('131ac2d1-a152-401f-bf37-4d4a9e87edfb', 'Given $x+y=78$ and $4x-y=48$, what is $x$? Enter your answer as a number.', 'At an event, 78 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=48$.', 'passage', '[{"id":"SPR","text":"42","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=78$ and $4x-y=48$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=78+48$ → $5x=210$.
**Step 2:** $x=42$.
**Step 3:** Back-substitute: $y=36$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 42', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8ffd8501-d49a-49e2-8d7e-2fd27ec5f7c8', 'Given $x+y=80$ and $3x-y=49$, what is $x$?', 'At an event, 80 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=49$.', 'passage', '[{"id":"A","text":"$43$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=172$. **Step 2:** $x=43$."},{"id":"B","text":"$42$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Choice C ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$44$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=80$ and $3x-y=49$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=80+49$ → $4x=172$.
**Step 2:** $x=43$.
**Step 3:** Back-substitute: $y=37$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $43$

**Distractor analysis:**
- **B** ($42$): One less than the solution.
- **C** ($37$): Choice C ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($44$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a421132d-7720-46eb-87a8-b58ee61f96e7', 'Given $x+y=82$ and $4x-y=50$, what is $x$?', 'At an event, 82 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=50$.', 'passage', '[{"id":"A","text":"$44$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=220$. **Step 2:** $x=44$."},{"id":"B","text":"$43$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Choice C ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$45$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=82$ and $4x-y=50$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=82+50$ → $5x=220$.
**Step 2:** $x=44$.
**Step 3:** Back-substitute: $y=38$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $44$

**Distractor analysis:**
- **B** ($43$): One less than the solution.
- **C** ($38$): Choice C ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($45$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('41aff35f-62b8-4b39-8b85-43744ab85b91', 'Given $x+y=84$ and $3x-y=51$, what is $x$?', 'At an event, 84 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=51$.', 'passage', '[{"id":"A","text":"$45$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=180$. **Step 2:** $x=45$."},{"id":"B","text":"$44$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$46$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=84$ and $3x-y=51$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=84+51$ → $4x=180$.
**Step 2:** $x=45$.
**Step 3:** Back-substitute: $y=39$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $45$

**Distractor analysis:**
- **B** ($44$): One less than the solution.
- **C** ($39$): Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($46$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7c903d73-d1a0-41a2-8772-93239536b9ce', 'Given $x+y=86$ and $4x-y=52$, what is $x$? Enter your answer as a number.', 'At an event, 86 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=52$.', 'passage', '[{"id":"SPR","text":"46","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=86$ and $4x-y=52$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=86+52$ → $5x=230$.
**Step 2:** $x=46$.
**Step 3:** Back-substitute: $y=40$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 46', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8ac5b4fb-c6ed-42f6-a20a-9850c6a4a4c3', 'Given $x+y=88$ and $3x-y=53$, what is $x$?', 'At an event, 88 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=53$.', 'passage', '[{"id":"A","text":"$47$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=188$. **Step 2:** $x=47$."},{"id":"B","text":"$46$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Choice C ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$48$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=88$ and $3x-y=53$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=88+53$ → $4x=188$.
**Step 2:** $x=47$.
**Step 3:** Back-substitute: $y=41$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $47$

**Distractor analysis:**
- **B** ($46$): One less than the solution.
- **C** ($41$): Choice C ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($48$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b85aa56-5fc9-486b-b281-e7646f2ad325', 'Given $x+y=90$ and $4x-y=54$, what is $x$?', 'At an event, 90 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=54$.', 'passage', '[{"id":"A","text":"$48$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=240$. **Step 2:** $x=48$."},{"id":"B","text":"$47$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Choice C ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$49$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=90$ and $4x-y=54$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=90+54$ → $5x=240$.
**Step 2:** $x=48$.
**Step 3:** Back-substitute: $y=42$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $48$

**Distractor analysis:**
- **B** ($47$): One less than the solution.
- **C** ($42$): Choice C ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($49$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d166e9c5-ee91-4e8b-9831-9e74ecb55e45', 'Given $x+y=92$ and $3x-y=55$, what is $x$?', 'At an event, 92 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=55$.', 'passage', '[{"id":"A","text":"$49$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=196$. **Step 2:** $x=49$."},{"id":"B","text":"$48$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Choice C ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$50$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=92$ and $3x-y=55$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=92+55$ → $4x=196$.
**Step 2:** $x=49$.
**Step 3:** Back-substitute: $y=43$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $49$

**Distractor analysis:**
- **B** ($48$): One less than the solution.
- **C** ($43$): Choice C ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($50$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a2c83c8-bf2d-4741-a93e-9ca05ec0fa00', 'Given $x+y=94$ and $4x-y=56$, what is $x$? Enter your answer as a number.', 'At an event, 94 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=56$.', 'passage', '[{"id":"SPR","text":"50","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=94$ and $4x-y=56$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=94+56$ → $5x=250$.
**Step 2:** $x=50$.
**Step 3:** Back-substitute: $y=44$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 50', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('18bb0f8f-5f00-413e-92fd-0722e53f29ee', 'Given $x+y=96$ and $3x-y=57$, what is $x$?', 'At an event, 96 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=57$.', 'passage', '[{"id":"A","text":"$51$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=204$. **Step 2:** $x=51$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Choice C ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$52$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=96$ and $3x-y=57$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=96+57$ → $4x=204$.
**Step 2:** $x=51$.
**Step 3:** Back-substitute: $y=45$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $51$

**Distractor analysis:**
- **B** ($50$): One less than the solution.
- **C** ($45$): Choice C ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($52$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('913e137d-c1b3-4527-b0a9-faced18db574', 'Given $x+y=98$ and $4x-y=58$, what is $x$?', 'At an event, 98 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=58$.', 'passage', '[{"id":"A","text":"$52$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=260$. **Step 2:** $x=52$."},{"id":"B","text":"$51$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Choice C ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$53$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=98$ and $4x-y=58$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=98+58$ → $5x=260$.
**Step 2:** $x=52$.
**Step 3:** Back-substitute: $y=46$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $52$

**Distractor analysis:**
- **B** ($51$): One less than the solution.
- **C** ($46$): Choice C ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($53$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
