BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('bbcbe440-8773-46fe-b606-f2521670be65', 'For what value of $k$ does $4(x-8)+2k = 144$ have solution $x=40$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=40$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$40$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-8)+2k = 144$ have solution $x=40$?

**Step 2 — Solve.** **Step 1:** Substitute $x=40$: $4(40-k)+2k=144$.
**Step 2:** Expand: $160-4k+2k=144$ → $160+-2k=144$.
**Step 3:** Isolate: $-2k=-16$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($40$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0c7cf0f1-83fb-4fd9-bd79-68daec2ca5d2', 'For what value of $k$ does $5(x-3)+2k = 196$ have solution $x=41$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=41$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$41$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-3)+2k = 196$ have solution $x=41$?

**Step 2 — Solve.** **Step 1:** Substitute $x=41$: $5(41-k)+2k=196$.
**Step 2:** Expand: $205-5k+2k=196$ → $205+-3k=196$.
**Step 3:** Isolate: $-3k=-9$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($41$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a971e43b-8533-4db0-bd0a-489138e2e56c', 'For what value of $k$ does $6(x-4)+2k = 236$ have solution $x=42$? Enter your answer as a number.', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"SPR","text":"4","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For what value of $k$ does $6(x-4)+2k = 236$ have solution $x=42$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Substitute $x=42$: $6(42-k)+2k=236$.
**Step 2:** Expand: $252-6k+2k=236$ → $252+-4k=236$.
**Step 3:** Isolate: $-4k=-16$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Step 3 — Answer SPR.** 4', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f8b60641-dabe-4a98-87db-c62ac3366e10', 'For what value of $k$ does $7(x-5)+2k = 276$ have solution $x=43$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=43$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$43$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-5)+2k = 276$ have solution $x=43$?

**Step 2 — Solve.** **Step 1:** Substitute $x=43$: $7(43-k)+2k=276$.
**Step 2:** Expand: $301-7k+2k=276$ → $301+-5k=276$.
**Step 3:** Isolate: $-5k=-25$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($43$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('607d51ec-300b-49ae-ad60-a7e3c9127193', 'For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=44$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$44$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?

**Step 2 — Solve.** **Step 1:** Substitute $x=44$: $8(44-k)+2k=316$.
**Step 2:** Expand: $352-8k+2k=316$ → $352+-6k=316$.
**Step 3:** Isolate: $-6k=-36$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($44$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('badcf91b-e468-41f6-bbab-ac09df3c9fa9', 'For what value of $k$ does $4(x-7)+2k = 166$ have solution $x=45$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=45$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-7)+2k = 166$ have solution $x=45$?

**Step 2 — Solve.** **Step 1:** Substitute $x=45$: $4(45-k)+2k=166$.
**Step 2:** Expand: $180-4k+2k=166$ → $180+-2k=166$.
**Step 3:** Isolate: $-2k=-14$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($45$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('6fb59d37-2dd2-493d-9be7-b66b32c0b591', 'For what value of $k$ does $5(x-8)+2k = 206$ have solution $x=46$? Enter your answer as a number.', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"SPR","text":"8","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For what value of $k$ does $5(x-8)+2k = 206$ have solution $x=46$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Substitute $x=46$: $5(46-k)+2k=206$.
**Step 2:** Expand: $230-5k+2k=206$ → $230+-3k=206$.
**Step 3:** Isolate: $-3k=-24$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Step 3 — Answer SPR.** 8', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00e89cdc-7741-435e-adb1-21697b990e87', 'For what value of $k$ does $6(x-3)+2k = 270$ have solution $x=47$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=47$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$47$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-3)+2k = 270$ have solution $x=47$?

**Step 2 — Solve.** **Step 1:** Substitute $x=47$: $6(47-k)+2k=270$.
**Step 2:** Expand: $282-6k+2k=270$ → $282+-4k=270$.
**Step 3:** Isolate: $-4k=-12$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($47$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3fa5a1b2-acdf-4f7f-bffd-39c8d4a8a7e1', 'For what value of $k$ does $7(x-4)+2k = 316$ have solution $x=48$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=48$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$48$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-4)+2k = 316$ have solution $x=48$?

**Step 2 — Solve.** **Step 1:** Substitute $x=48$: $7(48-k)+2k=316$.
**Step 2:** Expand: $336-7k+2k=316$ → $336+-5k=316$.
**Step 3:** Isolate: $-5k=-20$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($48$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('725c5aa1-b90a-4c94-984f-026ffa91550d', 'For what value of $k$ does $8(x-5)+2k = 362$ have solution $x=49$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=49$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$49$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-5)+2k = 362$ have solution $x=49$?

**Step 2 — Solve.** **Step 1:** Substitute $x=49$: $8(49-k)+2k=362$.
**Step 2:** Expand: $392-8k+2k=362$ → $392+-6k=362$.
**Step 3:** Isolate: $-6k=-30$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($49$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('7561d91d-6512-4710-96ff-dd397ff113fb', 'For what value of $k$ does $4(x-6)+2k = 188$ have solution $x=50$? Enter your answer as a number.', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"SPR","text":"6","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For what value of $k$ does $4(x-6)+2k = 188$ have solution $x=50$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Substitute $x=50$: $4(50-k)+2k=188$.
**Step 2:** Expand: $200-4k+2k=188$ → $200+-2k=188$.
**Step 3:** Isolate: $-2k=-12$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Step 3 — Answer SPR.** 6', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('56d019a9-975c-47aa-8a72-f1c9cb02a4a0', 'For what value of $k$ does $5(x-7)+2k = 234$ have solution $x=51$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=51$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$51$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-7)+2k = 234$ have solution $x=51$?

**Step 2 — Solve.** **Step 1:** Substitute $x=51$: $5(51-k)+2k=234$.
**Step 2:** Expand: $255-5k+2k=234$ → $255+-3k=234$.
**Step 3:** Isolate: $-3k=-21$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($51$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'medium'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
