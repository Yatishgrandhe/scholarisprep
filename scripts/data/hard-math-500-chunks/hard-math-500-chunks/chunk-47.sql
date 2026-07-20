BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('314b7f69-a217-418c-ae83-c10fe1d3c8d5', 'Given $x+y=24$ and $3x-y=21$, what is $x$?', 'At an event, 24 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=21$.', NULL, '[{"id":"A","text":"$15$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=60$. **Step 2:** $x=15$."},{"id":"B","text":"$14$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$16$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(3x-y)=24+21$ → $4x=60$.
**Step 2:** $x=15$.
**Step 3:** Back-substitute: $y=9$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($14$): One less than the solution.
- **C** ($9$): Choice C ($9$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":26}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e1745c7c-8f27-4ae5-98df-2eb17c3fb4e8', 'Given $x+y=26$ and $4x-y=22$, what is $x$?', 'At an event, 26 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.', NULL, '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=80$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(4x-y)=26+22$ → $5x=80$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":27}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('cdaa3cb5-626c-4889-969c-1cd0e8804f5b', 'Given $x+y=28$ and $3x-y=23$, what is $x$?', 'At an event, 28 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=23$.', NULL, '[{"id":"A","text":"$17$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=68$. **Step 2:** $x=17$."},{"id":"B","text":"$16$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$11$","is_correct":false,"explanation":"Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$18$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(3x-y)=28+23$ → $4x=68$.
**Step 2:** $x=17$.
**Step 3:** Back-substitute: $y=11$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($16$): One less than the solution.
- **C** ($11$): Choice C ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":28}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f279efa1-dffd-4f1e-aef1-0d1fa9f29cbe', 'Given $x+y=30$ and $4x-y=24$, what is $x$?', 'At an event, 30 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=24$.', NULL, '[{"id":"A","text":"$18$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=90$. **Step 2:** $x=18$."},{"id":"B","text":"$17$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$12$","is_correct":false,"explanation":"Choice C ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$19$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(4x-y)=30+24$ → $5x=90$.
**Step 2:** $x=18$.
**Step 3:** Back-substitute: $y=12$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($17$): One less than the solution.
- **C** ($12$): Choice C ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($19$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":29}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('72537a16-3eb9-47e0-b677-59805cd185ec', 'Given $x+y=32$ and $3x-y=25$, what is $x$?', 'At an event, 32 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=25$.', NULL, '[{"id":"A","text":"$19$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=76$. **Step 2:** $x=19$."},{"id":"B","text":"$18$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$20$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(3x-y)=32+25$ → $4x=76$.
**Step 2:** $x=19$.
**Step 3:** Back-substitute: $y=13$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($18$): One less than the solution.
- **C** ($13$): Choice C ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($20$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":30}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e2900bd6-9b26-4bd4-88e6-d93ae1623178', 'Given $x+y=34$ and $4x-y=26$, what is $x$?', 'At an event, 34 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=26$.', NULL, '[{"id":"A","text":"$20$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=100$. **Step 2:** $x=20$."},{"id":"B","text":"$19$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$21$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb, 'A', '**Step 1:** Add: $(x+y)+(4x-y)=34+26$ → $5x=100$.
**Step 2:** $x=20$.
**Step 3:** Back-substitute: $y=14$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($19$): One less than the solution.
- **C** ($14$): Choice C ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($21$): One more than the solution.', NULL, 'Algebra', 'Systems of two linear equations', 'math', 'algebra', 'SYS', 'SYS', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"SYS","insert_index":31}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('86c0a026-197f-41b9-9e27-f9bbd92fc53d', 'Which integer value of $x$ satisfies $3x + 5 > 70$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 70 but stay at most 86 to trigger an alert.', NULL, '[{"id":"A","text":"$20$","is_correct":false,"explanation":"Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$22$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$23$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 21.67$. **Step 2:** Smallest integer: 23."}]'::jsonb, 'D', '**Step 1:** $3x > 65$.
**Step 2:** $x > 21.67$.
**Step 3:** Among choices, $23$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($20$): Choice A ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($21$): Choice B ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($22$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":32}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('36181860-7e83-458c-bdf3-1b148c494867', 'Which integer value of $x$ satisfies $4x + 6 > 98$ and is the smallest feasible reading?', 'A sensor reading $R=ax+b$ must exceed 98 but stay at most 114 to trigger an alert.', NULL, '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$22$","is_correct":false,"explanation":"Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$24$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 23.00$. **Step 2:** Smallest integer: 24."}]'::jsonb, 'D', '**Step 1:** $4x > 92$.
**Step 2:** $x > 23.00$.
**Step 3:** Among choices, $24$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($21$): Choice A ($21$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($22$): Choice B ($22$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($23$): Borderline; strict inequality requires the next integer up.', NULL, 'Algebra', 'Linear inequalities', 'math', 'algebra', 'INE', 'INE', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.627Z","skill":"INE","insert_index":33}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;

COMMIT;
