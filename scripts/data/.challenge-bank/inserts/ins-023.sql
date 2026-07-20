BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('9e6665bf-660e-4750-97f8-b7a616951857', 'For what value of $k$ does $4(x-5)+2k = 90$ have solution $x=25$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=25$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$25$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-5)+2k = 90$ have solution $x=25$?

**Step 2 — Solve.** **Step 1:** Substitute $x=25$: $4(25-k)+2k=90$.
**Step 2:** Expand: $100-4k+2k=90$ → $100+-2k=90$.
**Step 3:** Isolate: $-2k=-10$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($25$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('37ed8eea-05da-4f6c-ade4-d0a4c8e2f050', 'For what value of $k$ does $5(x-6)+2k = 112$ have solution $x=26$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=26$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$26$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-6)+2k = 112$ have solution $x=26$?

**Step 2 — Solve.** **Step 1:** Substitute $x=26$: $5(26-k)+2k=112$.
**Step 2:** Expand: $130-5k+2k=112$ → $130+-3k=112$.
**Step 3:** Isolate: $-3k=-18$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($26$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('58e5fa99-07f3-400d-a2d8-f419acbcf203', 'For what value of $k$ does $6(x-7)+2k = 134$ have solution $x=27$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=27$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$27$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-7)+2k = 134$ have solution $x=27$?

**Step 2 — Solve.** **Step 1:** Substitute $x=27$: $6(27-k)+2k=134$.
**Step 2:** Expand: $162-6k+2k=134$ → $162+-4k=134$.
**Step 3:** Isolate: $-4k=-28$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($27$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b5d6748a-a55c-48b1-87a6-ac66bdffb90b', 'For what value of $k$ does $7(x-8)+2k = 156$ have solution $x=28$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=28$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$28$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-8)+2k = 156$ have solution $x=28$?

**Step 2 — Solve.** **Step 1:** Substitute $x=28$: $7(28-k)+2k=156$.
**Step 2:** Expand: $196-7k+2k=156$ → $196+-5k=156$.
**Step 3:** Isolate: $-5k=-40$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($28$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ca582dce-6bfc-4041-885f-a9ae3e169acf', 'For what value of $k$ does $8(x-3)+2k = 214$ have solution $x=29$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=29$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$29$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-3)+2k = 214$ have solution $x=29$?

**Step 2 — Solve.** **Step 1:** Substitute $x=29$: $8(29-k)+2k=214$.
**Step 2:** Expand: $232-8k+2k=214$ → $232+-6k=214$.
**Step 3:** Isolate: $-6k=-18$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($29$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('22a2efc1-2e49-4251-ad40-2deb6d2cf324', 'For what value of $k$ does $4(x-4)+2k = 112$ have solution $x=30$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=30$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$30$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-4)+2k = 112$ have solution $x=30$?

**Step 2 — Solve.** **Step 1:** Substitute $x=30$: $4(30-k)+2k=112$.
**Step 2:** Expand: $120-4k+2k=112$ → $120+-2k=112$.
**Step 3:** Isolate: $-2k=-8$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($30$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('03fb896b-cef7-43c0-b7ea-1009a5c6ec0d', 'For what value of $k$ does $5(x-5)+2k = 140$ have solution $x=31$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=31$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$31$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-5)+2k = 140$ have solution $x=31$?

**Step 2 — Solve.** **Step 1:** Substitute $x=31$: $5(31-k)+2k=140$.
**Step 2:** Expand: $155-5k+2k=140$ → $155+-3k=140$.
**Step 3:** Isolate: $-3k=-15$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($31$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('572f2bdb-892f-431d-ab33-d6253995ab5e', 'For what value of $k$ does $6(x-6)+2k = 168$ have solution $x=32$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=32$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$32$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-6)+2k = 168$ have solution $x=32$?

**Step 2 — Solve.** **Step 1:** Substitute $x=32$: $6(32-k)+2k=168$.
**Step 2:** Expand: $192-6k+2k=168$ → $192+-4k=168$.
**Step 3:** Isolate: $-4k=-24$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($32$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('30f70485-94f4-4278-b9dd-2b88af2720b6', 'For what value of $k$ does $7(x-7)+2k = 196$ have solution $x=33$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=33$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$33$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-7)+2k = 196$ have solution $x=33$?

**Step 2 — Solve.** **Step 1:** Substitute $x=33$: $7(33-k)+2k=196$.
**Step 2:** Expand: $231-7k+2k=196$ → $231+-5k=196$.
**Step 3:** Isolate: $-5k=-35$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($33$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b6d0510a-ea72-4ad1-9c00-01e1a96ded16', 'For what value of $k$ does $8(x-8)+2k = 224$ have solution $x=34$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=34$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$34$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-8)+2k = 224$ have solution $x=34$?

**Step 2 — Solve.** **Step 1:** Substitute $x=34$: $8(34-k)+2k=224$.
**Step 2:** Expand: $272-8k+2k=224$ → $272+-6k=224$.
**Step 3:** Isolate: $-6k=-48$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($34$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c8501554-e5a4-4676-a7c2-60e82be19052', 'For what value of $k$ does $4(x-3)+2k = 134$ have solution $x=35$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=35$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$35$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-3)+2k = 134$ have solution $x=35$?

**Step 2 — Solve.** **Step 1:** Substitute $x=35$: $4(35-k)+2k=134$.
**Step 2:** Expand: $140-4k+2k=134$ → $140+-2k=134$.
**Step 3:** Isolate: $-2k=-6$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($35$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fac32fe8-1bff-43cc-8c75-6699de01db97', 'For what value of $k$ does $5(x-4)+2k = 168$ have solution $x=36$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=36$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-4)+2k = 168$ have solution $x=36$?

**Step 2 — Solve.** **Step 1:** Substitute $x=36$: $5(36-k)+2k=168$.
**Step 2:** Expand: $180-5k+2k=168$ → $180+-3k=168$.
**Step 3:** Isolate: $-3k=-12$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($36$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('44d00137-8209-4f95-b938-7b2a170cb2ad', 'For what value of $k$ does $6(x-5)+2k = 202$ have solution $x=37$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=37$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$37$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-5)+2k = 202$ have solution $x=37$?

**Step 2 — Solve.** **Step 1:** Substitute $x=37$: $6(37-k)+2k=202$.
**Step 2:** Expand: $222-6k+2k=202$ → $222+-4k=202$.
**Step 3:** Isolate: $-4k=-20$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($37$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('6dd5a750-bed1-46e7-adb7-95fc47f6da50', 'For what value of $k$ does $7(x-6)+2k = 236$ have solution $x=38$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=38$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$38$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-6)+2k = 236$ have solution $x=38$?

**Step 2 — Solve.** **Step 1:** Substitute $x=38$: $7(38-k)+2k=236$.
**Step 2:** Expand: $266-7k+2k=236$ → $266+-5k=236$.
**Step 3:** Isolate: $-5k=-30$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($38$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('5bd316bf-19d0-412e-9555-247215961969', 'For what value of $k$ does $8(x-7)+2k = 270$ have solution $x=39$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=39$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$39$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-7)+2k = 270$ have solution $x=39$?

**Step 2 — Solve.** **Step 1:** Substitute $x=39$: $8(39-k)+2k=270$.
**Step 2:** Expand: $312-8k+2k=270$ → $312+-6k=270$.
**Step 3:** Isolate: $-6k=-42$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($39$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('2f9418b0-1d38-4f89-8bf2-8cf6e55f1ae0', 'For what value of $k$ does $4(x-8)+2k = 144$ have solution $x=40$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=40$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$40$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-8)+2k = 144$ have solution $x=40$?

**Step 2 — Solve.** **Step 1:** Substitute $x=40$: $4(40-k)+2k=144$.
**Step 2:** Expand: $160-4k+2k=144$ → $160+-2k=144$.
**Step 3:** Isolate: $-2k=-16$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($40$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d154dab1-4833-47ab-9521-1fedf0b3062f', 'For what value of $k$ does $5(x-3)+2k = 196$ have solution $x=41$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=41$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$41$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-3)+2k = 196$ have solution $x=41$?

**Step 2 — Solve.** **Step 1:** Substitute $x=41$: $5(41-k)+2k=196$.
**Step 2:** Expand: $205-5k+2k=196$ → $205+-3k=196$.
**Step 3:** Isolate: $-3k=-9$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($41$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('1cd34c1f-b305-4c08-a209-3594430df92a', 'For what value of $k$ does $6(x-4)+2k = 236$ have solution $x=42$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=42$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$42$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-4)+2k = 236$ have solution $x=42$?

**Step 2 — Solve.** **Step 1:** Substitute $x=42$: $6(42-k)+2k=236$.
**Step 2:** Expand: $252-6k+2k=236$ → $252+-4k=236$.
**Step 3:** Isolate: $-4k=-16$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($42$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('e73d9868-3dac-4d9a-a5a8-76ec10362b67', 'For what value of $k$ does $7(x-5)+2k = 276$ have solution $x=43$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=43$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$43$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-5)+2k = 276$ have solution $x=43$?

**Step 2 — Solve.** **Step 1:** Substitute $x=43$: $7(43-k)+2k=276$.
**Step 2:** Expand: $301-7k+2k=276$ → $301+-5k=276$.
**Step 3:** Isolate: $-5k=-25$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($43$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8ece6c0f-ba40-499a-a488-6c468a9ff360', 'For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=44$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$44$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?

**Step 2 — Solve.** **Step 1:** Substitute $x=44$: $8(44-k)+2k=316$.
**Step 2:** Expand: $352-8k+2k=316$ → $352+-6k=316$.
**Step 3:** Isolate: $-6k=-36$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($44$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b37ba764-eb47-48ea-b4bb-654e2862127e', 'For what value of $k$ does $4(x-7)+2k = 166$ have solution $x=45$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=45$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-7)+2k = 166$ have solution $x=45$?

**Step 2 — Solve.** **Step 1:** Substitute $x=45$: $4(45-k)+2k=166$.
**Step 2:** Expand: $180-4k+2k=166$ → $180+-2k=166$.
**Step 3:** Isolate: $-2k=-14$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($45$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7caadfd1-598f-4698-9edb-1afb69e18465', 'For what value of $k$ does $5(x-8)+2k = 206$ have solution $x=46$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=46$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$46$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-8)+2k = 206$ have solution $x=46$?

**Step 2 — Solve.** **Step 1:** Substitute $x=46$: $5(46-k)+2k=206$.
**Step 2:** Expand: $230-5k+2k=206$ → $230+-3k=206$.
**Step 3:** Isolate: $-3k=-24$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($46$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('194c7fcc-8b3c-431f-91af-eda841e048c4', 'For what value of $k$ does $6(x-3)+2k = 270$ have solution $x=47$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=47$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$47$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-3)+2k = 270$ have solution $x=47$?

**Step 2 — Solve.** **Step 1:** Substitute $x=47$: $6(47-k)+2k=270$.
**Step 2:** Expand: $282-6k+2k=270$ → $282+-4k=270$.
**Step 3:** Isolate: $-4k=-12$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $3$

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($47$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b395af03-f7e9-455f-a511-83dbb8736930', 'For what value of $k$ does $7(x-4)+2k = 316$ have solution $x=48$?', 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=48$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$48$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $7(x-4)+2k = 316$ have solution $x=48$?

**Step 2 — Solve.** **Step 1:** Substitute $x=48$: $7(48-k)+2k=316$.
**Step 2:** Expand: $336-7k+2k=316$ → $336+-5k=316$.
**Step 3:** Isolate: $-5k=-20$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $4$

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($48$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('cb5b7530-3bdd-443a-8678-1e6ee85cbf9a', 'For what value of $k$ does $8(x-5)+2k = 362$ have solution $x=49$?', 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=49$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$49$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $8(x-5)+2k = 362$ have solution $x=49$?

**Step 2 — Solve.** **Step 1:** Substitute $x=49$: $8(49-k)+2k=362$.
**Step 2:** Expand: $392-8k+2k=362$ → $392+-6k=362$.
**Step 3:** Isolate: $-6k=-30$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $5$

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($49$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('0bf9a6bd-71c6-43cf-9771-62323cf6e257', 'For what value of $k$ does $4(x-6)+2k = 188$ have solution $x=50$?', 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=50$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$50$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $4(x-6)+2k = 188$ have solution $x=50$?

**Step 2 — Solve.** **Step 1:** Substitute $x=50$: $4(50-k)+2k=188$.
**Step 2:** Expand: $200-4k+2k=188$ → $200+-2k=188$.
**Step 3:** Isolate: $-2k=-12$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $6$

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($50$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('659e6199-2f02-46d2-9d7c-1768c71a7965', 'For what value of $k$ does $5(x-7)+2k = 234$ have solution $x=51$?', 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=51$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$51$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $5(x-7)+2k = 234$ have solution $x=51$?

**Step 2 — Solve.** **Step 1:** Substitute $x=51$: $5(51-k)+2k=234$.
**Step 2:** Expand: $255-5k+2k=234$ → $255+-3k=234$.
**Step 3:** Isolate: $-3k=-21$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $7$

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($51$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('8ea8aa70-ea97-40f1-82aa-04f30f9c1a9a', 'For what value of $k$ does $6(x-8)+2k = 280$ have solution $x=52$?', 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.', 'passage', '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=52$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$52$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb, 'B', '**Step 1 — Understand.** For what value of $k$ does $6(x-8)+2k = 280$ have solution $x=52$?

**Step 2 — Solve.** **Step 1:** Substitute $x=52$: $6(52-k)+2k=280$.
**Step 2:** Expand: $312-6k+2k=280$ → $312+-4k=280$.
**Step 3:** Isolate: $-4k=-32$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer B.** $8$

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($52$): That is the given solution for $x$, not the parameter $k$.', NULL, 'Algebra', NULL, 'math', NULL, 'LIN', 'LIN', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIN","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('d21dbbd7-852a-41eb-9e67-4b8453b3709d', 'Linear function $f$ models temperature. $f(3)=-3$ and $f(9)=15$. What is $f(-5)$?', NULL, NULL, '[{"id":"A","text":"$-24$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-31$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-27$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-5)=-27$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(3)=-3$ and $f(9)=15$. What is $f(-5)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{15--3}{9-3}=3$.
**Step 2:** Point-slope: $f(-5)=3(-5-3)+(-3)$.
**Step 3:** $f(-5)=-27$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-27$

**Distractor analysis:**
- **A** ($-24$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-31$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('c7a4cbc2-a844-46c1-bfd4-48ce862e50e5', 'Linear function $f$ models temperature. $f(4)=-2$ and $f(10)=22$. What is $f(-6)$?', NULL, NULL, '[{"id":"A","text":"$-38$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-46$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-42$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-6)=-42$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(4)=-2$ and $f(10)=22$. What is $f(-6)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{22--2}{10-4}=4$.
**Step 2:** Point-slope: $f(-6)=4(-6-4)+(-2)$.
**Step 3:** $f(-6)=-42$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-42$

**Distractor analysis:**
- **A** ($-38$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-46$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('7e67206d-de7d-4060-811b-b3a9cef70ce6', 'Linear function $f$ models temperature. $f(5)=-1$ and $f(11)=29$. What is $f(-7)$?', NULL, NULL, '[{"id":"A","text":"$-56$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-65$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-61$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-7)=-61$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(5)=-1$ and $f(11)=29$. What is $f(-7)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{29--1}{11-5}=5$.
**Step 2:** Point-slope: $f(-7)=5(-7-5)+(-1)$.
**Step 3:** $f(-7)=-61$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-61$

**Distractor analysis:**
- **A** ($-56$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-65$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('ffabb185-3f3f-48bd-a221-893aabbd19db', 'Linear function $f$ models temperature. $f(6)=0$ and $f(12)=18$. What is $f(-8)$?', NULL, NULL, '[{"id":"A","text":"$-39$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-46$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-42$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-8)=-42$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(6)=0$ and $f(12)=18$. What is $f(-8)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{18-0}{12-6}=3$.
**Step 2:** Point-slope: $f(-8)=3(-8-6)+(0)$.
**Step 3:** $f(-8)=-42$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-42$

**Distractor analysis:**
- **A** ($-39$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-46$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('883e07df-c9a2-4a1b-aea1-c1b695b218bd', 'Linear function $f$ models temperature. $f(7)=1$ and $f(13)=25$. What is $f(-9)$?', NULL, NULL, '[{"id":"A","text":"$-59$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-67$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-63$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-9)=-63$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(7)=1$ and $f(13)=25$. What is $f(-9)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{25-1}{13-7}=4$.
**Step 2:** Point-slope: $f(-9)=4(-9-7)+(1)$.
**Step 3:** $f(-9)=-63$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-63$

**Distractor analysis:**
- **A** ($-59$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-67$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('983ade39-fb4d-455c-99d5-97766a6b6201', 'Linear function $f$ models temperature. $f(8)=2$ and $f(14)=32$. What is $f(-10)$?', NULL, NULL, '[{"id":"A","text":"$-83$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-92$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-88$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-10)=-88$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(8)=2$ and $f(14)=32$. What is $f(-10)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{32-2}{14-8}=5$.
**Step 2:** Point-slope: $f(-10)=5(-10-8)+(2)$.
**Step 3:** $f(-10)=-88$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-88$

**Distractor analysis:**
- **A** ($-83$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-92$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('b263b438-577a-4b5d-b5eb-b8d24a02b5fa', 'Linear function $f$ models temperature. $f(9)=3$ and $f(15)=21$. What is $f(-11)$?', NULL, NULL, '[{"id":"A","text":"$-54$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-61$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-57$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-11)=-57$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(9)=3$ and $f(15)=21$. What is $f(-11)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{21-3}{15-9}=3$.
**Step 2:** Point-slope: $f(-11)=3(-11-9)+(3)$.
**Step 3:** $f(-11)=-57$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-57$

**Distractor analysis:**
- **A** ($-54$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-61$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('37bef230-d172-4f98-9efc-0ae465d694a4', 'Linear function $f$ models temperature. $f(10)=4$ and $f(16)=28$. What is $f(-12)$?', NULL, NULL, '[{"id":"A","text":"$-80$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-88$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-84$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-12)=-84$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(10)=4$ and $f(16)=28$. What is $f(-12)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{28-4}{16-10}=4$.
**Step 2:** Point-slope: $f(-12)=4(-12-10)+(4)$.
**Step 3:** $f(-12)=-84$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-84$

**Distractor analysis:**
- **A** ($-80$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-88$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('07dd677c-ade4-4882-b77c-4b2b0bcbdeb7', 'Linear function $f$ models temperature. $f(11)=5$ and $f(17)=35$. What is $f(-13)$?', NULL, NULL, '[{"id":"A","text":"$-110$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-119$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-115$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-13)=-115$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(11)=5$ and $f(17)=35$. What is $f(-13)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{35-5}{17-11}=5$.
**Step 2:** Point-slope: $f(-13)=5(-13-11)+(5)$.
**Step 3:** $f(-13)=-115$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-115$

**Distractor analysis:**
- **A** ($-110$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-119$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('81549ba0-2255-455b-b379-9f60ce40e7c0', 'Linear function $f$ models temperature. $f(12)=6$ and $f(18)=24$. What is $f(-14)$?', NULL, NULL, '[{"id":"A","text":"$-69$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-76$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-72$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-14)=-72$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(12)=6$ and $f(18)=24$. What is $f(-14)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{24-6}{18-12}=3$.
**Step 2:** Point-slope: $f(-14)=3(-14-12)+(6)$.
**Step 3:** $f(-14)=-72$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-72$

**Distractor analysis:**
- **A** ($-69$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-76$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('65e64780-68ef-488a-af85-eaaa6f42f0e5', 'Linear function $f$ models temperature. $f(13)=7$ and $f(19)=31$. What is $f(-15)$?', NULL, NULL, '[{"id":"A","text":"$-101$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-109$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-105$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-15)=-105$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(13)=7$ and $f(19)=31$. What is $f(-15)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{31-7}{19-13}=4$.
**Step 2:** Point-slope: $f(-15)=4(-15-13)+(7)$.
**Step 3:** $f(-15)=-105$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-105$

**Distractor analysis:**
- **A** ($-101$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-109$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES ('fd75bda9-2346-4ba9-9f9b-9a3f6c43385d', 'Linear function $f$ models temperature. $f(14)=8$ and $f(20)=38$. What is $f(-16)$?', NULL, NULL, '[{"id":"A","text":"$-137$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-146$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-142$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-16)=-142$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(14)=8$ and $f(20)=38$. What is $f(-16)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{38-8}{20-14}=5$.
**Step 2:** Point-slope: $f(-16)=5(-16-14)+(8)$.
**Step 3:** $f(-16)=-142$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-142$

**Distractor analysis:**
- **A** ($-137$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-146$): Arithmetic slip in point-slope form.', NULL, 'Algebra', NULL, 'math', NULL, 'LIF', 'LIF', 'hard', true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '{"dsat_blueprint_v1":true,"tier":"challenge","challenge_tier":true,"challenged_problem":true,"difficulty_tier":"challenged","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1"}'::jsonb, true, now(), now());
COMMIT;
