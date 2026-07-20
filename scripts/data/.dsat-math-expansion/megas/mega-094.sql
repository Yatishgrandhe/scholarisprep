BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d8a826cf-40b1-4e28-81ce-59e3fda21d71', 'Given $x+y=73$ and $3x-y=41$, what is $x$?', 'At an event, 73 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=41$.', 'passage', '[{"id":"A","text":"$38$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=152$. **Step 2:** $x=38$."},{"id":"B","text":"$37$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Choice C ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$39$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=73$ and $3x-y=41$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=73+41$ → $4x=152$.
**Step 2:** $x=38$.
**Step 3:** Back-substitute: $y=35$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $38$

**Distractor analysis:**
- **B** ($37$): One less than the solution.
- **C** ($35$): Choice C ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($39$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('924f023d-18c7-42de-96ef-a39159827367', 'Given $x+y=75$ and $4x-y=42$, what is $x$? Enter your answer as a number.', 'At an event, 75 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=42$.', 'passage', '[{"id":"SPR","text":"39","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=75$ and $4x-y=42$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=75+42$ → $5x=195$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=36$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 39', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0e57b2df-5c18-4a78-ab3b-a82f33a5a59a', 'Given $x+y=77$ and $3x-y=43$, what is $x$?', 'At an event, 77 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=43$.', 'passage', '[{"id":"A","text":"$40$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=160$. **Step 2:** $x=40$."},{"id":"B","text":"$39$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Choice C ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$41$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=77$ and $3x-y=43$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=77+43$ → $4x=160$.
**Step 2:** $x=40$.
**Step 3:** Back-substitute: $y=37$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $40$

**Distractor analysis:**
- **B** ($39$): One less than the solution.
- **C** ($37$): Choice C ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($41$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('30588a78-f716-4d41-8180-1b5f1b5e67a6', 'Given $x+y=79$ and $4x-y=44$, what is $x$?', 'At an event, 79 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=44$.', 'passage', '[{"id":"A","text":"$41$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=205$. **Step 2:** $x=41$."},{"id":"B","text":"$40$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Choice C ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$42$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=79$ and $4x-y=44$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=79+44$ → $5x=205$.
**Step 2:** $x=41$.
**Step 3:** Back-substitute: $y=38$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $41$

**Distractor analysis:**
- **B** ($40$): One less than the solution.
- **C** ($38$): Choice C ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($42$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2ecd01a0-2f8f-4920-b02b-19d96fcc89f9', 'Given $x+y=81$ and $3x-y=45$, what is $x$?', 'At an event, 81 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=45$.', 'passage', '[{"id":"A","text":"$42$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=168$. **Step 2:** $x=42$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$43$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=81$ and $3x-y=45$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=81+45$ → $4x=168$.
**Step 2:** $x=42$.
**Step 3:** Back-substitute: $y=39$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $42$

**Distractor analysis:**
- **B** ($41$): One less than the solution.
- **C** ($39$): Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($43$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('66996e2a-db04-4317-adff-20c2cef88dbf', 'Given $x+y=83$ and $4x-y=46$, what is $x$? Enter your answer as a number.', 'At an event, 83 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=46$.', 'passage', '[{"id":"SPR","text":"43","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=83$ and $4x-y=46$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=83+46$ → $5x=215$.
**Step 2:** $x=43$.
**Step 3:** Back-substitute: $y=40$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 43', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c1fbd50e-341f-491c-8ec4-e2bd2cdfe4fb', 'Given $x+y=85$ and $3x-y=47$, what is $x$?', 'At an event, 85 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=47$.', 'passage', '[{"id":"A","text":"$44$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=176$. **Step 2:** $x=44$."},{"id":"B","text":"$43$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Choice C ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$45$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=85$ and $3x-y=47$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=85+47$ → $4x=176$.
**Step 2:** $x=44$.
**Step 3:** Back-substitute: $y=41$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $44$

**Distractor analysis:**
- **B** ($43$): One less than the solution.
- **C** ($41$): Choice C ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($45$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2863acb0-0b63-48b1-a32a-bd176f344b18', 'Given $x+y=87$ and $4x-y=48$, what is $x$?', 'At an event, 87 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=48$.', 'passage', '[{"id":"A","text":"$45$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=225$. **Step 2:** $x=45$."},{"id":"B","text":"$44$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Choice C ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$46$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=87$ and $4x-y=48$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=87+48$ → $5x=225$.
**Step 2:** $x=45$.
**Step 3:** Back-substitute: $y=42$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $45$

**Distractor analysis:**
- **B** ($44$): One less than the solution.
- **C** ($42$): Choice C ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($46$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f229f32d-0e33-4ae9-8c6c-317ae5655cfb', 'Given $x+y=89$ and $3x-y=49$, what is $x$?', 'At an event, 89 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=49$.', 'passage', '[{"id":"A","text":"$46$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=184$. **Step 2:** $x=46$."},{"id":"B","text":"$45$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Choice C ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$47$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=89$ and $3x-y=49$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=89+49$ → $4x=184$.
**Step 2:** $x=46$.
**Step 3:** Back-substitute: $y=43$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $46$

**Distractor analysis:**
- **B** ($45$): One less than the solution.
- **C** ($43$): Choice C ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($47$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('19799504-86c9-47ec-87a3-f7aa04de304b', 'Given $x+y=91$ and $4x-y=50$, what is $x$? Enter your answer as a number.', 'At an event, 91 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=50$.', 'passage', '[{"id":"SPR","text":"47","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=91$ and $4x-y=50$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=91+50$ → $5x=235$.
**Step 2:** $x=47$.
**Step 3:** Back-substitute: $y=44$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 47', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('97d1d049-36ab-4f4c-8a61-2e09f8289086', 'Given $x+y=93$ and $3x-y=51$, what is $x$?', 'At an event, 93 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=51$.', 'passage', '[{"id":"A","text":"$48$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=192$. **Step 2:** $x=48$."},{"id":"B","text":"$47$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Choice C ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$49$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=93$ and $3x-y=51$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=93+51$ → $4x=192$.
**Step 2:** $x=48$.
**Step 3:** Back-substitute: $y=45$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $48$

**Distractor analysis:**
- **B** ($47$): One less than the solution.
- **C** ($45$): Choice C ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($49$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fe8b9f15-cb7d-471d-b6c2-2fc779f2854f', 'Given $x+y=95$ and $4x-y=52$, what is $x$?', 'At an event, 95 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=52$.', 'passage', '[{"id":"A","text":"$49$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=245$. **Step 2:** $x=49$."},{"id":"B","text":"$48$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Choice C ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$50$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=95$ and $4x-y=52$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=95+52$ → $5x=245$.
**Step 2:** $x=49$.
**Step 3:** Back-substitute: $y=46$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $49$

**Distractor analysis:**
- **B** ($48$): One less than the solution.
- **C** ($46$): Choice C ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($50$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
