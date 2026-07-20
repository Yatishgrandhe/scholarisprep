BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('16c2be8d-57bd-40f4-851d-d38c805a66f9', 'Given $x+y=89$ and $3x-y=61$, what is $x$?', 'At an event, 89 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=61$.', 'passage', '[{"id":"A","text":"$50$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=200$. **Step 2:** $x=50$."},{"id":"B","text":"$49$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$51$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=89$ and $3x-y=61$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=89+61$ → $4x=200$.
**Step 2:** $x=50$.
**Step 3:** Back-substitute: $y=39$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $50$

**Distractor analysis:**
- **B** ($49$): One less than the solution.
- **C** ($39$): Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($51$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6b198865-a27a-44e7-b53f-c6ca3a607491', 'Given $x+y=91$ and $4x-y=62$, what is $x$?', 'At an event, 91 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=62$.', 'passage', '[{"id":"A","text":"$51$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=255$. **Step 2:** $x=51$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$40$","is_correct":false,"explanation":"Choice C ($40$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$52$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=91$ and $4x-y=62$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=91+62$ → $5x=255$.
**Step 2:** $x=51$.
**Step 3:** Back-substitute: $y=40$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $51$

**Distractor analysis:**
- **B** ($50$): One less than the solution.
- **C** ($40$): Choice C ($40$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($52$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ea003fb8-eb1d-403a-ab8c-3565a6272d19', 'Given $x+y=93$ and $3x-y=63$, what is $x$?', 'At an event, 93 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=63$.', 'passage', '[{"id":"A","text":"$52$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=208$. **Step 2:** $x=52$."},{"id":"B","text":"$51$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Choice C ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$53$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=93$ and $3x-y=63$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=93+63$ → $4x=208$.
**Step 2:** $x=52$.
**Step 3:** Back-substitute: $y=41$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $52$

**Distractor analysis:**
- **B** ($51$): One less than the solution.
- **C** ($41$): Choice C ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($53$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('420289dc-6eba-41ae-8dd4-6e35597aed3f', 'Given $x+y=95$ and $4x-y=64$, what is $x$?', 'At an event, 95 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=64$.', 'passage', '[{"id":"A","text":"$53$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=265$. **Step 2:** $x=53$."},{"id":"B","text":"$52$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Choice C ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$54$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=95$ and $4x-y=64$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=95+64$ → $5x=265$.
**Step 2:** $x=53$.
**Step 3:** Back-substitute: $y=42$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $53$

**Distractor analysis:**
- **B** ($52$): One less than the solution.
- **C** ($42$): Choice C ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($54$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ac09d091-6bf0-4dd2-a936-fb28888b0235', 'Given $x+y=97$ and $3x-y=65$, what is $x$?', 'At an event, 97 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=65$.', 'passage', '[{"id":"A","text":"$54$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=216$. **Step 2:** $x=54$."},{"id":"B","text":"$53$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Choice C ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$55$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=97$ and $3x-y=65$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=97+65$ → $4x=216$.
**Step 2:** $x=54$.
**Step 3:** Back-substitute: $y=43$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $54$

**Distractor analysis:**
- **B** ($53$): One less than the solution.
- **C** ($43$): Choice C ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($55$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('db6995e7-baee-466d-87a4-cebf14d3c944', 'Given $x+y=99$ and $4x-y=66$, what is $x$?', 'At an event, 99 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=66$.', 'passage', '[{"id":"A","text":"$55$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=275$. **Step 2:** $x=55$."},{"id":"B","text":"$54$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Choice C ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$56$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=99$ and $4x-y=66$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=99+66$ → $5x=275$.
**Step 2:** $x=55$.
**Step 3:** Back-substitute: $y=44$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $55$

**Distractor analysis:**
- **B** ($54$): One less than the solution.
- **C** ($44$): Choice C ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($56$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d5b3b065-5e4e-4342-a357-8f98c7f3e565', 'Given $x+y=101$ and $3x-y=67$, what is $x$?', 'At an event, 101 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=67$.', 'passage', '[{"id":"A","text":"$56$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=224$. **Step 2:** $x=56$."},{"id":"B","text":"$55$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Choice C ($45$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$57$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=101$ and $3x-y=67$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=101+67$ → $4x=224$.
**Step 2:** $x=56$.
**Step 3:** Back-substitute: $y=45$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $56$

**Distractor analysis:**
- **B** ($55$): One less than the solution.
- **C** ($45$): Choice C ($45$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($57$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('121c124a-f447-4460-9b88-e022dfc16cbe', 'Given $x+y=103$ and $4x-y=68$, what is $x$?', 'At an event, 103 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=68$.', 'passage', '[{"id":"A","text":"$57$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=285$. **Step 2:** $x=57$."},{"id":"B","text":"$56$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Choice C ($46$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$58$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=103$ and $4x-y=68$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=103+68$ → $5x=285$.
**Step 2:** $x=57$.
**Step 3:** Back-substitute: $y=46$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $57$

**Distractor analysis:**
- **B** ($56$): One less than the solution.
- **C** ($46$): Choice C ($46$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($58$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7bbc169a-039f-4dfc-a5bc-e7a0c1e12ec7', 'Given $x+y=105$ and $3x-y=69$, what is $x$?', 'At an event, 105 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=69$.', 'passage', '[{"id":"A","text":"$58$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=232$. **Step 2:** $x=58$."},{"id":"B","text":"$57$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Choice C ($47$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$59$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=105$ and $3x-y=69$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=105+69$ → $4x=232$.
**Step 2:** $x=58$.
**Step 3:** Back-substitute: $y=47$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $58$

**Distractor analysis:**
- **B** ($57$): One less than the solution.
- **C** ($47$): Choice C ($47$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($59$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('61f69230-55f1-440f-9ada-65f318edce2e', 'Given $x+y=107$ and $4x-y=70$, what is $x$?', 'At an event, 107 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=70$.', 'passage', '[{"id":"A","text":"$59$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=295$. **Step 2:** $x=59$."},{"id":"B","text":"$58$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$48$","is_correct":false,"explanation":"Choice C ($48$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$60$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=107$ and $4x-y=70$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=107+70$ → $5x=295$.
**Step 2:** $x=59$.
**Step 3:** Back-substitute: $y=48$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $59$

**Distractor analysis:**
- **B** ($58$): One less than the solution.
- **C** ($48$): Choice C ($48$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($60$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('64751cf5-be3f-4e9e-930d-d84c5ed25561', 'Given $x+y=109$ and $3x-y=71$, what is $x$?', 'At an event, 109 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=71$.', 'passage', '[{"id":"A","text":"$60$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=240$. **Step 2:** $x=60$."},{"id":"B","text":"$59$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$61$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=109$ and $3x-y=71$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(3x-y)=109+71$ → $4x=240$.
**Step 2:** $x=60$.
**Step 3:** Back-substitute: $y=49$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $60$

**Distractor analysis:**
- **B** ($59$): One less than the solution.
- **C** ($49$): Choice C ($49$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($61$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8e6b4c8a-040b-442a-bc9b-079b4dd1ba98', 'Given $x+y=111$ and $4x-y=72$, what is $x$?', 'At an event, 111 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=72$.', 'passage', '[{"id":"A","text":"$61$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=305$. **Step 2:** $x=61$."},{"id":"B","text":"$60$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$62$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1 — Understand.** Given $x+y=111$ and $4x-y=72$, what is $x$?

**Step 2 — Solve.** **Step 1:** Add: $(x+y)+(4x-y)=111+72$ → $5x=305$.
**Step 2:** $x=61$.
**Step 3:** Back-substitute: $y=50$.
**Step 4:** Verify both equations.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer A.** $61$

**Distractor analysis:**
- **B** ($60$): One less than the solution.
- **C** ($50$): Choice C ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($62$): One more than the solution.', NULL, 'Algebra', NULL, 'math', NULL, 'SYS', 'SYS', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"SYS","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('72219ea7-d253-4fa6-8db1-4306a55403fc', 'Which integer value of $x$ satisfies $3x + 5 > 49$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 49 but stay at most 65 to trigger an alert.', 'passage', '[{"id":"A","text":"$13$","is_correct":false,"explanation":"Choice A ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$15$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$16$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 14.67$. **Step 2:** Smallest integer: 16."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 49$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 44$.
**Step 2:** $x > 14.67$.
**Step 3:** Among choices, $16$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $16$

**Distractor analysis:**
- **A** ($13$): Choice A ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($15$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('f9e0d454-0b2e-4abc-b4ae-34d55e6c108a', 'Which integer value of $x$ satisfies $4x + 6 > 70$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 70 but stay at most 86 to trigger an alert.', 'passage', '[{"id":"A","text":"$14$","is_correct":false,"explanation":"Choice A ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$16$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$17$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 16.00$. **Step 2:** Smallest integer: 17."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 70$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 64$.
**Step 2:** $x > 16.00$.
**Step 3:** Among choices, $17$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $17$

**Distractor analysis:**
- **A** ($14$): Choice A ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($16$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6d77ff84-68d4-4970-bc74-6b66b378dfe0', 'Which integer value of $x$ satisfies $5x + 7 > 93$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 93 but stay at most 109 to trigger an alert.', 'passage', '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Choice A ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$18$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 17.20$. **Step 2:** Smallest integer: 18."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 93$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 86$.
**Step 2:** $x > 17.20$.
**Step 3:** Among choices, $18$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $18$

**Distractor analysis:**
- **A** ($15$): Choice A ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($17$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c310cd0b-a155-450b-9693-c91b8cf4c89e', 'Which integer value of $x$ satisfies $6x + 8 > 118$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 118 but stay at most 134 to trigger an alert.', 'passage', '[{"id":"A","text":"$16$","is_correct":false,"explanation":"Choice A ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$17$","is_correct":false,"explanation":"Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$19$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 18.33$. **Step 2:** Smallest integer: 19."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 118$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 110$.
**Step 2:** $x > 18.33$.
**Step 3:** Among choices, $19$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $19$

**Distractor analysis:**
- **A** ($16$): Choice A ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($17$): Choice B ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($18$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b15681dd-77f3-455a-928d-d9a771718490', 'Which integer value of $x$ satisfies $3x + 9 > 65$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 65 but stay at most 81 to trigger an alert.', 'passage', '[{"id":"A","text":"$17$","is_correct":false,"explanation":"Choice A ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$18$","is_correct":false,"explanation":"Choice B ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$20$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 18.67$. **Step 2:** Smallest integer: 20."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 65$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 56$.
**Step 2:** $x > 18.67$.
**Step 3:** Among choices, $20$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $20$

**Distractor analysis:**
- **A** ($17$): Choice A ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($18$): Choice B ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($19$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('25ea1ed4-35ba-40da-982c-f8f4352e073e', 'Which integer value of $x$ satisfies $4x + 10 > 90$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 90 but stay at most 106 to trigger an alert.', 'passage', '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Choice A ($18$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$19$","is_correct":false,"explanation":"Choice B ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$21$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 20.00$. **Step 2:** Smallest integer: 21."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 90$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 80$.
**Step 2:** $x > 20.00$.
**Step 3:** Among choices, $21$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $21$

**Distractor analysis:**
- **A** ($18$): Choice A ($18$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($19$): Choice B ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($20$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('adc79b1d-5c56-4e8e-99e3-30bead9e8659', 'Which integer value of $x$ satisfies $5x + 5 > 111$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 111 but stay at most 127 to trigger an alert.', 'passage', '[{"id":"A","text":"$19$","is_correct":false,"explanation":"Choice A ($19$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$20$","is_correct":false,"explanation":"Choice B ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$21$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$22$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 21.20$. **Step 2:** Smallest integer: 22."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 111$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 106$.
**Step 2:** $x > 21.20$.
**Step 3:** Among choices, $22$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $22$

**Distractor analysis:**
- **A** ($19$): Choice A ($19$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($20$): Choice B ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($21$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b701deec-653b-4976-b5dc-f6fa3f3c823a', 'Which integer value of $x$ satisfies $6x + 6 > 140$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 140 but stay at most 156 to trigger an alert.', 'passage', '[{"id":"A","text":"$20$","is_correct":false,"explanation":"Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$23$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 22.33$. **Step 2:** Smallest integer: 23."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 140$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 134$.
**Step 2:** $x > 22.33$.
**Step 3:** Among choices, $23$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $23$

**Distractor analysis:**
- **A** ($20$): Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($21$): Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($22$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1205ad0d-d394-47f3-ac76-e5caa6f006cf', 'Which integer value of $x$ satisfies $3x + 7 > 75$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 75 but stay at most 91 to trigger an alert.', 'passage', '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$22$","is_correct":false,"explanation":"Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$24$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 22.67$. **Step 2:** Smallest integer: 24."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 75$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 68$.
**Step 2:** $x > 22.67$.
**Step 3:** Among choices, $24$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $24$

**Distractor analysis:**
- **A** ($21$): Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($22$): Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($23$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('58226fd9-4cd6-4b30-8787-6b2d514ebf9c', 'Which integer value of $x$ satisfies $4x + 8 > 104$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 104 but stay at most 120 to trigger an alert.', 'passage', '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Choice A ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$23$","is_correct":false,"explanation":"Choice B ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$25$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 24.00$. **Step 2:** Smallest integer: 25."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 104$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 96$.
**Step 2:** $x > 24.00$.
**Step 3:** Among choices, $25$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $25$

**Distractor analysis:**
- **A** ($22$): Choice A ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($23$): Choice B ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($24$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c3b08a76-d238-4a28-a666-e0ce4404d7b8', 'Which integer value of $x$ satisfies $5x + 9 > 135$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 135 but stay at most 151 to trigger an alert.', 'passage', '[{"id":"A","text":"$23$","is_correct":false,"explanation":"Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$24$","is_correct":false,"explanation":"Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$26$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 25.20$. **Step 2:** Smallest integer: 26."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 135$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 126$.
**Step 2:** $x > 25.20$.
**Step 3:** Among choices, $26$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $26$

**Distractor analysis:**
- **A** ($23$): Choice A ($23$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($24$): Choice B ($24$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($25$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('80528a02-d954-44cd-9ec4-bde38e981781', 'Which integer value of $x$ satisfies $6x + 10 > 168$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 168 but stay at most 184 to trigger an alert.', 'passage', '[{"id":"A","text":"$24$","is_correct":false,"explanation":"Too small: $6(24)+10=154$."},{"id":"B","text":"$25$","is_correct":false,"explanation":"Choice B ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$27$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 26.33$. **Step 2:** Smallest integer: 27."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 168$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 158$.
**Step 2:** $x > 26.33$.
**Step 3:** Among choices, $27$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $27$

**Distractor analysis:**
- **A** ($24$): Too small: $6(24)+10=154$.
- **B** ($25$): Choice B ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($26$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5a5f5e90-2440-47bb-a1d0-ce7cc51ff3f7', 'Which integer value of $x$ satisfies $3x + 5 > 85$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 85 but stay at most 101 to trigger an alert.', 'passage', '[{"id":"A","text":"$25$","is_correct":false,"explanation":"Choice A ($25$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$26$","is_correct":false,"explanation":"Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$28$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 26.67$. **Step 2:** Smallest integer: 28."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 85$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 80$.
**Step 2:** $x > 26.67$.
**Step 3:** Among choices, $28$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $28$

**Distractor analysis:**
- **A** ($25$): Choice A ($25$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($26$): Choice B ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($27$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7639b993-6d7e-4af8-95b3-c8d36674779c', 'Which integer value of $x$ satisfies $4x + 6 > 118$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 118 but stay at most 134 to trigger an alert.', 'passage', '[{"id":"A","text":"$26$","is_correct":false,"explanation":"Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$29$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 28.00$. **Step 2:** Smallest integer: 29."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 118$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 112$.
**Step 2:** $x > 28.00$.
**Step 3:** Among choices, $29$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $29$

**Distractor analysis:**
- **A** ($26$): Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($27$): Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($28$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fc41e6f9-b599-4f43-aefb-08578d6b5230', 'Which integer value of $x$ satisfies $5x + 7 > 153$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 153 but stay at most 169 to trigger an alert.', 'passage', '[{"id":"A","text":"$27$","is_correct":false,"explanation":"Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$28$","is_correct":false,"explanation":"Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$30$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 29.20$. **Step 2:** Smallest integer: 30."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 153$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 146$.
**Step 2:** $x > 29.20$.
**Step 3:** Among choices, $30$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $30$

**Distractor analysis:**
- **A** ($27$): Choice A ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($28$): Choice B ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($29$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5aad2f2e-859f-46ad-9275-27337743177e', 'Which integer value of $x$ satisfies $6x + 8 > 190$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 190 but stay at most 206 to trigger an alert.', 'passage', '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Choice A ($28$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$31$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 30.33$. **Step 2:** Smallest integer: 31."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 190$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 182$.
**Step 2:** $x > 30.33$.
**Step 3:** Among choices, $31$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $31$

**Distractor analysis:**
- **A** ($28$): Choice A ($28$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($29$): Choice B ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($30$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('683d6acb-22ee-4b71-9d3b-1fdcadd12e69', 'Which integer value of $x$ satisfies $3x + 9 > 101$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 101 but stay at most 117 to trigger an alert.', 'passage', '[{"id":"A","text":"$29$","is_correct":false,"explanation":"Choice A ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$30$","is_correct":false,"explanation":"Choice B ($30$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$32$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 30.67$. **Step 2:** Smallest integer: 32."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 9 > 101$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 92$.
**Step 2:** $x > 30.67$.
**Step 3:** Among choices, $32$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $32$

**Distractor analysis:**
- **A** ($29$): Choice A ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($30$): Choice B ($30$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($31$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('057ba03f-fc10-46f2-a8b6-8f13631ec802', 'Which integer value of $x$ satisfies $4x + 10 > 138$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 138 but stay at most 154 to trigger an alert.', 'passage', '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Too small: $4(30)+10=130$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"Choice B ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$32$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$33$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 32.00$. **Step 2:** Smallest integer: 33."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 10 > 138$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 128$.
**Step 2:** $x > 32.00$.
**Step 3:** Among choices, $33$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $33$

**Distractor analysis:**
- **A** ($30$): Too small: $4(30)+10=130$.
- **B** ($31$): Choice B ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($32$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c5acaf0e-1a4c-47fa-8f73-69d7cb5b17b9', 'Which integer value of $x$ satisfies $5x + 5 > 171$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 171 but stay at most 187 to trigger an alert.', 'passage', '[{"id":"A","text":"$31$","is_correct":false,"explanation":"Choice A ($31$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$32$","is_correct":false,"explanation":"Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$34$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 33.20$. **Step 2:** Smallest integer: 34."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 5 > 171$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 166$.
**Step 2:** $x > 33.20$.
**Step 3:** Among choices, $34$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $34$

**Distractor analysis:**
- **A** ($31$): Choice A ($31$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($32$): Choice B ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($33$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('912d7224-f57b-4ba1-8a71-d32b90066461', 'Which integer value of $x$ satisfies $6x + 6 > 212$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 212 but stay at most 228 to trigger an alert.', 'passage', '[{"id":"A","text":"$32$","is_correct":false,"explanation":"Choice A ($32$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Choice B ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$35$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 34.33$. **Step 2:** Smallest integer: 35."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 6 > 212$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 206$.
**Step 2:** $x > 34.33$.
**Step 3:** Among choices, $35$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $35$

**Distractor analysis:**
- **A** ($32$): Choice A ($32$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($33$): Choice B ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($34$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('50003fc6-4b89-4120-b794-d380f5ea0e3e', 'Which integer value of $x$ satisfies $3x + 7 > 111$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 111 but stay at most 127 to trigger an alert.', 'passage', '[{"id":"A","text":"$33$","is_correct":false,"explanation":"Choice A ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$34$","is_correct":false,"explanation":"Choice B ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$35$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$36$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 34.67$. **Step 2:** Smallest integer: 36."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 7 > 111$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 104$.
**Step 2:** $x > 34.67$.
**Step 3:** Among choices, $36$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $36$

**Distractor analysis:**
- **A** ($33$): Choice A ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($34$): Choice B ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($35$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('dd6fa10b-d33b-43b8-9b4e-4c7eb66b15e1', 'Which integer value of $x$ satisfies $4x + 8 > 152$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 152 but stay at most 168 to trigger an alert.', 'passage', '[{"id":"A","text":"$34$","is_correct":false,"explanation":"Choice A ($34$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$35$","is_correct":false,"explanation":"Choice B ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$36$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$37$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 36.00$. **Step 2:** Smallest integer: 37."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 8 > 152$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 144$.
**Step 2:** $x > 36.00$.
**Step 3:** Among choices, $37$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $37$

**Distractor analysis:**
- **A** ($34$): Choice A ($34$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($35$): Choice B ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($36$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ea65cf22-8a81-44b5-b75a-4bd51a50fd57', 'Which integer value of $x$ satisfies $5x + 9 > 195$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 195 but stay at most 211 to trigger an alert.', 'passage', '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$36$","is_correct":false,"explanation":"Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$38$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 37.20$. **Step 2:** Smallest integer: 38."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 9 > 195$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 186$.
**Step 2:** $x > 37.20$.
**Step 3:** Among choices, $38$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $38$

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($36$): Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($37$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8631d109-6c99-4fe3-93e6-e2b32115e8fb', 'Which integer value of $x$ satisfies $6x + 10 > 240$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 240 but stay at most 256 to trigger an alert.', 'passage', '[{"id":"A","text":"$36$","is_correct":false,"explanation":"Too small: $6(36)+10=226$."},{"id":"B","text":"$37$","is_correct":false,"explanation":"Choice B ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$38$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$39$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 38.33$. **Step 2:** Smallest integer: 39."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 10 > 240$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 230$.
**Step 2:** $x > 38.33$.
**Step 3:** Among choices, $39$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $39$

**Distractor analysis:**
- **A** ($36$): Too small: $6(36)+10=226$.
- **B** ($37$): Choice B ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($38$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2c851077-45d6-441a-b55f-a7b2a7ad58d1', 'Which integer value of $x$ satisfies $3x + 5 > 121$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 121 but stay at most 137 to trigger an alert.', 'passage', '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Choice A ($37$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$38$","is_correct":false,"explanation":"Choice B ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$40$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 38.67$. **Step 2:** Smallest integer: 40."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $3x + 5 > 121$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $3x > 116$.
**Step 2:** $x > 38.67$.
**Step 3:** Among choices, $40$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $40$

**Distractor analysis:**
- **A** ($37$): Choice A ($37$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($38$): Choice B ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($39$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('bfb14d3c-dee7-424c-a5fc-1ca2af88d9a4', 'Which integer value of $x$ satisfies $4x + 6 > 166$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 166 but stay at most 182 to trigger an alert.', 'passage', '[{"id":"A","text":"$38$","is_correct":false,"explanation":"Choice A ($38$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$39$","is_correct":false,"explanation":"Choice B ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$40$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$41$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 40.00$. **Step 2:** Smallest integer: 41."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $4x + 6 > 166$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $4x > 160$.
**Step 2:** $x > 40.00$.
**Step 3:** Among choices, $41$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $41$

**Distractor analysis:**
- **A** ($38$): Choice A ($38$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($39$): Choice B ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($40$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2bc491bc-7620-47b3-aeea-6464f259db39', 'Which integer value of $x$ satisfies $5x + 7 > 213$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 213 but stay at most 229 to trigger an alert.', 'passage', '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Choice A ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$40$","is_correct":false,"explanation":"Choice B ($40$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$42$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 41.20$. **Step 2:** Smallest integer: 42."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $5x + 7 > 213$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $5x > 206$.
**Step 2:** $x > 41.20$.
**Step 3:** Among choices, $42$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $42$

**Distractor analysis:**
- **A** ($39$): Choice A ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($40$): Choice B ($40$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($41$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8ae0e783-88d1-4cdb-bf45-f203fea6c041', 'Which integer value of $x$ satisfies $6x + 8 > 262$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 262 but stay at most 278 to trigger an alert.', 'passage', '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Choice A ($40$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$43$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 42.33$. **Step 2:** Smallest integer: 43."}]'::jsonb, 'D', '**Step 1 — Understand.** Which integer value of $x$ satisfies $6x + 8 > 262$ and is the smallest feasible reading?

**Step 2 — Solve.** **Step 1:** $6x > 254$.
**Step 2:** $x > 42.33$.
**Step 3:** Among choices, $43$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $43$

**Distractor analysis:**
- **A** ($40$): Choice A ($40$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($41$): Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($42$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', NULL, 'math', NULL, 'INE', 'INE', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"INE","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
