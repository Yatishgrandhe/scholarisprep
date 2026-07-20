BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d8811b3a-3221-4334-a445-891811b431c2', 'If the vehicle continues at the same rate, what is $d$ when $t=56$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+46$. At $t=48$, $d=190$.', 'passage', '[{"id":"A","text":"$211$","is_correct":false,"explanation":"Choice A ($211$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$193$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=56$."},{"id":"C","text":"$214$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(56)+46$. **Step 2:** $d=214$."},{"id":"D","text":"$168$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=56$?

**Step 2 — Solve.** **Step 1:** Rate is $3$ mi/h with intercept $46$.
**Step 2:** $d=3(56)+46=214$.
**Step 3:** Cross-check via $(56-48)×3+190=214$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $214$

**Distractor analysis:**
- **A** ($211$): Choice A ($211$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($193$): Adds slope once instead of evaluating at $t=56$.
- **D** ($168$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('82a45543-0176-4ecb-8b60-e6731ee670c7', 'If the vehicle continues at the same rate, what is $d$ when $t=57$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+47$. At $t=49$, $d=243$.', 'passage', '[{"id":"A","text":"$271$","is_correct":false,"explanation":"Choice A ($271$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$247$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=57$."},{"id":"C","text":"$275$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(57)+47$. **Step 2:** $d=275$."},{"id":"D","text":"$228$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=57$?

**Step 2 — Solve.** **Step 1:** Rate is $4$ mi/h with intercept $47$.
**Step 2:** $d=4(57)+47=275$.
**Step 3:** Cross-check via $(57-49)×4+243=275$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $275$

**Distractor analysis:**
- **A** ($271$): Choice A ($271$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($247$): Adds slope once instead of evaluating at $t=57$.
- **D** ($228$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('40daa6dc-ece7-4623-840f-cd4e5f2c2f8d', 'If the vehicle continues at the same rate, what is $d$ when $t=58$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+48$. At $t=50$, $d=298$.', 'passage', '[{"id":"A","text":"$333$","is_correct":false,"explanation":"Choice A ($333$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$303$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=58$."},{"id":"C","text":"$338$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(58)+48$. **Step 2:** $d=338$."},{"id":"D","text":"$290$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=58$?

**Step 2 — Solve.** **Step 1:** Rate is $5$ mi/h with intercept $48$.
**Step 2:** $d=5(58)+48=338$.
**Step 3:** Cross-check via $(58-50)×5+298=338$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $338$

**Distractor analysis:**
- **A** ($333$): Choice A ($333$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($303$): Adds slope once instead of evaluating at $t=58$.
- **D** ($290$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dd9b61d4-ef7d-4cc7-870e-762c8cfba59a', 'If the vehicle continues at the same rate, what is $d$ when $t=59$?', 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+49$. At $t=51$, $d=355$.', 'passage', '[{"id":"A","text":"$397$","is_correct":false,"explanation":"Choice A ($397$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$361$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=59$."},{"id":"C","text":"$403$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(59)+49$. **Step 2:** $d=403$."},{"id":"D","text":"$354$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb, 'C', '**Step 1 — Understand.** If the vehicle continues at the same rate, what is $d$ when $t=59$?

**Step 2 — Solve.** **Step 1:** Rate is $6$ mi/h with intercept $49$.
**Step 2:** $d=6(59)+49=403$.
**Step 3:** Cross-check via $(59-51)×6+355=403$.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer C.** $403$

**Distractor analysis:**
- **A** ($397$): Choice A ($397$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($361$): Adds slope once instead of evaluating at $t=59$.
- **D** ($354$): Forgets the intercept $+${b}$.', NULL, 'Algebra', NULL, 'math', NULL, 'LEQ', 'LEQ', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LEQ","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('56f77b74-12a8-48a7-aeb5-c6d0ccb2afdd', 'Given $x+y=17$ and $3x-y=25$, what is $x$?', 'At an event, 17 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=25$.', 'passage', '[{"id":"A","text":"$14$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=56$. **Step 2:** $x=14$."},{"id":"B","text":"$13$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$3$","is_correct":false,"explanation":"Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$15$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=17$ and $3x-y=25$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=17+25$ → $4x=56$.
**Step 2:** $x=14$.
**Step 3:** Back-substitute: $y=3$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $14$

**Distractor analysis:**
- **B** ($13$): One less than the solution.
- **C** ($3$): Choice C ($3$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d2367373-edfd-4447-9ebd-bd980e74a677', 'Given $x+y=19$ and $4x-y=26$, what is $x$?', 'At an event, 19 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=26$.', 'passage', '[{"id":"A","text":"$15$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=75$. **Step 2:** $x=15$."},{"id":"B","text":"$14$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Choice C ($4$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$16$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=19$ and $4x-y=26$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=19+26$ → $5x=75$.
**Step 2:** $x=15$.
**Step 3:** Back-substitute: $y=4$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $15$

**Distractor analysis:**
- **B** ($14$): One less than the solution.
- **C** ($4$): Choice C ($4$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b2c3c550-9437-480c-90f4-03e4d157ad4e', 'Given $x+y=21$ and $3x-y=27$, what is $x$?', 'At an event, 21 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=27$.', 'passage', '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=64$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=21$ and $3x-y=27$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=21+27$ → $4x=64$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=5$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $16$

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($5$): Choice C ($5$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1ccd7f4a-9f0b-4ffa-a625-f8d7068d99ca', 'Given $x+y=23$ and $4x-y=28$, what is $x$?', 'At an event, 23 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=28$.', 'passage', '[{"id":"A","text":"$17$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=85$. **Step 2:** $x=17$."},{"id":"B","text":"$16$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$18$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=23$ and $4x-y=28$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=23+28$ → $5x=85$.
**Step 2:** $x=17$.
**Step 3:** Back-substitute: $y=6$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $17$

**Distractor analysis:**
- **B** ($16$): One less than the solution.
- **C** ($6$): Choice C ($6$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b75d1cae-946c-4c94-914d-fcf2dcb2f0a1', 'Given $x+y=25$ and $3x-y=29$, what is $x$?', 'At an event, 25 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=29$.', 'passage', '[{"id":"A","text":"$18$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=72$. **Step 2:** $x=18$."},{"id":"B","text":"$17$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$19$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=25$ and $3x-y=29$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=25+29$ → $4x=72$.
**Step 2:** $x=18$.
**Step 3:** Back-substitute: $y=7$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $18$

**Distractor analysis:**
- **B** ($17$): One less than the solution.
- **C** ($7$): Choice C ($7$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ad55a8a2-1737-4c79-8cd4-06a2d20dfbb2', 'Given $x+y=27$ and $4x-y=30$, what is $x$?', 'At an event, 27 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=30$.', 'passage', '[{"id":"A","text":"$19$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=95$. **Step 2:** $x=19$."},{"id":"B","text":"$18$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Choice C ($8$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$20$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=27$ and $4x-y=30$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=27+30$ → $5x=95$.
**Step 2:** $x=19$.
**Step 3:** Back-substitute: $y=8$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $19$

**Distractor analysis:**
- **B** ($18$): One less than the solution.
- **C** ($8$): Choice C ($8$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($20$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a1982230-5d19-4316-84e7-321ca68e104b', 'Given $x+y=29$ and $3x-y=31$, what is $x$?', 'At an event, 29 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=31$.', 'passage', '[{"id":"A","text":"$20$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=80$. **Step 2:** $x=20$."},{"id":"B","text":"$19$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$21$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=29$ and $3x-y=31$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=29+31$ → $4x=80$.
**Step 2:** $x=20$.
**Step 3:** Back-substitute: $y=9$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $20$

**Distractor analysis:**
- **B** ($19$): One less than the solution.
- **C** ($9$): Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($21$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7607402b-4232-496b-a133-dee306952ca1', 'Given $x+y=31$ and $4x-y=32$, what is $x$?', 'At an event, 31 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=32$.', 'passage', '[{"id":"A","text":"$21$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=105$. **Step 2:** $x=21$."},{"id":"B","text":"$20$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$22$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=31$ and $4x-y=32$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=31+32$ → $5x=105$.
**Step 2:** $x=21$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $21$

**Distractor analysis:**
- **B** ($20$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($22$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d8af2f40-0cff-4673-a1b3-7740df32dfe1', 'Given $x+y=33$ and $3x-y=33$, what is $x$?', 'At an event, 33 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=33$.', 'passage', '[{"id":"A","text":"$22$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=88$. **Step 2:** $x=22$."},{"id":"B","text":"$21$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$23$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=33$ and $3x-y=33$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=33+33$ → $4x=88$.
**Step 2:** $x=22$.
**Step 3:** Back-substitute: $y=11$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $22$

**Distractor analysis:**
- **B** ($21$): One less than the solution.
- **C** ($11$): Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($23$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('4509db56-4e2e-4120-a4de-3915e829d827', 'Given $x+y=35$ and $4x-y=34$, what is $x$?', 'At an event, 35 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=34$.', 'passage', '[{"id":"A","text":"$23$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=115$. **Step 2:** $x=23$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Choice C ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=35$ and $4x-y=34$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=35+34$ → $5x=115$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=12$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $23$

**Distractor analysis:**
- **B** ($22$): One less than the solution.
- **C** ($12$): Choice C ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5a0593ff-7dd9-4f89-b8d5-73fbdbde25b3', 'Given $x+y=37$ and $3x-y=35$, what is $x$?', 'At an event, 37 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=35$.', 'passage', '[{"id":"A","text":"$24$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=96$. **Step 2:** $x=24$."},{"id":"B","text":"$23$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$25$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=37$ and $3x-y=35$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=37+35$ → $4x=96$.
**Step 2:** $x=24$.
**Step 3:** Back-substitute: $y=13$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $24$

**Distractor analysis:**
- **B** ($23$): One less than the solution.
- **C** ($13$): Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($25$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0e6e06f4-c843-4f33-9695-b56da14b646c', 'Given $x+y=39$ and $4x-y=36$, what is $x$?', 'At an event, 39 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=36$.', 'passage', '[{"id":"A","text":"$25$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=125$. **Step 2:** $x=25$."},{"id":"B","text":"$24$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$26$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=39$ and $4x-y=36$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=39+36$ → $5x=125$.
**Step 2:** $x=25$.
**Step 3:** Back-substitute: $y=14$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $25$

**Distractor analysis:**
- **B** ($24$): One less than the solution.
- **C** ($14$): Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($26$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('964dedb8-289b-4b34-b61d-a459682b2e8f', 'Given $x+y=41$ and $3x-y=37$, what is $x$?', 'At an event, 41 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=37$.', 'passage', '[{"id":"A","text":"$26$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=104$. **Step 2:** $x=26$."},{"id":"B","text":"$25$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$27$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=41$ and $3x-y=37$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=41+37$ → $4x=104$.
**Step 2:** $x=26$.
**Step 3:** Back-substitute: $y=15$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $26$

**Distractor analysis:**
- **B** ($25$): One less than the solution.
- **C** ($15$): Choice C ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($27$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7e8a3f2b-d148-481f-8d7e-5c7ee03ad611', 'Given $x+y=43$ and $4x-y=38$, what is $x$?', 'At an event, 43 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=38$.', 'passage', '[{"id":"A","text":"$27$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=135$. **Step 2:** $x=27$."},{"id":"B","text":"$26$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$16$","is_correct":false,"explanation":"Choice C ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$28$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=43$ and $4x-y=38$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=43+38$ → $5x=135$.
**Step 2:** $x=27$.
**Step 3:** Back-substitute: $y=16$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $27$

**Distractor analysis:**
- **B** ($26$): One less than the solution.
- **C** ($16$): Choice C ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($28$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('741eb5f5-849a-4ae2-9c28-99d32b03987c', 'Given $x+y=45$ and $3x-y=39$, what is $x$?', 'At an event, 45 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=39$.', 'passage', '[{"id":"A","text":"$28$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=112$. **Step 2:** $x=28$."},{"id":"B","text":"$27$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$29$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=45$ and $3x-y=39$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=45+39$ → $4x=112$.
**Step 2:** $x=28$.
**Step 3:** Back-substitute: $y=17$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $28$

**Distractor analysis:**
- **B** ($27$): One less than the solution.
- **C** ($17$): Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($29$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('22a3ca6f-90f4-4a5c-944a-0813bacb5336', 'Given $x+y=47$ and $4x-y=40$, what is $x$?', 'At an event, 47 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=40$.', 'passage', '[{"id":"A","text":"$29$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=145$. **Step 2:** $x=29$."},{"id":"B","text":"$28$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$30$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=47$ and $4x-y=40$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=47+40$ → $5x=145$.
**Step 2:** $x=29$.
**Step 3:** Back-substitute: $y=18$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $29$

**Distractor analysis:**
- **B** ($28$): One less than the solution.
- **C** ($18$): Choice C ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($30$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('a0d53145-20fe-4f3f-a186-e3783797de50', 'Given $x+y=49$ and $3x-y=41$, what is $x$?', 'At an event, 49 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=41$.', 'passage', '[{"id":"A","text":"$30$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=120$. **Step 2:** $x=30$."},{"id":"B","text":"$29$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$31$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=49$ and $3x-y=41$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=49+41$ → $4x=120$.
**Step 2:** $x=30$.
**Step 3:** Back-substitute: $y=19$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $30$

**Distractor analysis:**
- **B** ($29$): One less than the solution.
- **C** ($19$): Choice C ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($31$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b2afe331-67be-4661-ac80-ea4dfa353807', 'Given $x+y=51$ and $4x-y=42$, what is $x$?', 'At an event, 51 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=42$.', 'passage', '[{"id":"A","text":"$31$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=155$. **Step 2:** $x=31$."},{"id":"B","text":"$30$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$32$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=51$ and $4x-y=42$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=51+42$ → $5x=155$.
**Step 2:** $x=31$.
**Step 3:** Back-substitute: $y=20$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $31$

**Distractor analysis:**
- **B** ($30$): One less than the solution.
- **C** ($20$): Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($32$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c3230dd3-5ead-4389-a567-c1a1e46301eb', 'Given $x+y=53$ and $3x-y=43$, what is $x$?', 'At an event, 53 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=43$.', 'passage', '[{"id":"A","text":"$32$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=128$. **Step 2:** $x=32$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$33$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=53$ and $3x-y=43$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=53+43$ → $4x=128$.
**Step 2:** $x=32$.
**Step 3:** Back-substitute: $y=21$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $32$

**Distractor analysis:**
- **B** ($31$): One less than the solution.
- **C** ($21$): Choice C ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($33$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('949b8087-ee0c-480b-aac7-e5a844765562', 'Given $x+y=55$ and $4x-y=44$, what is $x$?', 'At an event, 55 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=44$.', 'passage', '[{"id":"A","text":"$33$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=165$. **Step 2:** $x=33$."},{"id":"B","text":"$32$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$34$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=55$ and $4x-y=44$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=55+44$ → $5x=165$.
**Step 2:** $x=33$.
**Step 3:** Back-substitute: $y=22$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $33$

**Distractor analysis:**
- **B** ($32$): One less than the solution.
- **C** ($22$): Choice C ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($34$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c8459929-9da2-4531-9690-40619214e981', 'Given $x+y=57$ and $3x-y=45$, what is $x$?', 'At an event, 57 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=45$.', 'passage', '[{"id":"A","text":"$34$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=136$. **Step 2:** $x=34$."},{"id":"B","text":"$33$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Choice C ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$35$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=57$ and $3x-y=45$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=57+45$ → $4x=136$.
**Step 2:** $x=34$.
**Step 3:** Back-substitute: $y=23$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $34$

**Distractor analysis:**
- **B** ($33$): One less than the solution.
- **C** ($23$): Choice C ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($35$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6b608eb0-b065-45b9-95e9-fe04b9b585e3', 'Given $x+y=59$ and $4x-y=46$, what is $x$?', 'At an event, 59 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=46$.', 'passage', '[{"id":"A","text":"$35$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=175$. **Step 2:** $x=35$."},{"id":"B","text":"$34$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Choice C ($24$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$36$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=59$ and $4x-y=46$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=59+46$ → $5x=175$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=24$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $35$

**Distractor analysis:**
- **B** ($34$): One less than the solution.
- **C** ($24$): Choice C ($24$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($36$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('614c6329-cf5b-4c3d-9797-0bbdde2955a2', 'Given $x+y=61$ and $3x-y=47$, what is $x$?', 'At an event, 61 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=47$.', 'passage', '[{"id":"A","text":"$36$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=144$. **Step 2:** $x=36$."},{"id":"B","text":"$35$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Choice C ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$37$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=61$ and $3x-y=47$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=61+47$ → $4x=144$.
**Step 2:** $x=36$.
**Step 3:** Back-substitute: $y=25$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $36$

**Distractor analysis:**
- **B** ($35$): One less than the solution.
- **C** ($25$): Choice C ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($37$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6a232d6e-bd5f-47d9-8fbc-3ea6102093a0', 'Given $x+y=63$ and $4x-y=48$, what is $x$?', 'At an event, 63 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=48$.', 'passage', '[{"id":"A","text":"$37$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=185$. **Step 2:** $x=37$."},{"id":"B","text":"$36$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Choice C ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$38$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=63$ and $4x-y=48$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=63+48$ → $5x=185$.
**Step 2:** $x=37$.
**Step 3:** Back-substitute: $y=26$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $37$

**Distractor analysis:**
- **B** ($36$): One less than the solution.
- **C** ($26$): Choice C ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($38$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('de8fbf39-c6f4-4768-9b1b-ff7c91c11f1e', 'Given $x+y=65$ and $3x-y=49$, what is $x$?', 'At an event, 65 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=49$.', 'passage', '[{"id":"A","text":"$38$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=152$. **Step 2:** $x=38$."},{"id":"B","text":"$37$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$39$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=65$ and $3x-y=49$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=65+49$ → $4x=152$.
**Step 2:** $x=38$.
**Step 3:** Back-substitute: $y=27$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $38$

**Distractor analysis:**
- **B** ($37$): One less than the solution.
- **C** ($27$): Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($39$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('366ccd47-37c7-4360-a3ef-228fda3a43a9', 'Given $x+y=67$ and $4x-y=50$, what is $x$?', 'At an event, 67 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=50$.', 'passage', '[{"id":"A","text":"$39$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=195$. **Step 2:** $x=39$."},{"id":"B","text":"$38$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Choice C ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$40$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=67$ and $4x-y=50$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=67+50$ → $5x=195$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=28$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $39$

**Distractor analysis:**
- **B** ($38$): One less than the solution.
- **C** ($28$): Choice C ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($40$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b86a6d83-cb52-4c2b-8702-0fa690f8932f', 'Given $x+y=69$ and $3x-y=51$, what is $x$?', 'At an event, 69 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=51$.', 'passage', '[{"id":"A","text":"$40$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=160$. **Step 2:** $x=40$."},{"id":"B","text":"$39$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$41$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=69$ and $3x-y=51$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=69+51$ → $4x=160$.
**Step 2:** $x=40$.
**Step 3:** Back-substitute: $y=29$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $40$

**Distractor analysis:**
- **B** ($39$): One less than the solution.
- **C** ($29$): Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($41$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('809ec4dd-125d-4b15-9507-6e795f0c23a6', 'Given $x+y=71$ and $4x-y=52$, what is $x$?', 'At an event, 71 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=52$.', 'passage', '[{"id":"A","text":"$41$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=205$. **Step 2:** $x=41$."},{"id":"B","text":"$40$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$42$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=71$ and $4x-y=52$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=71+52$ → $5x=205$.
**Step 2:** $x=41$.
**Step 3:** Back-substitute: $y=30$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $41$

**Distractor analysis:**
- **B** ($40$): One less than the solution.
- **C** ($30$): Choice C ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($42$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('af3bd3b9-1a0b-426b-b71e-62478e67050b', 'Given $x+y=73$ and $3x-y=53$, what is $x$?', 'At an event, 73 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=53$.', 'passage', '[{"id":"A","text":"$42$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=168$. **Step 2:** $x=42$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Choice C ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$43$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=73$ and $3x-y=53$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=73+53$ → $4x=168$.
**Step 2:** $x=42$.
**Step 3:** Back-substitute: $y=31$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $42$

**Distractor analysis:**
- **B** ($41$): One less than the solution.
- **C** ($31$): Choice C ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($43$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fff3727e-143b-4c68-b8b8-45c8627dba48', 'Given $x+y=75$ and $4x-y=54$, what is $x$?', 'At an event, 75 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=54$.', 'passage', '[{"id":"A","text":"$43$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=215$. **Step 2:** $x=43$."},{"id":"B","text":"$42$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$32$","is_correct":false,"explanation":"Choice C ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$44$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=75$ and $4x-y=54$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=75+54$ → $5x=215$.
**Step 2:** $x=43$.
**Step 3:** Back-substitute: $y=32$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $43$

**Distractor analysis:**
- **B** ($42$): One less than the solution.
- **C** ($32$): Choice C ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($44$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('21faaada-83f0-466b-b97a-b85cc6af1c93', 'Given $x+y=77$ and $3x-y=55$, what is $x$?', 'At an event, 77 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=55$.', 'passage', '[{"id":"A","text":"$44$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=176$. **Step 2:** $x=44$."},{"id":"B","text":"$43$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$45$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=77$ and $3x-y=55$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=77+55$ → $4x=176$.
**Step 2:** $x=44$.
**Step 3:** Back-substitute: $y=33$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $44$

**Distractor analysis:**
- **B** ($43$): One less than the solution.
- **C** ($33$): Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($45$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bae0a607-3d9c-48fc-868c-66e7ff578694', 'Given $x+y=79$ and $4x-y=56$, what is $x$?', 'At an event, 79 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=56$.', 'passage', '[{"id":"A","text":"$45$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=225$. **Step 2:** $x=45$."},{"id":"B","text":"$44$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Choice C ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$46$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=79$ and $4x-y=56$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=79+56$ → $5x=225$.
**Step 2:** $x=45$.
**Step 3:** Back-substitute: $y=34$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $45$

**Distractor analysis:**
- **B** ($44$): One less than the solution.
- **C** ($34$): Choice C ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($46$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7e0bc69f-9bb0-4392-b403-e788e91946b1', 'Given $x+y=81$ and $3x-y=57$, what is $x$?', 'At an event, 81 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=57$.', 'passage', '[{"id":"A","text":"$46$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=184$. **Step 2:** $x=46$."},{"id":"B","text":"$45$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Choice C ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$47$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=81$ and $3x-y=57$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=81+57$ → $4x=184$.
**Step 2:** $x=46$.
**Step 3:** Back-substitute: $y=35$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $46$

**Distractor analysis:**
- **B** ($45$): One less than the solution.
- **C** ($35$): Choice C ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($47$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0af16790-78d7-4f81-b755-6f5adff868bc', 'Given $x+y=83$ and $4x-y=58$, what is $x$?', 'At an event, 83 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=58$.', 'passage', '[{"id":"A","text":"$47$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=235$. **Step 2:** $x=47$."},{"id":"B","text":"$46$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Choice C ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$48$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=83$ and $4x-y=58$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=83+58$ → $5x=235$.
**Step 2:** $x=47$.
**Step 3:** Back-substitute: $y=36$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $47$

**Distractor analysis:**
- **B** ($46$): One less than the solution.
- **C** ($36$): Choice C ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($48$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('634ca5e8-e351-4ff3-b7ec-862ffee9f2a6', 'Given $x+y=85$ and $3x-y=59$, what is $x$?', 'At an event, 85 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=59$.', 'passage', '[{"id":"A","text":"$48$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=192$. **Step 2:** $x=48$."},{"id":"B","text":"$47$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Choice C ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$49$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=85$ and $3x-y=59$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=85+59$ → $4x=192$.
**Step 2:** $x=48$.
**Step 3:** Back-substitute: $y=37$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $48$

**Distractor analysis:**
- **B** ($47$): One less than the solution.
- **C** ($37$): Choice C ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($49$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('82fccdf1-c5c5-4303-ad94-33487c25b047', 'Given $x+y=87$ and $4x-y=60$, what is $x$?', 'At an event, 87 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=60$.', 'passage', '[{"id":"A","text":"$49$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=245$. **Step 2:** $x=49$."},{"id":"B","text":"$48$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Choice C ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$50$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=87$ and $4x-y=60$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=87+60$ → $5x=245$.
**Step 2:** $x=49$.
**Step 3:** Back-substitute: $y=38$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $49$

**Distractor analysis:**
- **B** ($48$): One less than the solution.
- **C** ($38$): Choice C ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($50$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
