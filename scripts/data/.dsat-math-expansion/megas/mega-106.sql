BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2bb7c644-3e0d-4e7b-bfc1-74ccbf9bb48d', 'Given $x+y=124$ and $3x-y=71$, what is $x$?', 'At an event, 124 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=71$.', 'passage', '[{"id":"A","text":"$65$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=260$. **Step 2:** $x=65$."},{"id":"B","text":"$64$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$66$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=124$ and $3x-y=71$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=124+71$ → $4x=260$.
**Step 2:** $x=65$.
**Step 3:** Back-substitute: $y=59$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $65$

**Distractor analysis:**
- **B** ($64$): One less than the solution.
- **C** ($59$): Choice C ($59$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($66$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('247912cc-0b91-47c4-83ef-505ec6887f16', 'Given $x+y=126$ and $4x-y=72$, what is $x$? Enter your answer as a number.', 'At an event, 126 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=72$.', 'passage', '[{"id":"SPR","text":"66","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=126$ and $4x-y=72$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=126+72$ → $5x=330$.
**Step 2:** $x=66$.
**Step 3:** Back-substitute: $y=60$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 66', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a79af11f-113b-4eaf-b754-879d31dc1d63', 'Given $x+y=128$ and $3x-y=73$, what is $x$?', 'At an event, 128 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=73$.', 'passage', '[{"id":"A","text":"$67$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=268$. **Step 2:** $x=67$."},{"id":"B","text":"$66$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$61$","is_correct":false,"explanation":"Choice C ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$68$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=128$ and $3x-y=73$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=128+73$ → $4x=268$.
**Step 2:** $x=67$.
**Step 3:** Back-substitute: $y=61$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $67$

**Distractor analysis:**
- **B** ($66$): One less than the solution.
- **C** ($61$): Choice C ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($68$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('be4d1c6c-fa4c-4654-b305-f3033bda74a1', 'Given $x+y=130$ and $4x-y=74$, what is $x$?', 'At an event, 130 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=74$.', 'passage', '[{"id":"A","text":"$68$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=340$. **Step 2:** $x=68$."},{"id":"B","text":"$67$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Choice C ($62$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$69$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=130$ and $4x-y=74$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=130+74$ → $5x=340$.
**Step 2:** $x=68$.
**Step 3:** Back-substitute: $y=62$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $68$

**Distractor analysis:**
- **B** ($67$): One less than the solution.
- **C** ($62$): Choice C ($62$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($69$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('434fc464-b497-4f96-b029-bf009dffa694', 'Given $x+y=17$ and $3x-y=25$, what is $x$?', 'At an event, 17 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=25$.', 'passage', '[{"id":"A","text":"$14$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=56$. **Step 2:** $x=14$."},{"id":"B","text":"$13$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$3$","is_correct":false,"explanation":"Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$15$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=17$ and $3x-y=25$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=17+25$ → $4x=56$.
**Step 2:** $x=14$.
**Step 3:** Back-substitute: $y=3$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $14$

**Distractor analysis:**
- **B** ($13$): One less than the solution.
- **C** ($3$): Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8a35faf1-b653-4e81-b421-ea3f8d6c12e8', 'Given $x+y=19$ and $4x-y=26$, what is $x$?', 'At an event, 19 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=26$.', 'passage', '[{"id":"A","text":"$15$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=75$. **Step 2:** $x=15$."},{"id":"B","text":"$14$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Choice C ($4$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$16$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=19$ and $4x-y=26$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=19+26$ → $5x=75$.
**Step 2:** $x=15$.
**Step 3:** Back-substitute: $y=4$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $15$

**Distractor analysis:**
- **B** ($14$): One less than the solution.
- **C** ($4$): Choice C ($4$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7cd1e71a-31e3-44b4-8209-bd03f04dd1b9', 'Given $x+y=21$ and $3x-y=27$, what is $x$?', 'At an event, 21 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=27$.', 'passage', '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=64$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=21$ and $3x-y=27$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=21+27$ → $4x=64$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=5$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $16$

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($5$): Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1c67294a-15ef-4268-a934-8db67ce64be4', 'Given $x+y=23$ and $4x-y=28$, what is $x$?', 'At an event, 23 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=28$.', 'passage', '[{"id":"A","text":"$17$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=85$. **Step 2:** $x=17$."},{"id":"B","text":"$16$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$18$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=23$ and $4x-y=28$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=23+28$ → $5x=85$.
**Step 2:** $x=17$.
**Step 3:** Back-substitute: $y=6$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $17$

**Distractor analysis:**
- **B** ($16$): One less than the solution.
- **C** ($6$): Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f91264a3-1eb0-42bf-8144-3047e3a5675c', 'Given $x+y=25$ and $3x-y=29$, what is $x$?', 'At an event, 25 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=29$.', 'passage', '[{"id":"A","text":"$18$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=72$. **Step 2:** $x=18$."},{"id":"B","text":"$17$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$19$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=25$ and $3x-y=29$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=25+29$ → $4x=72$.
**Step 2:** $x=18$.
**Step 3:** Back-substitute: $y=7$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $18$

**Distractor analysis:**
- **B** ($17$): One less than the solution.
- **C** ($7$): Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4b1c5f94-871f-4dcf-8d9e-ea4599bd7d68', 'Given $x+y=27$ and $4x-y=30$, what is $x$?', 'At an event, 27 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=30$.', 'passage', '[{"id":"A","text":"$19$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=95$. **Step 2:** $x=19$."},{"id":"B","text":"$18$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Choice C ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$20$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=27$ and $4x-y=30$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=27+30$ → $5x=95$.
**Step 2:** $x=19$.
**Step 3:** Back-substitute: $y=8$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $19$

**Distractor analysis:**
- **B** ($18$): One less than the solution.
- **C** ($8$): Choice C ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($20$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0881fb98-94f1-44aa-a5a5-a931f910ddd8', 'Given $x+y=29$ and $3x-y=31$, what is $x$?', 'At an event, 29 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=31$.', 'passage', '[{"id":"A","text":"$20$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=80$. **Step 2:** $x=20$."},{"id":"B","text":"$19$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$21$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=29$ and $3x-y=31$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=29+31$ → $4x=80$.
**Step 2:** $x=20$.
**Step 3:** Back-substitute: $y=9$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $20$

**Distractor analysis:**
- **B** ($19$): One less than the solution.
- **C** ($9$): Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($21$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('be3307ef-774c-4bf6-b3c6-d04cadfcc53d', 'Given $x+y=31$ and $4x-y=32$, what is $x$?', 'At an event, 31 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=32$.', 'passage', '[{"id":"A","text":"$21$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=105$. **Step 2:** $x=21$."},{"id":"B","text":"$20$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$22$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=31$ and $4x-y=32$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=31+32$ → $5x=105$.
**Step 2:** $x=21$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $21$

**Distractor analysis:**
- **B** ($20$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($22$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
