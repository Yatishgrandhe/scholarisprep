BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00c1b873-d820-4b0b-9208-f5e5841cfd64', 'For what value of $k$ does $6(x-8)+2k = 280$ have solution $x=52$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=52$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$52$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-8)+2k = 280$ have solution $x=52$?

**Step 2 — Solve.** **Step 1:** Substitute $x=52$: $6(52-k)+2k=280$.
**Step 2:** Expand: $312-6k+2k=280$ → $312+-4k=280$.
**Step 3:** Isolate: $-4k=-32$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($52$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('b576816d-183c-4802-9c5b-2e634e6e2e72', 'For what value of $k$ does $7(x-3)+2k = 356$ have solution $x=53$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=53$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$53$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-3)+2k = 356$ have solution $x=53$?

**Step 2 — Solve.** **Step 1:** Substitute $x=53$: $7(53-k)+2k=356$.
**Step 2:** Expand: $371-7k+2k=356$ → $371+-5k=356$.
**Step 3:** Isolate: $-5k=-15$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($53$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dccad92d-3624-4d60-b333-b80f77c24356', 'For what value of $k$ does $8(x-4)+2k = 408$ have solution $x=54$? Enter your answer as a number.', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"SPR","text":"4","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For what value of $k$ does $8(x-4)+2k = 408$ have solution $x=54$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Substitute $x=54$: $8(54-k)+2k=408$.
**Step 2:** Expand: $432-8k+2k=408$ → $432+-6k=408$.
**Step 3:** Isolate: $-6k=-24$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Step 3 — Answer SPR.** 4', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0e8019fc-f2e3-43da-a10c-c1340749df9d', 'For what value of $k$ does $4(x-5)+2k = 210$ have solution $x=55$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=55$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$55$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-5)+2k = 210$ have solution $x=55$?

**Step 2 — Solve.** **Step 1:** Substitute $x=55$: $4(55-k)+2k=210$.
**Step 2:** Expand: $220-4k+2k=210$ → $220+-2k=210$.
**Step 3:** Isolate: $-2k=-10$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($55$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f5c5dd4d-24d6-4a3b-b4de-64a300d68c38', 'For what value of $k$ does $5(x-6)+2k = 262$ have solution $x=56$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=56$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$56$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-6)+2k = 262$ have solution $x=56$?

**Step 2 — Solve.** **Step 1:** Substitute $x=56$: $5(56-k)+2k=262$.
**Step 2:** Expand: $280-5k+2k=262$ → $280+-3k=262$.
**Step 3:** Isolate: $-3k=-18$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($56$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('0b37a343-a645-4c75-bcc7-4d1e05ca62df', 'For what value of $k$ does $6(x-7)+2k = 314$ have solution $x=57$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=57$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$57$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-7)+2k = 314$ have solution $x=57$?

**Step 2 — Solve.** **Step 1:** Substitute $x=57$: $6(57-k)+2k=314$.
**Step 2:** Expand: $342-6k+2k=314$ → $342+-4k=314$.
**Step 3:** Isolate: $-4k=-28$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($57$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9da02ad3-9f22-4c6c-b95d-fce753c87fff', 'For what value of $k$ does $7(x-8)+2k = 366$ have solution $x=58$? Enter your answer as a number.', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"SPR","text":"8","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For what value of $k$ does $7(x-8)+2k = 366$ have solution $x=58$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Substitute $x=58$: $7(58-k)+2k=366$.
**Step 2:** Expand: $406-7k+2k=366$ → $406+-5k=366$.
**Step 3:** Isolate: $-5k=-40$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Step 3 — Answer SPR.** 8', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('8b3924e9-f2c5-4877-b602-cc58e84eb6ca', 'For what value of $k$ does $8(x-3)+2k = 454$ have solution $x=59$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=59$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$59$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-3)+2k = 454$ have solution $x=59$?

**Step 2 — Solve.** **Step 1:** Substitute $x=59$: $8(59-k)+2k=454$.
**Step 2:** Expand: $472-8k+2k=454$ → $472+-6k=454$.
**Step 3:** Isolate: $-6k=-18$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($59$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('00f887c1-9f71-4254-bd45-2480d0dc9745', 'For what value of $k$ does $4(x-4)+2k = 232$ have solution $x=60$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=60$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$60$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-4)+2k = 232$ have solution $x=60$?

**Step 2 — Solve.** **Step 1:** Substitute $x=60$: $4(60-k)+2k=232$.
**Step 2:** Expand: $240-4k+2k=232$ → $240+-2k=232$.
**Step 3:** Isolate: $-2k=-8$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($60$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('dc38641e-7470-4ce0-9fbf-02fff2b0db08', 'For what value of $k$ does $5(x-5)+2k = 290$ have solution $x=61$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=61$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$61$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-5)+2k = 290$ have solution $x=61$?

**Step 2 — Solve.** **Step 1:** Substitute $x=61$: $5(61-k)+2k=290$.
**Step 2:** Expand: $305-5k+2k=290$ → $305+-3k=290$.
**Step 3:** Isolate: $-3k=-15$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($61$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('fa4d2694-636e-43a6-be21-052c687c7a26', 'For what value of $k$ does $6(x-6)+2k = 348$ have solution $x=62$? Enter your answer as a number.', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"SPR","text":"6","is_correct":true,"explanation":"Correct (SPR). Enter this value in the response field."},{"id":"_","text":"(student-produced)","is_correct":false,"explanation":"Placeholder — SPR items use the response field, not A–D."}]'::jsonb, 'SPR', '**Step 1 — Understand.** For what value of $k$ does $6(x-6)+2k = 348$ have solution $x=62$? Enter your answer as a number.

**Step 2 — Solve.** **Step 1:** Substitute $x=62$: $6(62-k)+2k=348$.
**Step 2:** Expand: $372-6k+2k=348$ → $372+-4k=348$.
**Step 3:** Isolate: $-4k=-24$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Step 3 — Answer SPR.** 6', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'grid_in'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"spr","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('033ca38e-008b-4f11-ae82-fcb6cbcabf85', 'For what value of $k$ does $7(x-7)+2k = 406$ have solution $x=63$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=63$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$63$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-7)+2k = 406$ have solution $x=63$?

**Step 2 — Solve.** **Step 1:** Substitute $x=63$: $7(63-k)+2k=406$.
**Step 2:** Expand: $441-7k+2k=406$ → $441+-5k=406$.
**Step 3:** Isolate: $-5k=-35$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($63$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', 'Linear equations in one variable', 'math', 'algebra', 'LIN', 'LIN', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
