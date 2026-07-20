BEGIN;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('90c87d10-1678-4ddb-b4a1-6c4a7e03afc5', 'Linear function $f$ models temperature. $f(61)=55$ and $f(67)=79$. What is $f(-63)$?', NULL, NULL, '[{"id":"A","text":"$-437$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-445$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-441$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-63)=-441$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(61)=55$ and $f(67)=79$. What is $f(-63)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{79-55}{67-61}=4$.
**Step 2:** Point-slope: $f(-63)=4(-63-61)+(55)$.
**Step 3:** $f(-63)=-441$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-441$

**Distractor analysis:**
- **A** ($-437$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-445$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('555b4212-c8cb-4dbd-b6b6-59cec43a8297', 'Linear function $f$ models temperature. $f(62)=56$ and $f(68)=86$. What is $f(-64)$?', NULL, NULL, '[{"id":"A","text":"$-569$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-578$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-574$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-64)=-574$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(62)=56$ and $f(68)=86$. What is $f(-64)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{86-56}{68-62}=5$.
**Step 2:** Point-slope: $f(-64)=5(-64-62)+(56)$.
**Step 3:** $f(-64)=-574$.
**Step 4:** Verify with second point.

**Step 3 — Answer D.** $-574$

**Distractor analysis:**
- **A** ($-569$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-578$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"generate-dsat-math-expansion.mjs","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a424ea95-3333-4936-81d7-a1f89ab096a7', 'Linear function $f$ models temperature. $f(3)=-3$ and $f(9)=15$. What is $f(-5)$?', NULL, NULL, '[{"id":"A","text":"$-24$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-31$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-27$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-5)=-27$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(3)=-3$ and $f(9)=15$. What is $f(-5)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{15--3}{9-3}=3$.
**Step 2:** Point-slope: $f(-5)=3(-5-3)+(-3)$.
**Step 3:** $f(-5)=-27$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-27$

**Distractor analysis:**
- **A** ($-24$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-31$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('5c4e02c8-a1b5-46e4-9404-a04aafa446a1', 'Linear function $f$ models temperature. $f(4)=-2$ and $f(10)=22$. What is $f(-6)$?', NULL, NULL, '[{"id":"A","text":"$-38$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-46$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-42$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-6)=-42$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(4)=-2$ and $f(10)=22$. What is $f(-6)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{22--2}{10-4}=4$.
**Step 2:** Point-slope: $f(-6)=4(-6-4)+(-2)$.
**Step 3:** $f(-6)=-42$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-42$

**Distractor analysis:**
- **A** ($-38$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-46$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('d5b7666c-7e53-49b3-896e-f6ac54f0bfdc', 'Linear function $f$ models temperature. $f(5)=-1$ and $f(11)=29$. What is $f(-7)$?', NULL, NULL, '[{"id":"A","text":"$-56$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-65$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-61$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-7)=-61$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(5)=-1$ and $f(11)=29$. What is $f(-7)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{29--1}{11-5}=5$.
**Step 2:** Point-slope: $f(-7)=5(-7-5)+(-1)$.
**Step 3:** $f(-7)=-61$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-61$

**Distractor analysis:**
- **A** ($-56$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-65$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('f4242d80-3f7f-484a-a8be-a8656cd4a0ef', 'Linear function $f$ models temperature. $f(6)=0$ and $f(12)=18$. What is $f(-8)$?', NULL, NULL, '[{"id":"A","text":"$-39$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-46$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-42$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-8)=-42$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(6)=0$ and $f(12)=18$. What is $f(-8)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{18-0}{12-6}=3$.
**Step 2:** Point-slope: $f(-8)=3(-8-6)+(0)$.
**Step 3:** $f(-8)=-42$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-42$

**Distractor analysis:**
- **A** ($-39$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-46$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('eaedcc99-8dfe-4a69-9a6a-7c9528d84093', 'Linear function $f$ models temperature. $f(7)=1$ and $f(13)=25$. What is $f(-9)$?', NULL, NULL, '[{"id":"A","text":"$-59$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-67$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-63$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-9)=-63$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(7)=1$ and $f(13)=25$. What is $f(-9)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{25-1}{13-7}=4$.
**Step 2:** Point-slope: $f(-9)=4(-9-7)+(1)$.
**Step 3:** $f(-9)=-63$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-63$

**Distractor analysis:**
- **A** ($-59$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-67$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('e85577c6-bcbf-43a7-b393-bf4e4baf8979', 'Linear function $f$ models temperature. $f(8)=2$ and $f(14)=32$. What is $f(-10)$?', NULL, NULL, '[{"id":"A","text":"$-83$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-92$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-88$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-10)=-88$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(8)=2$ and $f(14)=32$. What is $f(-10)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{32-2}{14-8}=5$.
**Step 2:** Point-slope: $f(-10)=5(-10-8)+(2)$.
**Step 3:** $f(-10)=-88$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-88$

**Distractor analysis:**
- **A** ($-83$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-92$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('9a5380b0-157a-40d8-a5d5-4c28dfd8eca7', 'Linear function $f$ models temperature. $f(9)=3$ and $f(15)=21$. What is $f(-11)$?', NULL, NULL, '[{"id":"A","text":"$-54$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-61$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-57$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-11)=-57$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(9)=3$ and $f(15)=21$. What is $f(-11)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{21-3}{15-9}=3$.
**Step 2:** Point-slope: $f(-11)=3(-11-9)+(3)$.
**Step 3:** $f(-11)=-57$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-57$

**Distractor analysis:**
- **A** ($-54$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-61$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('3412328a-172a-47e7-92c0-996cd8ff7d79', 'Linear function $f$ models temperature. $f(10)=4$ and $f(16)=28$. What is $f(-12)$?', NULL, NULL, '[{"id":"A","text":"$-80$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-88$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-84$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-12)=-84$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(10)=4$ and $f(16)=28$. What is $f(-12)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{28-4}{16-10}=4$.
**Step 2:** Point-slope: $f(-12)=4(-12-10)+(4)$.
**Step 3:** $f(-12)=-84$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-84$

**Distractor analysis:**
- **A** ($-80$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-88$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('c6b5eb47-2722-435c-89c4-2884b9844f63', 'Linear function $f$ models temperature. $f(11)=5$ and $f(17)=35$. What is $f(-13)$?', NULL, NULL, '[{"id":"A","text":"$-110$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-119$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-115$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-13)=-115$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(11)=5$ and $f(17)=35$. What is $f(-13)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{35-5}{17-11}=5$.
**Step 2:** Point-slope: $f(-13)=5(-13-11)+(5)$.
**Step 3:** $f(-13)=-115$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-115$

**Distractor analysis:**
- **A** ($-110$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-119$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES ('a2014972-e6c3-47e7-95e9-a6eca08cd5ef', 'Linear function $f$ models temperature. $f(12)=6$ and $f(18)=24$. What is $f(-14)$?', NULL, NULL, '[{"id":"A","text":"$-69$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-76$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-72$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-14)=-72$."}]'::jsonb, 'D', '**Step 1 — Understand.** Linear function $f$ models temperature. $f(12)=6$ and $f(18)=24$. What is $f(-14)$?

**Step 2 — Solve.** **Step 1:** Slope $m=\frac{24-6}{18-12}=3$.
**Step 2:** Point-slope: $f(-14)=3(-14-12)+(6)$.
**Step 3:** $f(-14)=-72$.
**Step 4:** Verify with second point.
**Step 5 — Verify:** Substitute back and confirm all constraints in the stimulus.

**Step 3 — Answer D.** $-72$

**Distractor analysis:**
- **A** ($-69$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-76$): Arithmetic slip in point-slope form.', NULL, 'Algebra', 'Linear functions', 'math', 'algebra', 'LIF', 'LIF', 'hard'::public.difficulty, true, 'SAT', 'multiple_choice'::public.question_type, true, true, 'scholaris_ai', '{"dsat_math_blueprint_v1":true,"math_format":"mcq","math_skill":"LIF","blueprint_version":"dsat_math_blueprint_v1","explanation_v2":true,"generator":"dsat-challenged-math-bank.mjs","challenged_problem":true,"difficulty_tier":"challenged","original":true}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;
COMMIT;
