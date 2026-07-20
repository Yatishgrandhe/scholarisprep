BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('2fe1c3f2-d8f4-43e2-8e57-82b2fb988c88', 'If the vehicle continues at the same rate, what is $d$ when $t=33$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+23$. At $t=25$, $d=123$.', 'passage', '[{"id":"A","text":"$151$","is_correct":false,"explanation":"Choice A ($151$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$127$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=33$."},{"id":"C","text":"$155$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(33)+23$. **Step 2:** $d=155$."},{"id":"D","text":"$132$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=33$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $23$.
**Step 2:** $d=4(33)+23=155$.
**Step 3:** Cross-check via $(33-25)×4+123=155$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $155$

**Distractor analysis:**
- **A** ($151$): Choice A ($151$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($127$): Adds slope once instead of evaluating at $t=33$.
- **D** ($132$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('57fdd407-3c42-451a-91bb-7b32a9e1072b', 'If the vehicle continues at the same rate, what is $d$ when $t=34$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+24$. At $t=26$, $d=154$.', 'passage', '[{"id":"A","text":"$189$","is_correct":false,"explanation":"Choice A ($189$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$159$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=34$."},{"id":"C","text":"$194$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(34)+24$. **Step 2:** $d=194$."},{"id":"D","text":"$170$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=34$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $24$.
**Step 2:** $d=5(34)+24=194$.
**Step 3:** Cross-check via $(34-26)×5+154=194$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $194$

**Distractor analysis:**
- **A** ($189$): Choice A ($189$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($159$): Adds slope once instead of evaluating at $t=34$.
- **D** ($170$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('4319ae1e-7b31-4acf-b419-268e83350864', 'If the vehicle continues at the same rate, what is $d$ when $t=35$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+25$. At $t=27$, $d=187$.', 'passage', '[{"id":"A","text":"$229$","is_correct":false,"explanation":"Choice A ($229$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$193$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=35$."},{"id":"C","text":"$235$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(35)+25$. **Step 2:** $d=235$."},{"id":"D","text":"$210$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=35$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $25$.
**Step 2:** $d=6(35)+25=235$.
**Step 3:** Cross-check via $(35-27)×6+187=235$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $235$

**Distractor analysis:**
- **A** ($229$): Choice A ($229$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($193$): Adds slope once instead of evaluating at $t=35$.
- **D** ($210$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5c52a26-ad53-47c0-b148-c342a215bf11', 'If the vehicle continues at the same rate, what is $d$ when $t=36$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+26$. At $t=28$, $d=110$.', 'passage', '[{"id":"A","text":"$131$","is_correct":false,"explanation":"Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$113$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=36$."},{"id":"C","text":"$134$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(36)+26$. **Step 2:** $d=134$."},{"id":"D","text":"$108$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=36$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $26$.
**Step 2:** $d=3(36)+26=134$.
**Step 3:** Cross-check via $(36-28)×3+110=134$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $134$

**Distractor analysis:**
- **A** ($131$): Choice A ($131$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($113$): Adds slope once instead of evaluating at $t=36$.
- **D** ($108$): Forgets the intercept $+${b}$.', NULL, 'Algebra', 'Linear equations in two variables', 'math', 'algebra', 'LEQ', 'LEQ', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('82409aa4-e02e-43e8-97ff-94b352989432', 'Given $x+y=7$ and $3x-y=5$, what is $x$?', 'At an event, 7 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=5$.', 'passage', '[{"id":"A","text":"$4$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=16$. **Step 2:** $x=4$."},{"id":"B","text":"$3$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$3$","is_correct":false,"explanation":"Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$5$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=7$ and $3x-y=5$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=7+5$ → $4x=16$.
**Step 2:** $x=4$.
**Step 3:** Back-substitute: $y=3$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $4$

**Distractor analysis:**
- **B** ($3$): One less than the solution.
- **C** ($3$): Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($5$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7fc10163-0d4e-4e69-bf8c-6f59fceb4a4a', 'Given $x+y=9$ and $4x-y=6$, what is $x$? Enter your answer as a number.', 'At an event, 9 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=6$.', 'passage', '[{"id":"SPR","text":"5","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=9$ and $4x-y=6$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=9+6$ → $5x=25$.
**Step 2:** $x=5$.
**Step 3:** Back-substitute: $y=4$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 5', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1a6bc815-00a2-40c2-b1f0-b660e0f988ae', 'Given $x+y=11$ and $3x-y=7$, what is $x$?', 'At an event, 11 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=7$.', 'passage', '[{"id":"A","text":"$6$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=24$. **Step 2:** $x=6$."},{"id":"B","text":"$5$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$7$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=11$ and $3x-y=7$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=11+7$ → $4x=24$.
**Step 2:** $x=6$.
**Step 3:** Back-substitute: $y=5$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $6$

**Distractor analysis:**
- **B** ($5$): One less than the solution.
- **C** ($5$): Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($7$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('62124679-f2bb-4f87-b49f-fde62296440b', 'Given $x+y=13$ and $4x-y=8$, what is $x$?', 'At an event, 13 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=8$.', 'passage', '[{"id":"A","text":"$7$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=35$. **Step 2:** $x=7$."},{"id":"B","text":"$6$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$8$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=13$ and $4x-y=8$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=13+8$ → $5x=35$.
**Step 2:** $x=7$.
**Step 3:** Back-substitute: $y=6$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $7$

**Distractor analysis:**
- **B** ($6$): One less than the solution.
- **C** ($6$): Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($8$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('1409bf41-c9c8-4c7d-bd88-9118411a2309', 'Given $x+y=15$ and $3x-y=9$, what is $x$?', 'At an event, 15 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=9$.', 'passage', '[{"id":"A","text":"$8$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=32$. **Step 2:** $x=8$."},{"id":"B","text":"$7$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$9$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=15$ and $3x-y=9$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=15+9$ → $4x=32$.
**Step 2:** $x=8$.
**Step 3:** Back-substitute: $y=7$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $8$

**Distractor analysis:**
- **B** ($7$): One less than the solution.
- **C** ($7$): Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($9$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d360bdc3-4d95-45ee-9a49-a588d2c8b68e', 'Given $x+y=17$ and $4x-y=10$, what is $x$? Enter your answer as a number.', 'At an event, 17 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=10$.', 'passage', '[{"id":"SPR","text":"9","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** Given $x+y=17$ and $4x-y=10$, what is $x$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=17+10$ → $5x=45$.
**Step 2:** $x=9$.
**Step 3:** Back-substitute: $y=8$.
**Step 4:** Verify both equations.

**Step 3 — Answer SPR.** 9', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('ce00bf4e-13ed-4f3e-b83f-e5d37aa95546', 'Given $x+y=19$ and $3x-y=11$, what is $x$?', 'At an event, 19 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=11$.', 'passage', '[{"id":"A","text":"$10$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=40$. **Step 2:** $x=10$."},{"id":"B","text":"$9$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$11$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=19$ and $3x-y=11$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=19+11$ → $4x=40$.
**Step 2:** $x=10$.
**Step 3:** Back-substitute: $y=9$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $10$

**Distractor analysis:**
- **B** ($9$): One less than the solution.
- **C** ($9$): Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($11$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a0612dd6-96d3-4d3e-9580-b6e5ead3b13b', 'Given $x+y=21$ and $4x-y=12$, what is $x$?', 'At an event, 21 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=12$.', 'passage', '[{"id":"A","text":"$11$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=55$. **Step 2:** $x=11$."},{"id":"B","text":"$10$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$12$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=21$ and $4x-y=12$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=21+12$ → $5x=55$.
**Step 2:** $x=11$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Step 3 — Answer A.** $11$

**Distractor analysis:**
- **B** ($10$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($12$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'easy'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
