BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6cf85bb5-6bc7-44c8-a599-cf2204d97a98', 'Given $x+y=33$ and $3x-y=33$, what is $x$?', 'At an event, 33 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=33$.', 'passage', '[{"id":"A","text":"$22$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=88$. **Step 2:** $x=22$."},{"id":"B","text":"$21$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$23$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=33$ and $3x-y=33$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=33+33$ → $4x=88$.
**Step 2:** $x=22$.
**Step 3:** Back-substitute: $y=11$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $22$

**Distractor analysis:**
- **B** ($21$): One less than the solution.
- **C** ($11$): Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($23$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bcd6ab93-33f4-4c5a-a45b-020c8593b854', 'Given $x+y=35$ and $4x-y=34$, what is $x$?', 'At an event, 35 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=34$.', 'passage', '[{"id":"A","text":"$23$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=115$. **Step 2:** $x=23$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Choice C ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=35$ and $4x-y=34$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=35+34$ → $5x=115$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=12$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $23$

**Distractor analysis:**
- **B** ($22$): One less than the solution.
- **C** ($12$): Choice C ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cf354c44-88c1-4a1b-bf48-2476b386e163', 'Given $x+y=37$ and $3x-y=35$, what is $x$?', 'At an event, 37 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=35$.', 'passage', '[{"id":"A","text":"$24$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=96$. **Step 2:** $x=24$."},{"id":"B","text":"$23$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$25$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=37$ and $3x-y=35$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=37+35$ → $4x=96$.
**Step 2:** $x=24$.
**Step 3:** Back-substitute: $y=13$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $24$

**Distractor analysis:**
- **B** ($23$): One less than the solution.
- **C** ($13$): Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($25$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c329751a-acde-4e73-8a8f-642b7732a13f', 'Given $x+y=39$ and $4x-y=36$, what is $x$?', 'At an event, 39 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=36$.', 'passage', '[{"id":"A","text":"$25$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=125$. **Step 2:** $x=25$."},{"id":"B","text":"$24$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$26$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=39$ and $4x-y=36$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=39+36$ → $5x=125$.
**Step 2:** $x=25$.
**Step 3:** Back-substitute: $y=14$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $25$

**Distractor analysis:**
- **B** ($24$): One less than the solution.
- **C** ($14$): Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($26$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fec63492-f94c-47a2-aa62-c9923b4bab81', 'Given $x+y=41$ and $3x-y=37$, what is $x$?', 'At an event, 41 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=37$.', 'passage', '[{"id":"A","text":"$26$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=104$. **Step 2:** $x=26$."},{"id":"B","text":"$25$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$27$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=41$ and $3x-y=37$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=41+37$ → $4x=104$.
**Step 2:** $x=26$.
**Step 3:** Back-substitute: $y=15$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $26$

**Distractor analysis:**
- **B** ($25$): One less than the solution.
- **C** ($15$): Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($27$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f0d6ac0d-8692-40c0-afe4-9d87029f2d6a', 'Given $x+y=43$ and $4x-y=38$, what is $x$?', 'At an event, 43 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=38$.', 'passage', '[{"id":"A","text":"$27$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=135$. **Step 2:** $x=27$."},{"id":"B","text":"$26$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$16$","is_correct":false,"explanation":"Choice C ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$28$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=43$ and $4x-y=38$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=43+38$ → $5x=135$.
**Step 2:** $x=27$.
**Step 3:** Back-substitute: $y=16$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $27$

**Distractor analysis:**
- **B** ($26$): One less than the solution.
- **C** ($16$): Choice C ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($28$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8b57fa11-80ce-4903-a7f9-74227fb0be17', 'Given $x+y=45$ and $3x-y=39$, what is $x$?', 'At an event, 45 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=39$.', 'passage', '[{"id":"A","text":"$28$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=112$. **Step 2:** $x=28$."},{"id":"B","text":"$27$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$29$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=45$ and $3x-y=39$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=45+39$ → $4x=112$.
**Step 2:** $x=28$.
**Step 3:** Back-substitute: $y=17$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $28$

**Distractor analysis:**
- **B** ($27$): One less than the solution.
- **C** ($17$): Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($29$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d97ae183-d1ef-44f7-8f01-84ba98031543', 'Given $x+y=47$ and $4x-y=40$, what is $x$?', 'At an event, 47 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=40$.', 'passage', '[{"id":"A","text":"$29$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=145$. **Step 2:** $x=29$."},{"id":"B","text":"$28$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$30$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=47$ and $4x-y=40$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=47+40$ → $5x=145$.
**Step 2:** $x=29$.
**Step 3:** Back-substitute: $y=18$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $29$

**Distractor analysis:**
- **B** ($28$): One less than the solution.
- **C** ($18$): Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($30$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c81ea69c-a3ab-42e9-975c-af79a412b987', 'Given $x+y=49$ and $3x-y=41$, what is $x$?', 'At an event, 49 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=41$.', 'passage', '[{"id":"A","text":"$30$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=120$. **Step 2:** $x=30$."},{"id":"B","text":"$29$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$31$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=49$ and $3x-y=41$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=49+41$ → $4x=120$.
**Step 2:** $x=30$.
**Step 3:** Back-substitute: $y=19$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $30$

**Distractor analysis:**
- **B** ($29$): One less than the solution.
- **C** ($19$): Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($31$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f54efdf4-1c6a-4d8f-ba9f-accf2b9f7ca9', 'Given $x+y=51$ and $4x-y=42$, what is $x$?', 'At an event, 51 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=42$.', 'passage', '[{"id":"A","text":"$31$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=155$. **Step 2:** $x=31$."},{"id":"B","text":"$30$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$32$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=51$ and $4x-y=42$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=51+42$ → $5x=155$.
**Step 2:** $x=31$.
**Step 3:** Back-substitute: $y=20$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $31$

**Distractor analysis:**
- **B** ($30$): One less than the solution.
- **C** ($20$): Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($32$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ee8bcf74-25b6-4014-858d-01fc3e21d38c', 'Given $x+y=53$ and $3x-y=43$, what is $x$?', 'At an event, 53 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=43$.', 'passage', '[{"id":"A","text":"$32$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=128$. **Step 2:** $x=32$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$33$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=53$ and $3x-y=43$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=53+43$ → $4x=128$.
**Step 2:** $x=32$.
**Step 3:** Back-substitute: $y=21$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $32$

**Distractor analysis:**
- **B** ($31$): One less than the solution.
- **C** ($21$): Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($33$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('28b5f52c-b0c5-492a-bb0a-c80bbaef7d59', 'Given $x+y=55$ and $4x-y=44$, what is $x$?', 'At an event, 55 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=44$.', 'passage', '[{"id":"A","text":"$33$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=165$. **Step 2:** $x=33$."},{"id":"B","text":"$32$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$34$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=55$ and $4x-y=44$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=55+44$ → $5x=165$.
**Step 2:** $x=33$.
**Step 3:** Back-substitute: $y=22$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $33$

**Distractor analysis:**
- **B** ($32$): One less than the solution.
- **C** ($22$): Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($34$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
